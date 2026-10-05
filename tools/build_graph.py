"""Emit Make scheduling rules from current catalog paths and maintained linkers."""
from pathlib import Path
import sys

import build_config
import build_paths as paths
from build_deps import linker_dependencies

ROOT = Path(__file__).resolve().parents[1]


def graph(root):
    data, _, units = build_config.load(root)
    rules = []
    aliases = {}
    def rule(target, deps, command=None):
        rules.append(target + ": " + " ".join(deps))
        if command:
            rules.append("\t" + command)
    for u in units:
        rule(u["object"], [u["source"], *paths.generated_dependencies(root, u["source"])],
             "python3 -B tools/build_compile.py compile " + u["source"] + " -o " + u["object"])
        if u.get("legacy_object"):
            aliases[u["legacy_object"]] = u["object"]
        if "binary" in u:
            rule(u["binary"], [u["object"], paths.STAMPS + "/host-c.stamp"],
                 "python3 -B tools/build_compile.py link-host " + u["binary"])
            aliases[u["legacy_binary"]] = u["binary"]
    for output, script in paths.link_targets(root).items():
        rule(output, [script, *sorted(linker_dependencies(script, root=root) - {script})],
             "python3 -B tools/build_actions.py link " + output + " " + script + " $(ARM_LDFLAGS) --libraries $(ARM_LDLIBS)")
        rule(output, [paths.STAMPS + "/binutils.stamp"])
        map_name = str(Path(output).with_suffix(".map"))
        rule(map_name, [output])
        if not (root / map_name).is_file():
            rule(output, ["FORCE"])
        aliases[output.removeprefix(paths.TARGET + "/")] = output
        aliases[map_name.removeprefix(paths.TARGET + "/")] = map_name
        if output == paths.STAGE1:
            rules.append(output + ": private ARM_LDFLAGS += -r")
        elif output != paths.ELF:
            rule(output, [paths.STAGE1])
            rules.append(output + ": private ARM_LDLIBS += -R " + paths.STAGE1)
    rule(paths.ROM, [paths.ELF, paths.STAMPS + "/binutils.stamp"],
         "python3 -B tools/build_actions.py objcopy " + paths.ROM + " " + paths.ELF)
    aliases["goldensun.gba"] = paths.ROM
    compare = []
    for identity, row in paths.overlays(root).items():
        bank = identity.split(":")[1]
        rule(row["original"], ["baserom.gba", paths.HOST + "/unpack_overlay"],
             "python3 -B tools/build_actions.py extract-overlay " + row["original"] + " baserom.gba -a 0x" + bank[4:])
        rule(row["binary"], [row["elf"], paths.STAMPS + "/binutils.stamp"],
             "python3 -B tools/build_actions.py objcopy " + row["binary"] + " " + row["elf"])
        rule(row["compressed"], [row["binary"], paths.HOST + "/pack_overlay"],
             "python3 -B tools/build_actions.py pack-overlay " + row["compressed"] + " " + row["binary"])
        name = "compare-" + bank
        compare.append(name)
        rule(name, [row["original"], row["binary"]], "cmp " + row["original"] + " " + row["binary"])
        aliases["overlays/" + bank + "/overlay.bin"] = row["binary"]
        aliases["overlays/" + bank + "/overlay.lz"] = row["compressed"]
    rules.append(".PHONY: " + " ".join(compare))
    rule("compare-overlays", compare)
    rule("compare-rom", ["goldensun.sha1", paths.ROM], "python3 -B tools/build_actions.py verify-rom")
    rule(paths.STRINGS_TEXT, ["baserom.gba", paths.HOST + "/unpack_strings"],
         "python3 -B tools/build_actions.py extract-strings " + paths.STRINGS_TEXT + " baserom.gba")
    rules.append(" ".join([paths.STRING_STAMP, *paths.STRING_OUTPUTS]) + " &: " + paths.STRINGS_TEXT + " " + paths.HOST + "/pack_strings")
    rules.append("\tpython3 -B tools/build_actions.py strings")
    rules.append(".PHONY: " + " ".join(aliases))
    for alias, real in sorted(aliases.items()):
        rule(alias, [real])
    return "|".join(rules)


if __name__ == "__main__":
    try:
        print(graph(ROOT))
    except (OSError, ValueError, KeyError, TypeError) as exc:
        print("build graph: " + str(exc), file=sys.stderr)
        raise SystemExit(1)
