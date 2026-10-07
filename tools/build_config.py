"""Compiler profiles and read-only queries. Values are resolved by the maintained Make settings."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shlex
import shutil
import subprocess
import sys

import build_paths
import source_paths

ROOT = Path(__file__).resolve().parents[1]
CONFIG_FILES = ("config/modules.json", "config/compiler_profiles.json", "config/toolchain.mk")
IMPLEMENTATION = (
    "tools/build_config.py", "tools/build_stamp.py", "tools/build_deps.py",
    "tools/build_paths.py", "tools/build_inventory.py", "tools/build_clean.py",
    "tools/build_strings.py", "tools/build_verify.py", "tools/source_paths.py",
)


def read_json(path):
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError("duplicate configuration key: " + key)
            result[key] = value
        return result
    return json.loads(Path(path).read_text(), object_pairs_hook=unique)


def local_name(name, root=None, *, candidate_prefix=None):
    if (not isinstance(name, str) or not re.fullmatch(r"[A-Za-z0-9_./-]+", name)
            or Path(name).is_absolute() or ".." in Path(name).parts
            or "non_matching" in Path(name).parts
            or root is not None and (Path(name).is_relative_to(candidate_prefix) if candidate_prefix is not None
                                     else source_paths.parked(root, name))):
        raise ValueError("invalid production path: " + str(name))
    if root is not None:
        target = root / name
        target.resolve().relative_to(root.resolve())
        if any(q.is_symlink() for q in [target, *target.parents] if q.is_relative_to(root)):
            raise ValueError("symlink production path: " + name)
    return name


def load(root=ROOT, catalog=None):
    data = read_json(root / CONFIG_FILES[1])
    catalog = read_json(root / CONFIG_FILES[0]) if catalog is None else catalog
    if data.get("schema") != 1 or catalog.get("schema") != 1:
        raise ValueError("unsupported build configuration schema")
    for identity, profile in data["profiles"].items():
        if not re.fullmatch(r"[a-z0-9-]+", identity) or profile["family"] not in ("gcc296", "agbcc", "assembly", "host"):
            raise ValueError("unsupported profile: " + identity)
        for key, value in profile.items():
            if key.endswith("_variable"):
                if not isinstance(value, str) or not re.fullmatch(r"[A-Z][A-Z0-9_]*", value):
                    raise ValueError("invalid profile variable: " + str(value))
            if key.endswith("_variables"):
                if not isinstance(value, list) or any(not re.fullmatch(r"[A-Z][A-Z0-9_]*", v) for v in value):
                    raise ValueError("invalid profile variable list")
        family = profile["family"]
        required = {
            "gcc296": ("compiler_variable", "arguments_variable", "preprocessing"),
            "agbcc": ("compiler_variable", "arguments_variable", "preprocessing",
                      "preprocessor_variable", "preprocessor_arguments_variable"),
            "assembly": (),
            "host": ("compiler_variable", "arguments_variables"),
        }[family]
        if family != "host":
            required += ("assembler_variable", "assembler_arguments_variable")
        if family in ("gcc296", "agbcc"):
            required += ("alignment_variable", "fill_variable")
            if profile["preprocessing"] != ("driver" if family == "gcc296" else "host"):
                raise ValueError("unsupported preprocessing method")
        if not set(required) <= profile.keys():
            raise ValueError("incomplete profile: " + identity)
    candidate_prefix = source_paths.candidate_root(root)
    units = [*catalog["units"], *data["host_units"]]
    by_id, sources, objects = {}, set(), set()
    for unit in units:
        for key in ("source", "object"):
            local_name(unit[key], root, candidate_prefix=candidate_prefix)
        if unit["id"] in by_id or unit["source"] in sources or unit["object"] in objects:
            raise ValueError("duplicate TU identity/source/object")
        if unit["profile"] not in data["profiles"]:
            raise ValueError("unknown compiler profile: " + unit["profile"])
        family = data["profiles"][unit["profile"]]["family"]
        if not unit["source"].endswith(".s" if family == "assembly" else ".c"):
            raise ValueError("profile source language differs: " + unit["id"])
        if family == "host":
            local_name(unit["binary"], root, candidate_prefix=candidate_prefix)
        by_id[unit["id"]] = unit; sources.add(unit["source"]); objects.add(unit["object"])
    for identity, profile in data["required_unit_profiles"].items():
        if identity not in by_id or by_id[identity]["profile"] != profile:
            raise ValueError("TU profile differs from required ABI: " + identity)
    return data, catalog, units


def resolve_values(data=None, overrides=None, root=ROOT):
    """Use Make as the only evaluator of defaults, flags and user overrides."""
    names = os.environ.get("GS_BUILD_VARIABLES", "").split()
    if os.environ.get("GS_BUILD_SETTINGS") == "1" and names and not overrides:
        return {name: os.environ[name] for name in names}
    return make_values(root, overrides)


def make_values(root, overrides=None):
    command = ["make", "-s", "--no-print-directory", "print-build-settings"]
    command.extend(name + "=" + value for name, value in (overrides or {}).items())
    out = subprocess.run(command,
                         cwd=root, text=True, capture_output=True, timeout=120)
    if out.returncode:
        raise ValueError("build settings query failed: " + out.stderr.strip())
    return json.loads(out.stdout)


def unit_for(units, name):
    matches = [u for u in units if name in (u["id"], u["source"], u["object"], u.get("binary"), u.get("legacy_object"), u.get("legacy_binary"))]
    if len(matches) != 1:
        raise ValueError("unknown or ambiguous active TU: " + name)
    return matches[0]


def settings(root, source, values=None, legacy=None):
    data, _, units = load(root)
    unit = unit_for(units, source)
    profile = data["profiles"][unit["profile"]]
    values = resolve_values(data, root=root) if values is None else values
    result = dict(profile=unit["profile"], family=profile["family"], unit=unit)
    for key in ("compiler", "preprocessor", "assembler"):
        if key + "_variable" in profile:
            result[key] = shlex.split(values[profile[key + "_variable"]])
    result["arguments"] = shlex.split(values[profile["arguments_variable"]]) if "arguments_variable" in profile else []
    if "arguments_variables" in profile:
        result["arguments"] = [a for key in profile["arguments_variables"] for a in shlex.split(values[key])]
    result["assembler_arguments"] = shlex.split(values[profile["assembler_arguments_variable"]]) if "assembler_arguments_variable" in profile else []
    result["postprocess"] = None
    if "alignment_variable" in profile:
        alignment = int(values[profile["alignment_variable"]])
        fill = int(values[profile["fill_variable"]])
        if not 0 <= alignment <= 4 or not 0 <= fill <= 255:
            raise ValueError("invalid assembly postprocessing")
        result["postprocess"] = dict(text_alignment_power=alignment, fill=fill)
    if result["family"] == "gcc296":
        result["preprocessor"] = result["compiler"]
        result["preprocessor_arguments"] = result["arguments"]
    elif result["family"] == "agbcc":
        result["preprocessor_arguments"] = shlex.split(values[profile["preprocessor_arguments_variable"]])
    if legacy is not None:
        if len(legacy) != 6 or legacy[0] != result["family"]:
            raise ValueError("legacy contract disagrees with TU profile")
        if legacy[0] == "gcc296":
            result.update(compiler=shlex.split(legacy[1]), arguments=shlex.split(legacy[2]),
                          preprocessor=shlex.split(legacy[1]), preprocessor_arguments=shlex.split(legacy[2]))
        else:
            result.update(compiler=shlex.split(legacy[3]), arguments=shlex.split(legacy[5]),
                          preprocessor_arguments=shlex.split(legacy[4]))
    return result


def legacy_contract(root, source, values=None):
    data, _, units = load(root)
    values = resolve_values(data, root=root) if values is None else values
    unit = unit_for(units, source); profile = data["profiles"][unit["profile"]]
    family = profile["family"]
    if family not in ("gcc296", "agbcc"):
        raise ValueError("six-line contract requires active target C")
    m4a = unit["profile"] == "old-agbcc-m4a"
    gcc_flags = profile["arguments_variable"] if family == "gcc296" else "GCC296_CFLAGS"
    return [family, values["GCC296_CC"], values[gcc_flags], values["AGBCC_DIR"] + "/bin/old_agbcc",
            values["M4A_CPPFLAGS" if m4a else "AGBFLASH_CPPFLAGS"],
            values["M4A_CC1FLAGS" if m4a else "AGBFLASH_CC1FLAGS"]]


def make_contract(root, source):
    return legacy_contract(root, source, make_values(root))


def preprocess_command(config, source, extra=(), dependencies=False):
    return [*config["preprocessor"], *config["preprocessor_arguments"], *extra,
            "-M" if dependencies else "-E", str(source)]


def compile_command(config, source, assembly, extra=()):
    return [*config["compiler"], *config["arguments"], *extra,
            *(["-S"] if config["family"] == "gcc296" else []), "-o", str(assembly), str(source)]


def assemble_command(config, source, output, dependencies=False):
    dep = ["-MD", str(Path(output).with_suffix(".d"))] if dependencies else []
    return [*config["assembler"], *config["assembler_arguments"], *dep, "-o", str(output), str(source)]


def postprocess_assembly(config, path):
    post = config["postprocess"]
    if post:
        with Path(path).open("a") as out:
            out.write("\n\t.text\n\t.align\t%d, %d\n" % (post["text_alignment_power"], post["fill"]))


def tool_files(root, config):
    result = {}
    def add(label, command):
        path = Path(command)
        if not path.is_absolute():
            path = root / path if "/" in command else Path(shutil.which(command) or "__missing_tool__")
        if not path.is_file():
            raise ValueError("missing build tool: " + command)
        result[label] = path.resolve()
    for kind in ("compiler", "preprocessor", "assembler"):
        if kind in config:
            add(kind, config[kind][0])
            # Preserve host compiler wrappers such as CC='ccache gcc'.
            for index, token in enumerate(config[kind][1:], 1):
                if not token.startswith("-") and shutil.which(token):
                    add(kind + ":" + str(index), token)
    if config["family"] in ("gcc296", "agbcc"):
        driver = config["preprocessor"]; flags = config["preprocessor_arguments"]
        names = ("cc1", "cpp", "tradcpp") if config["family"] == "gcc296" else ("cc1",)
        def query(option):
            return subprocess.check_output([*driver, *flags, option], cwd=root, text=True, timeout=120).strip()
        for name in names:
            add(name, query("-print-prog-name=" + name))
        specs = query("-print-file-name=specs")
        if specs != "specs": add("specs", specs)
        for i, option in enumerate(flags):
            if option == "-specs" or option.startswith("-specs="):
                name = flags[i + 1] if option == "-specs" else option.split("=", 1)[1]
                add("specs:" + name, name)
    if config["family"] == "host":
        # GCC exposes separate frontend/link tools; other host compilers may be
        # self-contained. Record an advertised tool only when it resolves.
        for name in ("cc1", "collect2", "as", "ld"):
            out = subprocess.run([*config["compiler"], "-print-prog-name=" + name],
                                 cwd=root, text=True, capture_output=True, timeout=120)
            value = out.stdout.strip()
            if out.returncode == 0 and value and (Path(value).is_file() or shutil.which(value)):
                add(name, value)
    return result



def selected_inputs(root, values=None):
    """Fingerprint effective settings and driver-selected binaries, including overrides."""
    data, _, units = load(root)
    values = make_values(root) if values is None else values
    result = {}
    for key in ("GCC296_DIR", "AGBCC_DIR"):
        folder = root / values[key]
        for path in sorted(folder.rglob("*")):
            if path.is_file():
                label = "installed:" + key + "/" + path.relative_to(folder).as_posix()
                result[label] = hashlib.sha256(path.read_bytes()).hexdigest()
    for identity in data["profiles"]:
        unit = next((u for u in units if u["profile"] == identity), None)
        if unit is None:
            continue
        resolved = settings(root, unit["source"], values)
        effective = {k: v for k, v in resolved.items() if k != "unit"}
        result["profile-settings:" + identity] = hashlib.sha256(json.dumps(effective, sort_keys=True).encode()).hexdigest()
        for label, path in tool_files(root, resolved).items():
            result["profile-tool:" + identity + ":" + label] = hashlib.sha256(path.read_bytes()).hexdigest()
    return result


def module_artifacts(root, identity):
    _, catalog, units = load(root)
    matches = [m for m in catalog["modules"] if m["id"] == identity]
    if len(matches) != 1: raise ValueError("unknown module: " + identity)
    module = matches[0]
    result = dict(module=identity, objects=[u["object"] for u in units if u["owner"] == identity],
                  linkers=list(dict.fromkeys(a["script"] for a in module["link_anchors"])))
    if module["kind"] == "overlay":
        result.update(build_paths.overlay(root, identity))
    elif module["kind"] == "rom-region":
        result.update(elf=build_paths.ELF, binary=build_paths.ROM, partial=build_paths.STAGE1, map=build_paths.TARGET + "/goldensun.map")
    else:
        result["linked_by"] = [m["id"] for m in catalog["modules"] if m["kind"] == "overlay" and any(
            obj in (root / a["script"]).read_text() for obj in result["objects"] for a in m["link_anchors"])]
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    subs = parser.add_subparsers(dest="command", required=True)
    subs.add_parser("settings")
    legacy = subs.add_parser("legacy"); legacy.add_argument("source")
    query = subs.add_parser("query")
    query.add_argument("kind", choices=("unit", "profile", "commands", "module", "overlay"))
    query.add_argument("identity")
    args = parser.parse_args()
    try:
        if args.command == "settings": print(json.dumps(resolve_values(load(ROOT)[0]), sort_keys=True))
        elif args.command == "legacy": print("\n".join(legacy_contract(ROOT, args.source)))
        elif args.kind in ("module", "overlay"):
            name = args.identity
            if args.kind == "overlay" and not name.startswith("overlay:"): name = "overlay:" + name
            print(json.dumps(module_artifacts(ROOT, name), indent=2))
        else:
            config = settings(ROOT, args.identity, make_values(ROOT))
            if args.kind == "unit": result = config["unit"]
            elif args.kind == "profile": result = config
            else:
                source, output = config["unit"]["source"], config["unit"]["object"]
                family = config["family"]
                if family in ("gcc296", "agbcc"):
                    asm, expanded = str(Path(output).with_suffix(".s")), str(Path(output).with_suffix(".i"))
                    result = dict(preprocess=preprocess_command(config, source), compile=compile_command(config, expanded if family == "agbcc" else source, asm), postprocess=config["postprocess"], assemble=assemble_command(config, asm, output, True))
                elif family == "assembly": result = dict(assemble=assemble_command(config, source, output, True))
                else: result = dict(compile=[*config["compiler"], *config["arguments"], "-c", "-o", output, source], link=[*config["compiler"], "-o", config["unit"]["binary"], output])
            print(json.dumps(result, indent=2))
        return 0
    except (OSError, ValueError, KeyError, TypeError, subprocess.SubprocessError) as exc:
        print("build config: " + str(exc), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
