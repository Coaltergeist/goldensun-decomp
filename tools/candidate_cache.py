"""Local, checked artifacts for incremental candidate compilation and scoring."""
import hashlib
import json
from pathlib import Path
import re
import shlex
import shutil
import subprocess

from decomp_progress import digest, fingerprint, load, write_json


IMPLEMENTATION = ("candidate_cache.py", "candidate_build.py", "candidate_catalog.py",
                  "candidate_scores.py", "score_candidates.py", "c_source.py", "elf_contract.py")


def tool_identity(root, settings):
    """Include driver-selected frontends/specs even with nondefault -B paths."""
    mode, cc, flags, oldcc, cppflags, _ = settings
    files = {}
    def binary(command):
        if "/" not in command:
            command = shutil.which(command)
        if not command:
            raise ValueError("missing candidate compiler tool")
        path = root / command
        if not path.is_file():
            raise ValueError("missing candidate compiler tool: " + str(path))
        return path
    def add(label, path):
        files[label] = dict(path=str(path.resolve()), sha256=digest(path))
    driver = binary(cc if mode == "gcc296" else "gcc")
    add("driver", driver)
    options = shlex.split(flags if mode == "gcc296" else cppflags)
    def query(option):
        return subprocess.run([str(driver), *options, option], cwd=root, check=True,
                              capture_output=True, text=True, timeout=120).stdout.strip()
    for name in (("cc1", "cpp", "tradcpp") if mode == "gcc296" else ("cc1",)):
        add(name, binary(query("-print-prog-name=" + name)))
    specs = query("-print-file-name=specs")
    if specs != "specs":
        add("specs", root / specs)
    for i, option in enumerate(options):
        if option == "-specs" or option.startswith("-specs="):
            name = options[i + 1] if option == "-specs" else option.split("=", 1)[1]
            add("specs:" + name, root / name)
    if mode == "agbcc":
        add("old_agbcc", binary(oldcc))
    add("assembler", binary("arm-none-eabi-as"))
    return files


class CandidateCache:
    def __init__(self, root, run, full=False):
        self.root, self.run, self.full = root, run, full
        self.path = root / ".progress/candidate-score-cache.json"
        self.implementation = fingerprint({name: digest(Path(__file__).parent / name)
                                           for name in IMPLEMENTATION})
        try:
            index = load(self.path)
            self.entries = index["entries"] if isinstance(index, dict) and index.get("schema") == 1 else {}
            if not isinstance(self.entries, dict):
                self.entries = {}
        except (OSError, ValueError, KeyError, TypeError):
            self.entries = {}
        self.pending = {}
        self.stats = dict(assembly_reused=0, assembly_compiled=0, scores_reused=0, scores_measured=0)

    def key(self, kind, value):
        return kind + ":" + fingerprint(dict(implementation=self.implementation, inputs=value))

    def get(self, key):
        if self.full:
            return None
        try:
            entry = self.entries[key]
            relative = Path(entry["file"])
            if relative.is_absolute() or ".." in relative.parts:
                return None
            path = self.root / relative
            path.resolve().relative_to((self.root / "build/non_matching").resolve())
            if path.is_symlink():
                return None
            data = path.read_bytes()
            if hashlib.sha256(data).hexdigest() != entry["sha256"]:
                return None
            return path, data
        except (OSError, ValueError, KeyError, TypeError):
            return None

    def remember(self, key, path):
        self.pending[key] = dict(file=path.relative_to(self.root).as_posix(), sha256=digest(path))

    def assembly_key(self, source, expanded, input_path, settings, names, tools):
        # Ignore only the temporary input's line-marker filename. Actual C strings
        # (including __FILE__) remain part of the key.
        expanded = re.sub(r'^(#\s*\d+\s+)' + re.escape(json.dumps(str(input_path))),
                          r'\1"<candidate>"', expanded, flags=re.M)
        return self.key("assembly", dict(source=source, expanded=expanded, settings=settings,
                                         names=list(names), tools=tools))

    def publish(self):
        # Publish only after the complete scoring run passes its freshness checks.
        self.entries.update(self.pending)
        write_json(self.path, dict(schema=1, entries=self.entries))
        write_json(self.run / "reuse.json", self.stats)
