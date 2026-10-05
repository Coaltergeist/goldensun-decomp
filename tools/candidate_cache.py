"""Local, checked artifacts for incremental candidate compilation and scoring."""
import hashlib
import json
from pathlib import Path
import re

from decomp_progress import digest, fingerprint, load, write_json
import build_config


IMPLEMENTATION = ("candidate_cache.py", "candidate_build.py", "candidate_catalog.py",
                  "candidate_scores.py", "score_candidates.py", "c_source.py", "elf_contract.py",
                  "build_config.py", "build_compile.py")


def tool_identity(root, settings, source):
    profile = build_config.settings(root, source, legacy=settings)
    return {name: dict(path=str(path), sha256=digest(path))
            for name, path in build_config.tool_files(root, profile).items()}


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
                                         names=list(names), tools=tools,
                                         profile=build_config.settings(self.root, source, legacy=settings)))

    def publish(self):
        # Publish only after the complete scoring run passes its freshness checks.
        self.entries.update(self.pending)
        write_json(self.path, dict(schema=1, entries=self.entries))
        write_json(self.run / "reuse.json", self.stats)
