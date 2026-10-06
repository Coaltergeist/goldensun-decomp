#!/usr/bin/env python3
"""Plan a catalog-backed layout migration; apply only a reviewed, unchanged plan.

Planning is read-only. Application journals the exact write set and refuses stale
inputs. Rebuild/finalize afterwards: relocated reports are not fresh verification.
"""
import argparse
import copy
import hashlib
import json
from pathlib import Path
import re
import stat
import subprocess
import tempfile

import source_paths as paths
from candidate_catalog import catalog, collection_inputs, markdown_index
from candidate_scores import candidate_inputs
from decomp_progress import source_inputs
from finalize_progress import Transaction, exclusive, interruptible

ROOT = Path(__file__).resolve().parents[1]
IMMUTABLE = {"original_functions.json", "original_function_sizes.json"}


def sha(data):
    return hashlib.sha256(data).hexdigest()


def inventory(root):
    names = subprocess.check_output(["git", "--no-optional-locks", "ls-files", "-z",
                                     "--cached", "--others", "--exclude-standard"], cwd=root).decode().split("\0")
    names = {n for n in names if n and not n.startswith(("build/", ".progress/", ".diff-baselines/"))}
    names.update(source_inputs(root)); names.update(candidate_inputs(root))
    result = {}
    for name in sorted(names):
        path = paths.local(root, name)
        if path.exists():
            if not path.is_file():
                raise ValueError("non-file migration input: " + name)
            s = path.stat()
            result[name] = dict(sha256=sha(path.read_bytes()), mode=stat.S_IMODE(s.st_mode), mtime_ns=s.st_mtime_ns)
    return result


def substitutions(text, mapping):
    # Match complete repository path tokens, not suffixes or historical IDs.
    if not mapping:
        return text
    pattern = re.compile(r'(?<![\w./:-])(' + '|'.join(re.escape(n) for n in sorted(mapping, key=len, reverse=True)) + r')(?![\w./-])')
    return pattern.sub(lambda m: mapping[m[0]], text)


def relocate_config(data, mapping, objects, directories):
    data = copy.deepcopy(data)
    for u in data['units']:
        u['source'] = mapping.get(u['source'], u['source'])
        u['object'] = objects.get(u['object'], u['object'])
        # Directory changes must be explicit and consistent for every child.
        for key in ('candidate_directory', 'assembly_directory'):
            if key not in u:
                continue
            old = u[key]
            children = [(a, b) for a, b in mapping.items() if a.startswith(old + '/')]
            destinations = {str(Path(b).parent) for a, b in children if Path(a).parent.as_posix() == old}
            if len(destinations) > 1:
                raise ValueError('split owner directory: ' + old)
            if old in directories:
                if destinations and destinations != {directories[old]}:
                    raise ValueError('directory differs from file destinations: ' + old)
                u[key] = directories[old]
            elif destinations:
                u[key] = destinations.pop()
    for row in data.get('reference_sources', []):
        row['path'] = mapping.get(row['path'], row['path'])
    for module in data['modules']:
        for anchor in module['link_anchors']:
            anchor['script'] = mapping.get(anchor['script'], anchor['script'])
    if 'paths' in data:
        targets = data['paths']['link_targets']
        data['paths']['link_targets'] = {objects.get(a, a): mapping.get(b, b) for a, b in targets.items()}
    return data


def validate_directories(root, config, updated, mapping, directories, before):
    """Check explicit ownership, including directories with no current files."""
    owners = {}
    for unit in config['units']:
        for field in ('candidate_directory', 'assembly_directory'):
            if field in unit:
                old = unit[field]
                if old in owners:
                    raise ValueError('ambiguous directory owner: ' + old)
                owners[old] = (unit['id'], field)
    for old, new in directories.items():
        paths.local(root, old); paths.local(root, new)
        if old not in owners:
            raise ValueError('unknown directory owner: ' + old)
    final = []
    for unit in updated['units']:
        for field in ('candidate_directory', 'assembly_directory'):
            if field not in unit:
                continue
            new = unit[field]
            dest = paths.local(root, new)
            if new == '.' or new.split('/')[0] in ('build', '.git', '.progress', '.diff-baselines'):
                raise ValueError('directory destination is generated or reserved: ' + new)
            if dest.exists() and not dest.is_dir():
                raise ValueError('directory destination is a file: ' + new)
            if field == 'candidate_directory':
                if not Path(new).is_relative_to(paths.candidate_root(root)) or new == paths.candidate_root(root):
                    raise ValueError('candidate directory crosses production boundary: ' + new)
            elif paths.parked(root, new):
                raise ValueError('assembly directory enters parked candidates: ' + new)
            for other in final:
                if Path(new).is_relative_to(other) or Path(other).is_relative_to(new):
                    raise ValueError('overlapping final directory owners: ' + new)
            final.append(new)
    current = {u['id']: u for u in config['units']}
    for unit in updated['units']:
        for field in ('candidate_directory', 'assembly_directory'):
            if field not in unit:
                continue
            old, new = current[unit['id']][field], unit[field]
            if old == new:
                continue
            # Renames operate on files, never recursively on a directory. Require
            # its complete maintained contents to retain their relative names.
            for name in before:
                if name.startswith(old + '/'):
                    expected = new + name[len(old):]
                    if mapping.get(name, name) != expected:
                        raise ValueError('incomplete directory move: ' + old)
                if name.startswith(new + '/') and not name.startswith(old + '/'):
                    raise ValueError('directory destination has existing contents: ' + new)


