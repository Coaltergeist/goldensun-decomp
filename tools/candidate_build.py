"""Isolated compilation and reference provenance for candidate comparisons."""
import difflib
import hashlib
import json
from pathlib import Path
import re
import shlex
import shutil
import subprocess

from c_source import parse_funcs
from decomp_progress import source_inputs, load
from elf_contract import ELF


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def production_inputs(root):
    inputs = source_inputs(root)
    return {n: h for n, h in inputs.items()
            if n.startswith(("src/", "asm/", "data/", "include/", "overlays/", "exports/", "file_table/"))
            or n == "Makefile" or n.endswith((".ld", ".sym"))
            or n == "tools/build_deps.py" or n.startswith("tools/") and n.endswith((".c", ".h"))}


def compiler_inputs(root):
    files = list((root / "tools/gcc296").glob("*"))
    files += list((root / "tools/agbcc").rglob("*"))
    result = {str(p.relative_to(root)): sha(p) for p in files if p.is_file()}
    for name in ("gcc", "arm-none-eabi-as", "arm-none-eabi-objdump"):
        binary = shutil.which(name)
        if binary:
            result["host:" + name] = sha(binary)
    return result


def contract(root, source):
    out = subprocess.run(["make", "-s", "--no-print-directory", "print-compile-contract",
                          "SOURCE=" + source], cwd=root, capture_output=True, text=True,
                         check=True, timeout=120).stdout.splitlines()
    if len(out) != 6 or out[0] not in ("gcc296", "agbcc"):
        raise ValueError("invalid Makefile compile contract")
    return out


def reference(root, directory, object_name):
    directory = Path(directory)
    meta = load(directory / "manifest.json")
    if not meta.get("production_inputs") or not meta.get("candidate_compilers"):
        raise ValueError("baseline needs fresh capture with tools/create_diff_baseline.py")
    if meta.get("gate") != "make -j1 clean && make -j1 compare":
        raise ValueError("reference has no full verification gate")
    if meta["production_inputs"] != production_inputs(root):
        raise ValueError("production inputs changed; capture a fresh baseline")
    if meta["candidate_compilers"] != compiler_inputs(root):
        raise ValueError("compiler inputs changed; capture a fresh baseline")
    from candidate_catalog import local
    if meta.get("reference_sha256") and sha(root / "baserom.gba") != meta["reference_sha256"]:
        raise ValueError("reference ROM changed")
    for overlay, expected_hash in meta.get("overlays", {}).items():
        original = local(root, overlay.replace("/overlay.bin", "/orig.bin"))
        if sha(original) != expected_hash:
            raise ValueError("reference overlay changed: " + str(original))
    path = local(directory, object_name)
    if meta["objects"].get(object_name) != sha(path):
        raise ValueError("reference object missing or modified: " + object_name)
    return path, meta


class SourceRejected(ValueError):
    pass


def compile_tu(root, source, text, directory, settings, names=()):
    directory.mkdir()
    path = directory / Path(source).name
    path.write_text(text)
    asm, obj, expanded = directory / "tu.s", directory / "tu.o", directory / "tu.i"
    mode, cc, flags, oldcc, cppflags, oldflags = settings
    inc = ["-I" + str((root / source).parent)]
    commands = []
    with (directory / "build.log").open("w") as log:
        def run(argv, capture=False):
            commands.append(argv)
            out = subprocess.run(argv, cwd=root, text=True, capture_output=True, timeout=120)
            log.write(shlex.join(argv) + "\n" + ("" if capture else out.stdout) + out.stderr + "\n")
            if out.returncode:
                raise ValueError("compile failed; see " + str(directory / "build.log"))
            return out.stdout
        pre = ([cc] + shlex.split(flags) if mode == "gcc296"
               else ["gcc"] + shlex.split(cppflags))
        expanded.write_text(run(pre + inc + ["-E", str(path)], capture=True))
        errors = source_errors(expanded.read_text(), names)
        if errors:
            raise SourceRejected("; ".join(errors))
        if mode == "gcc296":
            run([cc] + shlex.split(flags) + inc + ["-S", "-o", str(asm), str(path)])
        else:
            run([oldcc] + shlex.split(oldflags) + ["-o", str(asm), str(expanded)])
        with asm.open("a") as out:
            out.write("\n\t.text\n\t.align\t2, 0\n")
        run(["arm-none-eabi-as", "-mcpu=arm7tdmi", "-mthumb-interwork",
             "-Iinclude", "-o", str(obj), str(asm)])
    return obj, expanded.read_text(), commands


