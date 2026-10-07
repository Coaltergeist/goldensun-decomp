"""Export catalog lists and discovered prerequisites; recipes live in Makefile."""
from pathlib import Path
import sys

import build_config
import build_paths as paths
from build_clean import checked
from build_deps import linker_dependencies, write_changed

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = paths.TARGET + "/inputs.mk"
GROUPS = {
    "gcc296": "GCC_OBJECTS",
    "gcc296-gaia": "GAIA_OBJECTS",
    "gcc296-common2": "COMMON2_OBJECTS",
    "old-agbcc-m4a": "M4A_OBJECTS",
    "old-agbcc-flash": "FLASH_OBJECTS",
    "arm-assembly": "ASSEMBLY_OBJECTS",
    "host-c": "HOST_OBJECTS",
}


def inventory(root):
    data, _, units = build_config.load(root)
    if set(data["profiles"]) != set(GROUPS):
        raise ValueError("update the maintained Make rules for the new profile")
    rows = ["# Catalog data and prerequisites only; do not edit."]
    aliases = {}

    def variable(name, values):
        rows.append(name + " := " + " ".join(values))

    for profile, name in GROUPS.items():
        variable(name, [u["object"] for u in units if u["profile"] == profile and u.get("source_role") != "generated"])
    variable("HOST_TOOLS", [u["binary"] for u in units if "binary" in u])
    variable("STRING_OUTPUTS", paths.STRING_OUTPUTS)
    variable("STRINGS_OBJECT", [u["object"] for u in units if u["id"] == "tu:data/strings/strings"])
    variable("PROFILE_STAMPS", [paths.STAMPS + "/" + n + ".stamp" for n in data["profiles"]])

    links = paths.link_targets(root)
    variable("STAGE1_SCRIPT", [links[paths.STAGE1]])
    variable("ROM_SCRIPT", [links[paths.ELF]])
    overlays = paths.overlays(root)
    variable("OVERLAY_IDS", [n.removeprefix("overlay:") for n in overlays])
    variable("OVERLAY_ELFS", [p["elf"] for p in overlays.values()])
    variable("OVERLAY_BINS", [p["binary"] for p in overlays.values()])
    variable("OVERLAY_LZS", [p["compressed"] for p in overlays.values()])
    variable("OVERLAY_ORIGINALS", [p["original"] for p in overlays.values()])

    for u in units:
        expected = (paths.HOST + "/" + Path(u["source"]).stem + ".o"
                    if u["profile"] == "host-c"
                    else paths.TARGET + "/obj/" + str(Path(u["source"]).with_suffix(".o")))
        if u["id"] == "tu:data/strings/strings":
            expected = paths.TARGET + "/obj/generated/strings/strings.o"
        if u["object"] != expected:
            raise ValueError("source/object mapping needs an explicit Make rule: " + u["id"])
        extra = paths.generated_dependencies(root, u["source"])
        if extra:
            rows.append(u["object"] + ": " + " ".join(extra))
        if u.get("legacy_object"):
            aliases[u["legacy_object"]] = u["object"]
        if u.get("legacy_binary"):
            aliases[u["legacy_binary"]] = u["binary"]

    for output, script in links.items():
        map_name = str(Path(output).with_suffix(".map"))
        rows.append(output + " " + map_name + ": " +
                    " ".join(sorted(linker_dependencies(script, root=root))))
        aliases[output.removeprefix(paths.TARGET + "/")] = output
        aliases[map_name.removeprefix(paths.TARGET + "/")] = map_name

    aliases["goldensun.gba"] = paths.ROM
    for identity, p in overlays.items():
        bank = identity.removeprefix("overlay:")
        if links[p["elf"]] != "linker/overlays/" + bank + ".ld":
            raise ValueError("overlay linker path needs an explicit Make rule: " + identity)
        rows.append(p["original"] + ": private ROM_OFFSET := 0x" + bank.removeprefix("rom_"))
        for key in ("binary", "compressed"):
            aliases[p[key].removeprefix(paths.TARGET + "/")] = p[key]

    for alias, output in sorted(aliases.items()):
        if alias != output:
            rows.extend([".PHONY: " + alias, alias + ": " + output])
    return "\n".join(rows) + "\n"


def write_inventory(root):
    # Validate the entire write boundary before Make can execute any recipe.
    for name in paths.owned_outputs(root):
        checked(root, name)
    text = inventory(root)
    write_changed(checked(root, OUTPUT), text)


if __name__ == "__main__":
    try:
        write_inventory(ROOT)
    except (OSError, ValueError, KeyError, TypeError) as exc:
        print("build inputs: " + str(exc), file=sys.stderr)
        raise SystemExit(1)
