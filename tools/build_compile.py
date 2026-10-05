"""Execute the shared compiler pipeline and update Make's per-profile stamps."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import subprocess
import sys

import build_config as config
import build_deps

ROOT = Path(__file__).resolve().parents[1]


def run(argv, root, **kwargs):
    print(shlex.join([str(a) for a in argv]), flush=True)
    return subprocess.run(argv, cwd=root, check=True, **kwargs)


def compile_source(root, settings, source, output, *, dependencies=True):
    """Keep production outputs at their existing paths; do not infer TU ownership."""
    source, output = Path(source), Path(output)
    assembly, expanded = output.with_suffix(".s"), output.with_suffix(".i")
    family = settings["family"]
    output.parent.mkdir(parents=True, exist_ok=True)
    try:
        if family == "assembly":
            run(config.assemble_command(settings, source, output, dependencies), root)
        elif family == "host":
            run([*settings["compiler"], *settings["arguments"], "-c", "-o", str(output), str(source)], root)
        else:
            if dependencies:
                build_deps.c_dependencies(str(output), config.preprocess_command(settings, source, dependencies=True))
            compiler_input = source
            if family == "agbcc":
                run([*config.preprocess_command(settings, source), "-o", str(expanded)], root)
                compiler_input = expanded
            run(config.compile_command(settings, compiler_input, assembly), root)
            config.postprocess_assembly(settings, assembly)
            run(config.assemble_command(settings, assembly, output, dependencies), root)
        if dependencies and family != "host":
            build_deps.phony_dependencies(output.with_suffix(".d"))
    except BaseException:
        # A failed rebuild must not leave an older output that looks current.
        output.unlink(missing_ok=True)
        raise


def profile_stamp(root, profile):
    data, _, units = config.load(root)
    members = [u for u in units if u["profile"] == profile]
    if not members:
        raise ValueError("profile has no active units: " + profile)
    resolved = config.settings(root, members[0]["source"])
    values = {k: v for k, v in resolved.items() if k != "unit"}
    hashes = {name: hashlib.sha256((root / name).read_bytes()).hexdigest()
              for name in ("Makefile", *config.IMPLEMENTATION)}
    tools = {name: dict(path=str(path), sha256=hashlib.sha256(path.read_bytes()).hexdigest())
             for name, path in config.tool_files(root, resolved).items()}
    # Membership participates so changing a TU's assigned profile cannot reuse an
    # older destination-profile stamp. Only the two affected groups invalidate.
    text = json.dumps(dict(settings=values, tools=tools, implementation=hashes,
                           units=sorted(({k: u[k] for k in ("id", "source", "object", "profile")} for u in members), key=lambda u: u["id"])), sort_keys=True, indent=2) + "\n"
    build_deps.write_changed(root / ".build" / (profile + ".stamp"), text)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest="command", required=True)
    compile_parser = sub.add_parser("compile")
    compile_parser.add_argument("source"); compile_parser.add_argument("-o", required=True, dest="output")
    stamp = sub.add_parser("stamp"); stamp.add_argument("profile")
    link = sub.add_parser("link-host"); link.add_argument("output")
    args = parser.parse_args()
    try:
        os.chdir(ROOT)
        if args.command == "stamp":
            profile_stamp(ROOT, args.profile)
        elif args.command == "compile":
            settings = config.settings(ROOT, args.source)
            if args.output != settings["unit"]["object"]:
                raise ValueError("output differs from catalog: " + args.output)
            compile_source(ROOT, settings, args.source, args.output)
        else:
            settings = config.settings(ROOT, args.output)
            if settings["family"] != "host" or settings["unit"]["binary"] != args.output:
                raise ValueError("not a host utility: " + args.output)
            try:
                run([*settings["compiler"], "-o", args.output, settings["unit"]["object"]], ROOT)
            except BaseException:
                Path(args.output).unlink(missing_ok=True)
                raise
        return 0
    except (OSError, ValueError, KeyError, TypeError, subprocess.SubprocessError) as exc:
        print("build compile: " + str(exc), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
