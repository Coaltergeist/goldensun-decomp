#!/usr/bin/env python3
"""Report fixed-baseline original function progress from current linked artifacts.

Run serial make clean && make compare first. This report does not run the ROM gate
or certify source semantics. It separates registered fakematches from other C.
"""
import argparse
from collections import Counter, defaultdict
import json
import re
from pathlib import Path
import struct
from c_source import parse_funcs
import build_paths
import source_paths
from build_deps import linker_dependencies

ROOT = Path(__file__).resolve().parents[1]


def symbol_records(path):
    data = path.read_bytes()
    if data[:7] != b'\x7fELF\x01\x01\x01':
        raise ValueError('expected ELF32 little endian: ' + str(path))
    h = struct.unpack_from('<HHIIIIIHHHHHH', data, 16)
    if h[0] not in (1, 2) or h[1] != 40 or h[10] != 40:
        raise ValueError('expected ARM object/executable: ' + str(path))
    sections = [struct.unpack_from('<IIIIIIIIII', data, h[5] + i * h[10]) for i in range(h[11])]
    def contents(section):
        return data[section[4]:section[4] + section[5]]
    def string(table, offset):
        return table[offset:table.index(b'\0', offset)].decode()
    names = contents(sections[h[12]])
    found = defaultdict(list)
    for section in sections:
        if section[1] != 2:
            continue
        strings = contents(sections[section[6]])
        for off in range(section[4], section[4] + section[5], 16):
            name, value, size, info, other, ndx = struct.unpack_from('<IIIBBH', data, off)
            if info & 15 not in (2, 13) or ndx == 0 or ndx >= len(sections):
                continue
            section_name = string(names, sections[ndx][0])
            address = value & ~1
            # rom_770 is linked into IWRAM but the baseline records ROM load addresses.
            if section_name == 'rom_770' and 0x03000000 <= address < 0x03008000:
                address = address - 0x03000000 + 0x08000770
            found[address].append(dict(name=string(strings, name), size=size, section=section_name))
    return found


def symbols(path):
    return {address: {record["name"] for record in records}
            for address, records in symbol_records(path).items()}


def linked_sources(root, domain):
    """Resolve current C ownership through explicit catalog objects."""
    units = build_paths.catalog(root)["units"]
    if domain.startswith("common:"):
        return {u["source"] for u in units if u["owner"] == domain and u["source"].endswith(".c")}
    target = build_paths.STAGE1 if domain == "rom" else build_paths.overlay(root, domain)["elf"]
    script = build_paths.link_targets(root)[target]
    objects = linker_dependencies(script, root=root)
    return {u["source"] for u in units if u["object"] in objects and u["source"].endswith(".c")}


def report(root=ROOT):
    manifest = json.loads((root / 'original_functions.json').read_text())
    # Import here: decomp_progress reuses this module's ELF/linker helpers.
    from decomp_progress import capture_units, classify
    definitions = {}
    for unit in source_paths.c_units(root):
        path = source_paths.local(root, unit['source'])
        definitions[unit['source']] = parse_funcs(path.read_text())
    registered = {tuple(line.split()[:2]) for line in (root / 'fakematch.txt').read_text().splitlines()
                  if line.strip() and not line.lstrip().startswith('#')}
    domains = {}
    for f in manifest['functions']:
        domain = f['domain']
        if domain in domains:
            continue
        path = root / build_paths.domain_artifact(root, domain)
        domains[domain] = symbol_records(path)
    units, _ = capture_units(root, manifest, domains, definitions)
    statuses = classify(units, definitions, registered)
    sources = {identity: source for source, unit in units.items() for identity in unit["functions"]}
    rows = []
    for f in manifest['functions']:
        aliases = {record["name"] for record in domains[f['domain']].get(f['address'], [])}
        status = statuses[f['id']]
        rows.append(dict(f, status=status, symbols=sorted(aliases),
                         sources=[sources[f['id']]] if status != 'assembly' else []))
    counts = Counter(row['status'] for row in rows)
    thumb = Counter(row['status'] for row in rows if row['mode'] == 'thumb')
    return {'revision': manifest['revision'], 'scope': manifest['scope'],
            'counts': dict(counts), 'thumb_counts': dict(thumb), 'functions': rows}


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--json', type=Path)
    args = ap.parse_args()
    result = report()
    if args.json:
        args.json.write_text(json.dumps(result, indent=2) + '\n')
    print('Known original function baseline:', len(result['functions']))
    print('All modes:', result['counts'])
    print('Thumb:', result['thumb_counts'])
    total = sum(result['thumb_counts'].values())
    c = result['thumb_counts'].get('c', 0)
    fake = result['thumb_counts'].get('c-registered-fakematch', 0)
    print(f'Thumb C: {c + fake}/{total} ({(c + fake) / total:.2%}); excluding registered fakematches: {c}/{total} ({c / total:.2%})')
    print('Fixed known-function baseline, not a claim that every possible function boundary is discovered.')
    return int(bool(result['counts'].get('unresolved')))


if __name__ == '__main__':
    raise SystemExit(main())