def plan(root, moves, objects=None, directories=None):
    root = Path(root).resolve()
    before = inventory(root)
    objects = objects or {}
    directories = directories or {}
    if not all(isinstance(value, dict) for value in (moves, objects, directories)):
        raise ValueError('explicit old/new path mappings must be dictionaries')
    if not moves and not objects and not directories:
        raise ValueError('a nonempty explicit old/new path mapping is required')
    mapping = {a: b for a, b in moves.items() if a != b}
    for a, b in mapping.items():
        paths.local(root, a); dest = paths.local(root, b)
        if a not in before:
            raise ValueError('missing migration preimage: ' + a)
        if a in IMMUTABLE or b in IMMUTABLE:
            raise ValueError('historical original evidence is immutable: ' + a)
        if b.startswith(('build/', '.git/', '.progress/', '.diff-baselines/')):
            raise ValueError('destination is generated or reserved: ' + b)
        if dest.exists() and b not in mapping:
            raise ValueError('destination exists: ' + b)
    destinations = [mapping.get(n, n) for n in before]
    if len(destinations) != len(set(destinations)):
        raise ValueError('duplicate migration destination')
    if set(mapping) & set(mapping.values()):
        raise ValueError('overlapping/cyclic moves require a separate migration')
    config = paths.data(root)
    unit_ids = [u['id'] for u in config['units']]
    if len(unit_ids) != len(set(unit_ids)):
        raise ValueError('duplicate TU identity')
    owners = {u['object'] for u in config['units']}
    if not set(objects) <= owners or len(set(objects.values())) != len(objects):
        raise ValueError('missing owner or duplicate object destination')
    for a, b in objects.items():
        paths.local(root, a); paths.local(root, b)
        if not b.startswith('build/usa/') or not b.endswith('.o'):
            raise ValueError('object destination outside owned output root')
    new_config = relocate_config(config, mapping, objects, directories)
    validate_directories(root, config, new_config, mapping, directories, before)
    outputs = [u['object'] for u in new_config['units']]
    if len(outputs) != len(set(outputs)):
        raise ValueError('duplicate final object destination')
    units = catalog(root)
    candidates, identities = [], set()
    for key, unit in units.items():
        owner = paths.candidate_owner(root, source=unit['source'])
        future = next(u for u in new_config['units'] if u['id'] == owner['id'])
        for name, entry in unit['functions'].items():
            identity = entry['id']
            if identity in identities:
                raise ValueError('duplicate original identity')
            identities.add(identity)
            old, new = entry['candidate'], mapping.get(entry['candidate'], entry['candidate'])
            if str(Path(new).parent) != future['candidate_directory']:
                raise ValueError('candidate destination differs from owner: ' + old)
            contexts = [unit['directory'] + '/' + h for h in entry.get('context', [])]
            if any(str(Path(mapping.get(h, h)).parent) != future['candidate_directory'] for h in contexts):
                raise ValueError('context destination differs from owner')
            candidates.append(dict(id=identity, tu_id=owner['id'], source={'old': unit['source'], 'new': future['source']},
                path={'old': old, 'new': new}, sha256=before[old]['sha256'],
                assembly={'old': entry['assembly'], 'new': mapping.get(entry['assembly'], entry['assembly'])},
                contexts=[dict(old=h, new=mapping.get(h,h), sha256=before[h]['sha256']) for h in contexts],
                requires=entry.get('requires', []), metadata={k:v for k,v in entry.items() if k not in ('candidate','assembly','name')}))
    writes = {}
    path_map = {**mapping, **objects}
    for name, state in before.items():
        source = paths.local(root, name)
        data = source.read_bytes()
        after = data
        if name == 'config/modules.json':
            after = (json.dumps(new_config, indent=2) + '\n').encode()
        elif name == 'progress_snapshot.json':
            meta = json.loads(data)
            meta['units'] = {mapping.get(n,n):dict(u, object=objects.get(u['object'],u['object'])) for n,u in meta['units'].items()}
            # The old fingerprint deliberately remains stale until a fresh gate.
            after = (json.dumps(meta, sort_keys=True, indent=2) + '\n').encode()
        elif name.endswith('/candidates.json') and paths.parked(root, name):
            meta = json.loads(data); meta['source'] = mapping.get(meta['source'],meta['source'])
            after = (json.dumps(meta, indent=2) + '\n').encode()
        elif (source.suffix in ('.c','.h','.s','.inc','.ld','.sym') or name == 'fakematch.txt') and not paths.parked(root,name):
            after = substitutions(data.decode(), path_map).encode()
        if name in mapping or after != data:
            writes[name] = dict(old=name, new=mapping.get(name,name), before=state,
                                after_sha256=sha(after), text=after.decode())
    future_units = copy.deepcopy(units)
    for key, unit in future_units.items():
        dest = next(u for u in new_config['units'] if u['id'] == unit['id'])['candidate_directory']
        unit['index_directory'] = dest.removeprefix(paths.candidate_root(root) + '/')
    index = paths.candidate_root(root) + '/INDEX.md'
    content = markdown_index(future_units)
    if index not in before:
        raise ValueError('missing current candidate index')
    if content != (root/index).read_text():
        writes[index] = dict(old=index,new=mapping.get(index,index),before=before[index],after_sha256=sha(content.encode()),text=content)
    for row in candidates:
        for name in [row['path']['old'], *(h['old'] for h in row['contexts'])]:
            if name in writes and writes[name]['after_sha256'] != before[name]['sha256']:
                raise ValueError('unexplained candidate/context content change: ' + name)
    if inventory(root) != before:
        raise ValueError('concurrent modification during planning')
    return dict(schema=1, kind='catalog-layout-migration', root=str(root), inventory=before,
                moves=mapping, objects=objects, directories=directories, candidates=candidates, writes=writes,
                historical_inputs={n: before[n] for n in IMMUTABLE},
                requires_fresh_verification=['progress_snapshot.json','candidate_scores.json','report.json','reference-baseline'],
                private_history='Use the private read-only history adapter before preparing any future queue.')