def source_errors(expanded, names):
    errors = []
    definitions = parse_funcs(expanded)
    for name in names:
        if name not in definitions:
            errors.append("replacement C definition missing: " + name)
    # Inspect expanded inline assembly, not compiler output or INCLUDE_ASM files.
    tokens = [m[0] for m in re.finditer(
        r'/\*.*?\*/|//[^\n]*|"(?:\\.|[^"\\])*"|[A-Za-z_]\w*|[^\s]', expanded, re.S)
        if not m[0].startswith(("/*", "//"))]
    for i, token in enumerate(tokens):
        if token not in ("asm", "__asm__", "__asm"):
            continue
        j = i + 1
        while j < len(tokens) and tokens[j] in ("volatile", "__volatile__", "__volatile"):
            j += 1
        if j >= len(tokens) or tokens[j] != "(":
            continue
        j += 1
        strings = []
        while j < len(tokens) and tokens[j].startswith('"'):
            value = tokens[j][1:-1]
            def decode(m):
                s = m[1]
                if s.startswith("x"): return chr(int(s[1:], 16) & 255)
                if s[0] in "01234567": return chr(int(s, 8) & 255)
                return {"n": "\n", "t": "\t", "r": "\r"}.get(s, s)
            strings.append(re.sub(r'\\(x[0-9a-fA-F]+|[0-7]{1,3}|.)', decode, value))
            j += 1
        assembly = "".join(strings)
        assembly = re.sub(r'"(?:\\.|[^"\\])*"|/\*.*?\*/|@[^\n]*',
                          lambda m: re.sub(r"[^\n]", " ", m[0]), assembly, flags=re.S)
        if re.search(r"(?:^|[;\n])\s*(?:[\w.$]+:\s*)*\.size\b", assembly):
            errors.append("source-authored .size override")
    return sorted(set(errors))


def comparison(expected, actual):
    a, b = ELF(expected), ELF(actual)
    x, y = a.contract(), b.contract()
    result = dict(exact=x == y, flags=x[0] != y[0], sections=[], symbols=[], relocations=[])
    for name in sorted(x[1].keys() | y[1].keys()):
        left, right = x[1].get(name), y[1].get(name)
        if left != right:
            result["sections"].append(dict(name=name,
                expected_size=left[2] if left else None, candidate_size=right[2] if right else None,
                differing_bytes=(sum(c != d for c, d in zip(left[-1], right[-1]))
                                 + abs(len(left[-1]) - len(right[-1]))) if left and right else None))
        if x[3].get(name) != y[3].get(name):
            result["relocations"].append(name)
    sx, sy = {s[0]: s[1:] for s in x[2]}, {s[0]: s[1:] for s in y[2]}
    for name in sorted(sx.keys() | sy.keys()):
        if sx.get(name) != sy.get(name):
            result["symbols"].append(dict(name=name, expected=sx.get(name), candidate=sy.get(name)))
    return result


def disassembly_diff(root, expected, actual):
    def disassemble(path):
        out = subprocess.run(["arm-none-eabi-objdump", "-dr", str(path)], cwd=root,
                             text=True, capture_output=True, check=True, timeout=120).stdout
        return out.splitlines(keepends=True)[3:]
    return "".join(difflib.unified_diff(disassemble(expected), disassemble(actual),
                                      "expected", "candidate"))
