"""Read-only module ownership validation; linker scripts remain authoritative."""
import argparse
from collections import defaultdict
import json
from pathlib import Path
import re
import sys

import build_config
import build_paths
import source_paths

ROOT = Path(__file__).resolve().parents[1]
GENERATED_SOURCES = {build_paths.STRINGS + "/strings.s": "string-pack"}
COMMON = {
    "asm/maps/common/common0.o": "common:common0",
    "asm/maps/common/common1.o": "common:common1",
    "asm/maps/common/common2.o": "common:common2",
    "src/lib/call_via.o": "library:call_via",
}

def local(root, name):
    path = Path(name)
    if path.is_absolute() or ".." in path.parts or not name:
        raise ValueError("nonlocal catalog path: " + name)
    resolved = (root / path).resolve()
    resolved.relative_to(root.resolve())
    if any(p.is_symlink() for p in [root / path, *(root / path).parents] if p != root.parent):
        raise ValueError("symlink catalog path: " + name)
    return root / path

def comments(text):
    return re.sub(r"/\*.*?\*/|//[^\n]*|#[^\n]*", "", text, flags=re.S)

def close_brace(text, start):
    depth = 1
    for pos in range(start, len(text)):
        depth += (text[pos] == "{") - (text[pos] == "}")
        if depth == 0:
            return pos
    raise ValueError("unbalanced linker braces")

def expand_script(root, name, stack=()):
    if name in stack:
        raise ValueError("linker include cycle: " + name)
    text = comments(local(root, name).read_text())
    included = []
    def expand(match):
        child = match[1] or match[2]
        body, nested = expand_script(root, child, stack + (name,))
        included.extend([child, *nested])
        return "\n" + body + "\n"
    text = re.sub(r'\bINCLUDE\s+(?:"([^"]+)"|([^\s;]+))', expand, text)
    return text, included

def read_script(root, name):
    """Expand recursive includes and preserve section/input order."""
    text, included = expand_script(root, name)
    sections = []
    start = re.search(r"\bSECTIONS\s*\{", text)
    if start:
        end = close_brace(text, start.end())
        body = text[start.end():end]
        pos = 0
        pattern = re.compile(r"(?m)^\s*([\w./]+)\s*:\s*([^\n{]*)\{")
        while True:
            match = pattern.search(body, pos)
            if not match:
                break
            stop = close_brace(body, match.end())
            tail_end = body.find("\n", stop)
            tail_end = len(body) if tail_end == -1 else tail_end
            section_body = body[match.end():stop]
            inputs = [dict(object=m[1], selector=m[2].strip()) for m in
                      re.finditer(r"([\w./-]+\.o)\s*\(([^)]*)\)", section_body)]
            if len(re.findall(r"[\w./-]+\.o\b", section_body)) != len(inputs):
                raise ValueError("unsupported object selector in " + name + ":" + match[1])
            sections.append(dict(name=match[1], address_clause=match[2].strip(),
                                 placement=body[stop + 1:tail_end].strip(),
                                 body=section_body.strip(), inputs=inputs))
            pos = tail_end
    return dict(includes=included, sections=sections)

def scripts(root):
    paths = list(build_paths.link_targets(root).values())
    return {name: read_script(root, name) for name in paths}

def source_for(root, obj, entries=None):
    local(root, obj)
    entries = build_config.load(root)[2] if entries is None else entries
    source = build_config.unit_for(entries, obj)["source"]
    if source not in GENERATED_SOURCES and not local(root, source).is_file():
        raise ValueError("missing object source: " + obj)
    return source


def derive(root, catalog=None):
    _, _, entries = build_config.load(root, catalog)
    profiles = {u["object"]: u["profile"] for u in entries}
    graph = scripts(root)
    consumers = defaultdict(set)
    anchors = defaultdict(list)
    targets = build_paths.link_targets(root)
    overlay_scripts = {targets[p["elf"]]: identity for identity, p in build_paths.overlays(root).items()}
    for script, record in graph.items():
        overlay = script in overlay_scripts
        for section in record["sections"]:
            name = section["name"]
            if name in {"/DISCARD/", ".fill"}:
                continue
            owner = overlay_scripts[script] if overlay else name
            anchors[owner].append(dict(script=script, section=name))
            for entry in section["inputs"]:
                if entry["object"] != build_paths.STAGE1:
                    consumers[entry["object"]].add(owner)
    units = {}
    for obj, linked in sorted(consumers.items()):
        source = source_for(root, obj, entries)
        owner = COMMON.get(build_config.unit_for(entries, obj).get("legacy_object", obj))
        if owner is None:
            if len(linked) != 1:
                raise ValueError("unresolved shared ownership: " + obj)
            owner = next(iter(linked))
        units[obj] = dict(source=source, owner=owner, profile=profiles.get(obj),
                          source_role="generated" if source in GENERATED_SOURCES else "maintained",
                          linked_in=sorted(linked))
    return dict(scripts=graph, anchors=dict(anchors), units=units)