def apply(root, proposal):
    root = Path(root).resolve()
    if proposal.get('schema') != 1 or proposal.get('kind') != 'catalog-layout-migration' or proposal.get('root') != str(root):
        raise ValueError('unsupported migration plan/root')
    with exclusive(root), interruptible():
        if inventory(root) != proposal['inventory']:
            raise ValueError('stale migration inventory; plan again')
        if plan(root, proposal['moves'], proposal['objects'], proposal.get('directories')) != proposal:
            raise ValueError('migration plan differs from current deterministic plan')
        changes = {}
        for row in proposal['writes'].values():
            if row['old'] != row['new']:
                changes[row['old']] = None
            changes[row['new']] = row['text'].encode()
        run = Path(tempfile.mkdtemp(prefix='layout-', dir=root/'.progress'))
        transaction = Transaction(root, run, changes)
        try:
            for row in proposal['writes'].values():
                dest = paths.local(root, row['new']); dest.parent.mkdir(parents=True, exist_ok=True)
            if inventory(root) != proposal['inventory']:
                raise ValueError('concurrent modification before application')
            for name, data in changes.items():
                original = next((r for r in proposal['writes'].values() if r['new'] == name), None)
                transaction.write(name, data, mode=original['before']['mode'] if original else None)
            catalog(root)
            after = inventory(root)
            expected = {proposal['moves'].get(n,n):dict(info) for n,info in proposal['inventory'].items()}
            for row in proposal['writes'].values():
                expected[row['new']]['sha256'] = row['after_sha256']
                expected[row['new']]['mtime_ns'] = after[row['new']]['mtime_ns']
            if after != expected:
                raise ValueError('concurrent modification during migration; inspect journal')
            transaction.finish()
        except BaseException as exc:
            transaction.rollback(exc)
            raise
        return run


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=ROOT)
    sub = parser.add_subparsers(dest='command', required=True)
    dry = sub.add_parser('plan'); dry.add_argument('--mapping',type=Path,required=True)
    dry.add_argument('--output',type=Path,required=True)
    action = sub.add_parser('apply'); action.add_argument('--plan',type=Path,required=True)
    args = parser.parse_args()
    if args.command == 'plan':
        config = json.loads(args.mapping.read_text())
        result = plan(args.root, config['moves'], config.get('objects'), config.get('directories'))
        # Use an ignored evidence directory; never overwrite an existing plan.
        with args.output.open('x') as out:
            json.dump(result,out,indent=2);out.write('\n')
        print('Planned',len(result['writes']),'files;',len(result['candidates']),'candidates; no source writes.')
    else:
        print('Migration journal:',apply(args.root,json.loads(args.plan.read_text())))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
