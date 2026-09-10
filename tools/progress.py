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

ROOT = Path(__file__).resolve().parents[1]


def symbols(path):
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
    found = defaultdict(set)
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
            found[address].add(string(strings, name))
    return found


def linked_sources(root, domain):
    """Scope C ownership to the objects actually included in this address space."""
    if domain.startswith('common:'):
        return {'src/maps/common/' + domain.split(':')[1] + '.c'}
    script = (root / 'stage1.ld' if domain == 'rom' else
              root / 'overlays' / domain.split(':')[1] / 'overlay.ld')
    seen, objects = set(), set()
    def visit(path):
        path = path.resolve()
        if path in seen:
            return
        seen.add(path)
        text = path.read_text()
        objects.update(re.findall(r'\b((?:src|asm)/[A-Za-z0-9_/]+)\.o\b', text))
        for include in re.findall(r'\bINCLUDE\s+["\']?([^"\'\s;]+)', text):
            visit(root / include)
    visit(script)
    return {(('src/' + obj[4:]) if obj.startswith('asm/') else obj) + '.c' for obj in objects}


def report(root=ROOT):
    manifest = json.loads((root / 'original_functions.json').read_text())
    owners = defaultdict(set)
    for path in sorted((root / 'src').rglob('*.c')):
        if 'non_matching' in path.parts:
            continue
        for name in parse_funcs(path.read_text()):
            owners[name].add(path.relative_to(root).as_posix())
    registered = {tuple(line.split()[:2]) for line in (root / 'fakematch.txt').read_text().splitlines()
                  if line.strip() and not line.lstrip().startswith('#')}
    domains, allowed = {}, {}
    for f in manifest['functions']:
        domain = f['domain']
        if domain in domains:
            continue
        if domain == 'rom':
            path = root / 'goldensun.elf'
        elif domain.startswith('common:'):
            path = root / 'asm/maps/common' / (domain.split(':')[1] + '.o')
        else:
            path = root / 'overlays' / domain.split(':')[1] / 'overlay.elf'
        domains[domain] = symbols(path)
        allowed[domain] = linked_sources(root, domain)
    rows = []
    for f in manifest['functions']:
        aliases = domains[f['domain']].get(f['address'], set())
        candidates = {(name, source) for name in aliases for source in owners.get(name, ())
                      if source in allowed[f['domain']]}
        status = ('unresolved' if not aliases else 'c-registered-fakematch' if candidates & registered
                  else 'c' if candidates else 'assembly')
        rows.append(dict(f, status=status, symbols=sorted(aliases), sources=sorted({p for _, p in candidates})))
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
