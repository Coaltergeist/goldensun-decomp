"""Current generated paths and explicit compatibility aliases; no filesystem writes."""
import json
from pathlib import Path
import re
import source_paths

TARGET = "build/usa"
HOST = "build/host"
STAMPS = TARGET + "/stamps"
STRINGS = TARGET + "/generated/strings"
STRINGS_TEXT = TARGET + "/reference/strings.txt"
ROM = TARGET + "/goldensun.gba"
ELF = TARGET + "/goldensun.elf"
STAGE1 = TARGET + "/stage1.o"
# The USA text table has 42 chunks; its generator must reproduce this complete set.
STRING_FILES = ["strings.s", "huffman_trees.bin", "huffman_tree_offsets.bin"] + [
    "strings_%02d%s.bin" % (i, suffix) for i in range(42) for suffix in ("", "_lengths")]
STRING_OUTPUTS = [STRINGS + "/" + name for name in STRING_FILES]
STRING_STAMP = STRINGS + "/complete.stamp"


def catalog(root):
    return source_paths.data(root)


def units(root):
    return catalog(root)["units"] + json.loads((root / "config/compiler_profiles.json").read_text())["host_units"]


def unit(root, name):
    matches = [u for u in units(root) if name in (u["id"], u["source"], u["object"],
               u.get("legacy_object"), u.get("binary"), u.get("legacy_binary"))]
    if len(matches) != 1:
        raise ValueError("unknown or ambiguous TU path: " + name)
    return matches[0]


def overlay(root, identity):
    identity = identity.removeprefix("overlay:")
    if "overlay:" + identity not in {m["id"] for m in catalog(root)["modules"] if m["kind"] == "overlay"}:
        raise ValueError("unknown overlay: " + identity)
    return _overlay(identity)


def _overlay(identity):
    base = TARGET + "/overlays/" + identity
    return dict(original=TARGET + "/reference/overlays/" + identity + "/orig.bin",
                elf=base + "/overlay.elf", binary=base + "/overlay.bin",
                compressed=base + "/overlay.lz", map=base + "/overlay.map")


def overlays(root):
    return {m["id"]: _overlay(m["id"].split(":")[1]) for m in catalog(root)["modules"] if m["kind"] == "overlay"}


def link_targets(root):
    explicit = source_paths.layout(root).get("link_targets")
    if explicit is not None:
        for output, script in explicit.items():
            source_paths.local(root, output); source_paths.local(root, script)
        expected = {STAGE1, ELF, *(p["elf"] for p in overlays(root).values())}
        if set(explicit) != expected:
            raise ValueError("link target coverage differs from modules")
        return explicit
    return {STAGE1: "stage1.ld", ELF: "goldensun.ld", **{
        paths["elf"]: "overlays/" + identity.split(":")[1] + "/overlay.ld"
        for identity, paths in overlays(root).items()}}


def domain_artifact(root, domain):
    if domain == "rom":
        return ELF
    if domain.startswith("common:"):
        matches = [u for u in catalog(root)["units"] if u["owner"] == domain]
        if len(matches) != 1:
            raise ValueError("ambiguous common module: " + domain)
        return matches[0]["object"]
    return overlay(root, domain)["elf"]


def domain_map(root, domain):
    return str(Path(STAGE1).with_suffix(".map")) if domain == "rom" else overlay(root, domain)["map"]


def owned_outputs(root):
    """Exact files clean may remove; unknown files in owned directories survive."""
    data = json.loads((root / "config/compiler_profiles.json").read_text())
    result = {ROM, ELF, STAGE1, STRINGS_TEXT, STRING_STAMP, *STRING_OUTPUTS, TARGET + "/tags", TARGET + "/build.ninja", TARGET + "/ninja-actions.json", TARGET + "/.ninja_log", TARGET + "/.ninja_deps"}
    for output in link_targets(root):
        result.update([output, str(Path(output).with_suffix(".map"))])
    for row in overlays(root).values():
        result.update(row.values())
    for u in units(root):
        obj = Path(u["object"])
        result.update([str(obj), str(obj.with_suffix(".d")), str(obj.with_suffix(".ninja.d"))])
        family = data["profiles"][u["profile"]]["family"]
        if family in ("gcc296", "agbcc"):
            result.update([str(obj.with_suffix(".s")), str(obj.with_suffix(".c.d"))])
        if family == "agbcc":
            result.add(str(obj.with_suffix(".i")))
        if "binary" in u:
            result.add(u["binary"])
    result.update(STAMPS + "/" + name + ".stamp" for name in [*data["profiles"], "binutils"])
    result.update(STRINGS + ".tmp/" + n for n in STRING_FILES)
    # Interrupted atomic writers use fixed, declared sibling temporary files.
    result.update(name + ".tmp" for name in list(result))
    for name in result:
        if not name.startswith((TARGET + "/", HOST + "/")):
            raise ValueError("output outside owned build roots: " + name)
    return sorted(result)


def generated_dependencies(root, source):
    """Find literal generated input references before assembler depfiles exist."""
    if source == STRINGS + "/strings.s":
        return [STRING_STAMP, *STRING_OUTPUTS]
    seen, result = set(), set()
    def visit(name):
        if name in seen:
            return
        seen.add(name)
        path = root / name
        if not path.is_file():
            return
        text = path.read_text()
        for token in re.findall(r'["<]([A-Za-z0-9_./-]+)[">]', text):
            if token.startswith(TARGET + "/") and token.endswith(("orig.bin", "overlay.lz")):
                result.add(token)
            elif token.endswith((".s", ".h", ".inc")):
                for relative in (Path(token), Path(name).parent / token, Path("include") / token):
                    target = root / relative
                    if target.is_file():
                        target.resolve().relative_to(root.resolve())
                        visit(relative.as_posix())
                        break
    visit(source)
    return sorted(result)
