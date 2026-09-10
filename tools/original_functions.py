#!/usr/bin/env python3
"""Reconstruct the fixed known-function baseline from the pre-decomp Git snapshot.

Only metadata is retained. Source/assembly text is not copied into the manifest.
Shared overlay implementations count once in their own offset address spaces.
Compiler call_via macro expansions are excluded from game-function progress.
"""
import argparse
import hashlib
import io
import json
from pathlib import Path
import re
import subprocess
import tarfile

ROOT = Path(__file__).resolve().parents[1]
REVISION = '0fa7b312'


def generate(root=ROOT):
    revision = subprocess.check_output(['git', 'rev-parse', REVISION], cwd=root, text=True).strip()
    archive = subprocess.check_output(['git', 'archive', revision], cwd=root)
    functions = []
    with tarfile.open(fileobj=io.BytesIO(archive)) as tree:
        for member in tree:
            if not member.isfile() or not member.name.endswith('.s') or member.name == 'lib/call_via.s':
                continue
            source = tree.extractfile(member).read()
            for mode, name in re.findall(rb'^\.(thumb|arm)_func_start\s+(\S+)', source, re.M):
                mode, name = mode.decode(), name.decode()
                if member.name.startswith('overlays/common/'):
                    domain = 'common:' + Path(member.name).stem
                    address = int(name.rsplit('_', 1)[1], 16)
                elif member.name.startswith('overlays/'):
                    domain = 'overlay:' + member.name.split('/')[1]
                    address = 0x02008000 + int(name.rsplit('_', 1)[1], 16)
                else:
                    domain = 'rom'
                    address = 0x080000c0 if name == '_start' else 0x08000000 + int(name.rsplit('_', 1)[1], 16)
                identity = f'{domain}:{address:08x}'
                functions.append({'id': identity, 'domain': domain, 'address': address,
                                  'mode': mode, 'original_name': name, 'source': member.name,
                                  'source_sha256': hashlib.sha256(source).hexdigest()})
    if len({f['id'] for f in functions}) != len(functions):
        raise ValueError('duplicate original function addresses')
    return {'schema': 1, 'revision': revision,
            'scope': 'Known function starts in the pre-decomp snapshot; shared common modules counted once; compiler call_via support excluded. Later discoveries require explicit reviewed amendments.',
            'functions': sorted(functions, key=lambda f: f['id'])}


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--output', type=Path, default=ROOT / 'original_functions.json')
    args = ap.parse_args()
    manifest = generate()
    args.output.write_text(json.dumps(manifest, indent=2) + '\n')
    print(len(manifest['functions']), 'known original function identities:', args.output)


if __name__ == '__main__':
    main()