def validate(root, catalog):
    if catalog.get("schema") != 1 or catalog.get("link_order_authority") != "linker-scripts":
        raise ValueError("unsupported module catalog schema/authority")
    profile_data, _, _ = build_config.load(root, catalog)
    graph = derive(root, catalog)
    modules, units = {}, {}
    for module in catalog["modules"]:
        identity = module["id"]
        if identity in modules:
            raise ValueError("duplicate module: " + identity)
        modules[identity] = module
    expected_modules = set(graph["anchors"]) | set(COMMON.values())
    if set(modules) != expected_modules:
        raise ValueError("module coverage differs from linkers")
    for identity, module in modules.items():
        if module["link_anchors"] != graph["anchors"].get(identity, []):
            raise ValueError("link anchors/order changed: " + identity)
        if identity.startswith("overlay:"):
            bank = identity.split(":", 1)[1]
            expected = ("overlay", int(bank[4:], 16), "overlay", 0x02008000)
        elif identity.startswith("common:"):
            expected = ("shared-overlay", None, "overlay", None)
        elif identity.startswith("library:"):
            expected = ("shared-library", None, "multiple", None)
        else:
            offset = 0 if identity == "header" else int(identity[4:], 16)
            expected = ("rom-region", offset, "iwram" if identity == "rom_770" else "rom",
                        0x03000000 if identity == "rom_770" else 0x08000000 + offset)
        actual = tuple(module[key] for key in ("kind", "rom_offset", "execution_region", "execution_address"))
        if actual != expected:
            raise ValueError("module load/execution mapping changed: " + identity)
    seen_ids, seen_sources = set(), set()
    for unit in catalog["units"]:
        obj = unit["object"]
        if obj in units or unit["id"] in seen_ids or unit["source"] in seen_sources:
            raise ValueError("duplicate TU identity/source/object: " + obj)
        seen_ids.add(unit["id"]); seen_sources.add(unit["source"])
        if unit["owner"] not in modules or unit["profile"] not in profile_data["profiles"]:
            raise ValueError("unknown owner/profile: " + obj)
        for key in ("source", "object"):
            local(root, unit[key])
        units[obj] = unit
    if set(units) != set(graph["units"]):
        raise ValueError("linked-object coverage differs from catalog")
    for obj, expected in graph["units"].items():
        for key in ("source", "owner", "profile", "source_role"):
            if units[obj][key] != expected[key]:
                raise ValueError("TU " + key + " differs from current Make/linkers: " + obj)
    snapshot = json.loads(local(root, "progress_snapshot.json").read_text())
    for source, unit in snapshot["units"].items():
        resolved = build_config.unit_for(list(units.values()), unit["object"])
        if resolved["source"] != source:
            raise ValueError("progress TU missing from catalog: " + source)
    # Ensure reference C is explicit without mistaking include fragments for TUs.
    references = {row["path"] for row in catalog["reference_sources"]}
    for row in catalog["reference_sources"]:
        if not local(root, row["path"]).is_file() or row["path"] in seen_sources:
            raise ValueError("invalid reference-only source: " + row["path"])
    roots = [n for n in source_paths.input_roots(root) if n not in ("config", "tools")]
    current_c = {p.relative_to(root).as_posix() for base in roots for p in (root / base).rglob("*.c")
                 if not source_paths.parked(root, p.relative_to(root).as_posix())}
    if current_c != {p for p in seen_sources if p.endswith(".c")} | {p for p in references if p.endswith(".c")}:
        raise ValueError("production C needs an active/reference classification")
    return graph

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--catalog", default="config/modules.json")
    parser.add_argument("--inventory", action="store_true", help="print derived ordered link inventory as JSON")
    args = parser.parse_args()
    try:
        catalog = json.loads(local(ROOT, args.catalog).read_text())
        graph = validate(ROOT, catalog)
        if args.inventory:
            print(json.dumps(graph, indent=2))
        else:
            print("Module catalog: PASS")
            print(str(len(catalog["modules"])) + " modules; " + str(len(catalog["units"])) +
                  " linked objects; " + str(sum(m["kind"] == "overlay" for m in catalog["modules"])) + " overlays")
        return 0
    except (OSError, ValueError, KeyError, TypeError) as exc:
        print("module catalog: " + str(exc), file=sys.stderr)
        return 1

if __name__ == "__main__":
    raise SystemExit(main())
