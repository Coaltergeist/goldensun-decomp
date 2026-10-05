"""Generate per-TU permuter settings and compile through the production profile."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import shutil
import sys
import tempfile

import build_config
from candidate_build import compile_tu

ROOT = Path(__file__).resolve().parents[1]


def profile_digest(profile):
    return hashlib.sha256(json.dumps(profile, sort_keys=True).encode()).hexdigest()


def settings_text(root, source):
    values = build_config.make_values(root)
    profile = build_config.settings(root, source, values)
    if profile["family"] not in ("gcc296", "agbcc"):
        raise ValueError("permuter requires a target C unit")
    # The importer extracts -I/-D/-U flags from this command for its own parsing.
    # Compilation rechecks the recorded arguments and uses the complete profile.
    command = ["python3", "-B", "tools/permuter_compile.py", "compile", "--unit",
               profile["unit"]["id"], "--contract", profile_digest(profile), *profile["preprocessor_arguments"]]
    values = dict(compiler_type="gcc", compiler_command=shlex.join(command),
                  assembler_command=shlex.join([*profile["assembler"], *profile["assembler_arguments"]]),
                  asm_prelude_file="permuter_prelude.inc")
    return "\n".join(key + " = " + json.dumps(value) for key, value in values.items()) + "\n"


def compile_import(root, argv):
    # decomp-permuter appends INPUT -o OUTPUT after compiler_command. Reading this
    # tail preserves paired preprocessor flags such as '-D PLATFORM_GBA=1'.
    if len(argv) < 7 or argv[0] != "--unit" or argv[2] != "--contract" or argv[-2] != "-o":
        raise ValueError("expected compile --unit TU --contract HASH [recorded flags] INPUT -o OUTPUT")
    identity, flags = argv[1], argv[4:-3]
    source, output = Path(argv[-3]).resolve(), Path(argv[-1]).resolve()
    profile = build_config.settings(root, identity, build_config.make_values(root))
    if argv[3] != profile_digest(profile) or flags != profile["preprocessor_arguments"]:
        raise ValueError("profile settings changed; regenerate the per-TU permuter settings")
    _, _, units = build_config.load(root)
    protected = {(root / u[key]).resolve() for u in units for key in ("source", "object")}
    if output in protected or output == source or output.suffix != ".o":
        raise ValueError("permuter output must be a separate scratch .o file")
    try:
        with tempfile.TemporaryDirectory(prefix="goldensun-permuter-") as scratch:
            settings = build_config.make_contract(root, profile["unit"]["source"])
            try:
                obj, _, _ = compile_tu(root, profile["unit"]["source"], source.read_text(),
                                       Path(scratch) / "unit", settings)
            except ValueError as exc:
                log = Path(scratch) / "unit/build.log"
                if log.exists():
                    print(log.read_text(), file=sys.stderr)
                raise ValueError("candidate compilation failed") from exc
            output.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(obj, output)
    except BaseException:
        output.unlink(missing_ok=True)
        raise


def main(argv=None):
    argv = sys.argv[1:] if argv is None else argv
    try:
        os.chdir(ROOT)
        if argv and argv[0] == "compile":
            compile_import(ROOT, argv[1:])
        else:
            parser = argparse.ArgumentParser(description=__doc__)
            parser.add_argument("source", help="active source path, object path or stable TU ID")
            parser.add_argument("--output", type=Path, help="write a scratch TOML instead of stdout")
            args = parser.parse_args(argv)
            text = settings_text(ROOT, args.source)
            if args.output:
                path = args.output.resolve()
                if not path.is_relative_to(ROOT / "build"):
                    raise ValueError("settings output must be under build/")
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(text)
            else:
                print(text, end="")
        return 0
    except (OSError, ValueError, KeyError, TypeError) as exc:
        print("permuter profile: " + str(exc), file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
