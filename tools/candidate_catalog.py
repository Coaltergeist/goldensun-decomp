"""Candidate identities and temporary TU composition."""
import re
from pathlib import Path
from c_source import parse_funcs
from decomp_progress import load, production_candidate_errors

PARKED = "src/non_matching/"
TOKEN = re.compile(r'/\*.*?\*/|//[^\n]*|"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'', re.S)
SITE = re.compile(r'\bINCLUDE_ASM(_SECTION)?\s*\(\s*"([^"]+)"\s*(?:,\s*"([^"]+)"\s*)?\)\s*;')


def local(root, name):
    if not isinstance(name, str) or Path(name).is_absolute() or ".." in Path(name).parts:
        raise ValueError("invalid repository path: " + str(name))
    path = root / name
    path.resolve().relative_to(root.resolve())
    if path.is_symlink():
        raise ValueError("symlink input: " + name)
    return path


def sites(text):
    clean = TOKEN.sub(lambda m: re.sub(r"[^\n]", " ", m[0])
                     if m[0].startswith(("/*", "//")) else m[0], text)
    return list(SITE.finditer(clean))


def catalog(root, manifests=None):
    root = Path(root)
    snapshot = load(root / "progress_snapshot.json")
    result, identities, files = {}, set(), set()
    if manifests is None:
        manifests = {p.relative_to(root).as_posix(): load(p)
                     for p in (root / PARKED).rglob("candidates.json")}
    for name, meta in sorted(manifests.items()):
        manifest = local(root, name)
        if meta.get("schema") != 1 or not meta.get("functions"):
            raise ValueError("invalid candidate manifest: " + str(manifest))
        source = meta["source"]
        path = local(root, source)
        if not source.startswith("src/") or source.startswith(PARKED) or path.suffix != ".c":
            raise ValueError("invalid production TU: " + source)
        unit = snapshot["units"].get(source)
        if unit is None:
            raise ValueError("unknown production TU: " + source)
        directory = manifest.parent.relative_to(root).as_posix()
        tu = directory[len(PARKED):]
        if source != "src/" + tu + ".c":
            raise ValueError("candidate directory does not mirror TU: " + directory)
        text = path.read_text()
        includes = sites(text)
        functions = {}
        for name, entry in meta["functions"].items():
            if not re.fullmatch(r"[A-Za-z_]\w*", name):
                raise ValueError("invalid function name: " + name)
            identity = entry["id"]
            if identity in identities:
                raise ValueError("duplicate original identity: " + identity)
            identities.add(identity)
            original = unit["functions"].get(identity)
            if not original or original["name"] != name or snapshot["functions"][identity] != "assembly":
                raise ValueError("candidate target missing, renamed or already landed: " + name)
            assembly = "asm/" + tu + "/" + name + ".s"
            matches = [m for m in includes if m[2] == assembly]
            if len(matches) != 1 or not local(root, assembly).is_file():
                raise ValueError("expected one assembly inclusion: " + assembly)
            candidate = directory + "/" + name + ".c"
            body = local(root, candidate).read_text()
            definitions = parse_funcs(body)
            if name not in definitions or sites(body):
                raise ValueError("candidate must define C: " + candidate)
            extra = [n for n, definition in definitions.items()
                     if n != name and not re.match(r"\s*static\b", definition)]
            if extra:
                raise ValueError("unexpected external definitions: " + repr(extra))
            files.add(candidate)
            contexts = entry.get("context", [])
            for context in contexts:
                cp = local(root, directory + "/" + context)
                cp.relative_to(manifest.parent)
                if cp.suffix != ".h" or not cp.is_file():
                    raise ValueError("missing candidate context: " + str(cp))
            functions[name] = dict(entry, name=name, candidate=candidate, assembly=assembly)
        for name, entry in functions.items():
            if not isinstance(entry.get("requires", []), list) or any(
                    dep not in functions or dep == name for dep in entry.get("requires", [])):
                raise ValueError("invalid companion requirement: " + name)
        result[tu] = dict(source=source, object=unit["object"], directory=directory,
                          functions=functions, manifest=manifest.relative_to(root).as_posix())
        closure(result[tu], list(functions))
    unexpected = {p.relative_to(root).as_posix()
                  for p in (root / PARKED).rglob("*.c")} - files
    if unexpected:
        raise ValueError("unregistered candidates: " + ", ".join(sorted(unexpected)))
    return result


def closure(unit, names):
    done, active = set(), set()
    def visit(name):
        if name in active:
            raise ValueError("cyclic candidate requirements: " + name)
        if name in done:
            return
        active.add(name)
        for dep in unit["functions"][name].get("requires", []):
            visit(dep)
        active.remove(name)
        done.add(name)
    for name in names:
        visit(name)
    return sorted(done)


def compose(root, unit, names):
    names = closure(unit, names)
    source = unit["source"]
    text = local(root, source).read_text()
    entries = {unit["functions"][n]["assembly"]: unit["functions"][n] for n in names}
    contexts = sorted({unit["directory"] + "/" + h for n in names
                       for h in unit["functions"][n].get("context", [])})
    prefix = "".join('#include "' + str(local(root, h).resolve()) + '"\n' for h in contexts)
    edits = []
    for match in sites(text):
        entry = entries.get(match[2])
        if entry is None:
            continue
        body = local(root, entry["candidate"]).read_text().rstrip()
        section = ('SECTION("' + match[3] + '");\n') if match[1] else ""
        replacement = section + '#line 1 "' + entry["candidate"] + '"\n' + body + "\n"
        if prefix:
            replacement = prefix + replacement
            prefix = ""
        edits.append((match.start(), match.end(), replacement))
    if len(edits) != len(names):
        raise ValueError("candidate target changed while composing")
    for start, end, replacement in reversed(edits):
        line = text[:end].count("\n") + 1
        text = text[:start] + replacement + f'\n#line {line} "{source}"\n' + text[end:]
    return f'#line 1 "{source}"\n' + text


def collection_inputs(root, unit):
    names = [unit["manifest"], unit["source"]]
    for entry in unit["functions"].values():
        names += [entry["candidate"], entry["assembly"]]
        names += [unit["directory"] + "/" + h for h in entry.get("context", [])]
    return sorted(set(names))


def markdown_index(units):
    lines = ["# Candidates", "", "| Translation unit | Functions |", "| --- | --- |"]
    for tu, unit in units.items():
        links = ["[" + name + "](" + tu + "/" + name + ".c)"
                 for name in sorted(unit["functions"])]
        lines.append("| [" + tu + "](" + tu + "/) | " + ", ".join(links) + " |")
    return "\n".join(lines) + "\n"
