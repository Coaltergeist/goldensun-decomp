"""One production graph; backend adapters only render scheduling syntax."""
from dataclasses import dataclass, field
from pathlib import Path
import shlex
import sys

import build_config
import build_paths as paths
from build_deps import linker_dependencies

ROOT = Path(__file__).resolve().parents[1]


@dataclass
class Edge:
    outputs: list
    inputs: list = field(default_factory=list)
    command: list = field(default_factory=list)
    byproducts: list = field(default_factory=list)
    depfile: str = ""
    restat: bool = False


def graph(root, link_flags=(), libraries=()):
    data, _, units = build_config.load(root)
    edges, aliases = [], {}
    def add(output, inputs=(), command=(), **kw):
        edges.append(Edge([output] if isinstance(output, str) else output, list(inputs), list(command), **kw))
    py = ["python3", "-B"]
    add("FORCE")
    for profile in data["profiles"]:
        add(paths.STAMPS + "/" + profile + ".stamp", ["FORCE"],
            py + ["tools/build_compile.py", "stamp", profile], restat=True)
    add(paths.STAMPS + "/binutils.stamp", ["FORCE"],
        py + ["tools/build_deps.py", "stamp", paths.STAMPS + "/binutils.stamp",
              "--tool", "arm-none-eabi-as", "--tool", "arm-none-eabi-ld", "--tool", "arm-none-eabi-objcopy",
              "--value=" + shlex.join([*link_flags, *libraries])], restat=True)
    for u in units:
        obj = Path(u["object"]); family = data["profiles"][u["profile"]]["family"]
        byproducts = [str(obj.with_suffix(".d"))]
        if family in ("gcc296", "agbcc"):
            byproducts += [str(obj.with_suffix(".s")), str(obj.with_suffix(".c.d"))]
        if family == "agbcc": byproducts.append(str(obj.with_suffix(".i")))
        # Legacy depfiles are write-if-changed. Restat prevents their older
        # mtimes from forcing another compile after an input-triggered rebuild.
        add(u["object"], [u["source"], paths.STAMPS + "/" + u["profile"] + ".stamp",
                         *paths.generated_dependencies(root, u["source"])],
            py + ["tools/build_compile.py", "compile", u["source"], "-o", u["object"]],
            byproducts=byproducts, depfile=str(obj.with_suffix(".ninja.d")), restat=True)
        if u.get("legacy_object"): aliases[u["legacy_object"]] = u["object"]
        if "binary" in u:
            add(u["binary"], [u["object"], paths.STAMPS + "/host-c.stamp"],
                py + ["tools/build_compile.py", "link-host", u["binary"]])
            aliases[u["legacy_binary"]] = u["binary"]
    for output, script in paths.link_targets(root).items():
        flags = [*link_flags, *(["-r"] if output == paths.STAGE1 else [])]
        libs = [*libraries, *(["-R", paths.STAGE1] if output not in (paths.STAGE1, paths.ELF) else [])]
        inputs = sorted(linker_dependencies(script, root=root)) + [paths.STAMPS + "/binutils.stamp"]
        if output not in (paths.STAGE1, paths.ELF): inputs.append(paths.STAGE1)
        map_name = str(Path(output).with_suffix(".map"))
        add([output, map_name], inputs, py + ["tools/build_actions.py", "link", output, script,
                                             *flags, "--libraries", *libs])
        for name in (output, map_name): aliases[name.removeprefix(paths.TARGET + "/")] = name
    def action(mode, output, source, extra=()):
        return py + ["tools/build_actions.py", mode, output, source, *extra]
    add(paths.ROM, [paths.ELF, paths.STAMPS + "/binutils.stamp"], action("objcopy", paths.ROM, paths.ELF))
    aliases["goldensun.gba"] = paths.ROM
    compares = []
    for identity, row in paths.overlays(root).items():
        bank = identity.split(":")[1]
        add(row["original"], ["baserom.gba", paths.HOST + "/unpack_overlay"],
            action("extract-overlay", row["original"], "baserom.gba", ["-a", "0x" + bank[4:]]))
        add(row["binary"], [row["elf"], paths.STAMPS + "/binutils.stamp"], action("objcopy", row["binary"], row["elf"]))
        add(row["compressed"], [row["binary"], paths.HOST + "/pack_overlay"], action("pack-overlay", row["compressed"], row["binary"]))
        name = "compare-" + bank; compares.append(name)
        add(name, ["FORCE", row["original"], row["binary"]], ["cmp", row["original"], row["binary"]])
        for key in ("binary", "compressed"): aliases[row[key].removeprefix(paths.TARGET + "/")] = row[key]
    add("compare-overlays", compares)
    add("compare-rom", ["FORCE", "goldensun.sha1", paths.ROM], py + ["tools/build_actions.py", "verify-rom"])
    add("compare", ["compare-rom", "compare-overlays"])
    add("verify", ["compare"])
    add("build", [paths.ROM])
    add(paths.STRINGS_TEXT, ["baserom.gba", paths.HOST + "/unpack_strings"], action("extract-strings", paths.STRINGS_TEXT, "baserom.gba"))
    add([paths.STRING_STAMP, *paths.STRING_OUTPUTS], [paths.STRINGS_TEXT, paths.HOST + "/pack_strings"],
        py + ["tools/build_actions.py", "strings"])
    for alias, real in sorted(aliases.items()): add(alias, [real])
    owners = [n for e in edges for n in e.outputs + e.byproducts]
    if len(owners) != len(set(owners)): raise ValueError("multiple graph owners for output")
    return edges


def make_graph(root):
    rules = []
    for edge in graph(root):
        command = shlex.join(edge.command)
        # Link settings are resolved by Make at recipe execution, like profiles.
        if "tools/build_actions.py" in edge.command and "link" in edge.command:
            split = edge.command.index("--libraries")
            command = shlex.join(edge.command[:6]) + " $(ARM_LDFLAGS) " + shlex.join(edge.command[6:split]) + " --libraries $(ARM_LDLIBS) " + shlex.join(edge.command[split+1:])
        if edge.outputs == [paths.STAMPS + "/binutils.stamp"]:
            command = shlex.join(edge.command[:-1]) + " --value='$(ARM_LDFLAGS) $(ARM_LDLIBS)'"
        if "tools/build_actions.py" in edge.command and "link" in edge.command:
            if any(not (root / n).is_file() for n in edge.outputs): edge.inputs.append("FORCE")
        grouped = len(edge.outputs) > 1
        rules.append(" ".join(edge.outputs) + (" &: " if grouped else ": ") + " ".join(edge.inputs))
        if command: rules.append("\t" + command)
        if not command or edge.outputs[0].startswith("compare-"):
            rules.append(".PHONY: " + " ".join(edge.outputs))
    return "|".join(rules)


if __name__ == "__main__":
    try:
        print(make_graph(ROOT))
    except (OSError, ValueError, KeyError, TypeError) as exc:
        print("build graph: " + str(exc), file=sys.stderr)
        raise SystemExit(1)
