#!/usr/bin/env python3
"""Verify a conversion, retire landed drafts, and refresh the complete progress report.

Production sources are never edited. No staging, commits, or pushes are performed.
Run without concurrent source edits or builds. Recovery evidence stays in .progress/.
"""
import argparse
from contextlib import contextmanager
import fcntl
import hashlib
import json
import os
from pathlib import Path
import signal
import stat
import subprocess
import sys
import tempfile
import source_paths

import decomp_progress as progress
import score_candidates
from candidate_catalog import local
from candidate_scores import candidate_inputs
from generate_candidates import retirement_plan

ROOT = Path(__file__).resolve().parents[1]
REPORT_FILES = ("progress_snapshot.json", "candidate_scores.json", "report.json")
INDEX = "src/non_matching/INDEX.md"


def contents(root, name):
    path = local(root, name)
    if any(p.is_symlink() for p in path.parents if p != root):
        raise ValueError("symlink parent: " + name)
    return (path.read_bytes(), stat.S_IMODE(path.stat().st_mode)) if path.exists() else (None, None)


def checksum(data):
    return None if data is None else hashlib.sha256(data).hexdigest()


def inventory(root):
    names = set(candidate_inputs(root)) | set(REPORT_FILES) | {source_paths.candidate_root(root) + "/INDEX.md"}
    return {name: (checksum(data), mode) for name in sorted(names)
            for data, mode in [contents(root, name)]}


def atomic_write(path, data, mode=0o644):
    fd, temporary = tempfile.mkstemp(prefix=".finalize-", dir=path.parent)
    try:
        with os.fdopen(fd, "wb") as out:
            out.write(data)
            out.flush()
            os.fsync(out.fileno())
        os.chmod(temporary, mode)
        os.replace(temporary, path)
    finally:
        if os.path.exists(temporary):
            os.unlink(temporary)


class Transaction:
    """Back up the complete write set, and preserve conflicting edits on rollback."""
    def __init__(self, root, run, names):
        self.root, self.run = root, run
        self.before, self.expected, self.applied = {}, {}, []
        self.state = dict(status="preparing", files={})
        self.journal()
        for name in sorted(set(names)):
            data, mode = contents(root, name)
            self.before[name] = self.expected[name] = (data, mode)
            if data is not None:
                backup = run / "backup" / name
                backup.parent.mkdir(parents=True, exist_ok=True)
                backup.write_bytes(data)
                if backup.read_bytes() != data:
                    raise RuntimeError("backup verification failed: " + name)
            self.state["files"][name] = dict(before=checksum(data), mode=mode)
        self.state["status"] = "prepared"
        self.journal()

    def journal(self):
        atomic_write(self.run / "transaction.json",
                     (json.dumps(self.state, indent=2) + "\n").encode(), 0o600)

    def write(self, name, data, mode=None):
        if contents(self.root, name) != self.expected[name]:
            raise RuntimeError("file changed during finalization: " + name)
        mode = mode if mode is not None else self.before[name][1] or 0o644
        self.expected[name] = (data, mode) if data is not None else (None, None)
        if name not in self.applied:
            self.applied.append(name)
        self.state["files"][name]["after"] = checksum(data)
        self.state.update(status="applying", applied=self.applied)
        self.journal()  # Record intent before mutation, including interruptions.
        path = local(self.root, name)
        if data is None:
            path.unlink(missing_ok=True)
        else:
            atomic_write(path, data, mode)

    def finish(self):
        for name, expected in self.expected.items():
            if contents(self.root, name) != expected:
                raise RuntimeError("file changed during finalization: " + name)
        self.state["status"] = "complete"
        self.journal()

    def rollback(self, error):
        conflicts = []
        for name in reversed(self.applied):
            try:
                current = contents(self.root, name)
                if current == self.before[name]:
                    continue
                if current != self.expected[name]:
                    conflicts.append(name)
                    continue
                data, mode = self.before[name]
                path = local(self.root, name)
                if data is None:
                    path.unlink(missing_ok=True)
                else:
                    atomic_write(path, data, mode)
            except (OSError, ValueError):
                conflicts.append(name)
        self.state.update(status="rollback-conflict" if conflicts else "rolled-back",
                          error=str(error), conflicts=conflicts)
        self.journal()
        if conflicts:
            raise RuntimeError("concurrent edits preserved; recover from " + str(self.run)
                               + ": " + ", ".join(conflicts)) from error


@contextmanager
def exclusive(root):
    work = local(root, ".progress")
    work.mkdir(exist_ok=True)
    with local(root, ".progress/finalize.lock").open("a") as lock:
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError as exc:
            raise RuntimeError("another progress finalization is running") from exc
        yield work


@contextmanager
def interruptible():
    def interrupted(signum, frame):
        raise InterruptedError("interrupted by signal " + str(signum))
    previous = {sig: signal.signal(sig, interrupted) for sig in (signal.SIGINT, signal.SIGTERM)}
    try:
        yield
    finally:
        for sig, handler in previous.items():
            signal.signal(sig, handler)


def preflight(root, objdiff):
    binary, _ = score_candidates.scorer(objdiff)
    progress.installed_tools(root)
    score_candidates.compiler_inputs(root)
    return binary


def verify_baseline(root, output):
    subprocess.run([sys.executable, "-B", "tools/create_diff_baseline.py", "--output", output],
                   cwd=root, check=True)


def check_repository(root):
    subprocess.run([sys.executable, "-B", "tools/check_repository.py"], cwd=root, check=True)


def finalize(root, objdiff):
    INDEX = source_paths.candidate_root(root) + "/INDEX.md"
    root = Path(root).resolve()
    binary = preflight(root, objdiff)
    with exclusive(root) as work:
        run = Path(tempfile.mkdtemp(prefix="finalize-", dir=work))
        print("Finalization backups/evidence:", run, flush=True)
        before, production = inventory(root), progress.source_inputs(root)
        # Capture in scratch first: a failed build never replaces public metadata.
        progress.capture(root, run / "progress_snapshot.json")
        snapshot = progress.load(run / "progress_snapshot.json")
        changes, retired = retirement_plan(root, snapshot)
        if inventory(root) != before or progress.source_inputs(root) != production:
            raise RuntimeError("inputs changed during verification; nothing reconciled")
        changes["progress_snapshot.json"] = (run / "progress_snapshot.json").read_bytes()
        transaction = Transaction(root, run, [*changes, "candidate_scores.json", "report.json"])
        progress.write_json(run / "retired.json", retired)
        try:
            if inventory(root) != before or progress.source_inputs(root) != production:
                raise RuntimeError("inputs changed after backup")
            for name, data in changes.items():
                transaction.write(name, data)
            for row in retired:
                print("Retired:", row["id"], row["candidate"], flush=True)
            candidate_state = candidate_inputs(root)
            index_state = contents(root, INDEX)
            check_repository(root)
            baseline = ".diff-baselines/" + run.name
            verify_baseline(root, baseline)
            score_candidates.capture(root, root / baseline, binary, run / "candidate_scores.json")
            transaction.write("candidate_scores.json", (run / "candidate_scores.json").read_bytes())
            progress.export(root, run / "report.json")
            transaction.write("report.json", (run / "report.json").read_bytes())
            if (progress.source_inputs(root) != production or candidate_inputs(root) != candidate_state
                    or contents(root, INDEX) != index_state):
                raise RuntimeError("inputs changed during finalization")
            transaction.finish()
        except BaseException as exc:
            transaction.rollback(exc)
            raise
        print("FINALIZE OK: ROM, all overlays, candidates and report verified; user stages/commits.", flush=True)
        return run


def preview(root):
    print("Would verify the ROM/all overlays, reconcile landed candidates, capture a new")
    print("reference baseline, rescore all remaining drafts, and validate/export the report.")
    print("Would refresh:", ", ".join(REPORT_FILES))
    manifest, baseline = progress.metadata(root)
    snapshot = progress.load(root / "progress_snapshot.json")
    try:
        progress.validate_snapshot(manifest, baseline, snapshot, progress.source_inputs(root),
                                   progress.digest(root / progress.BASELINE), root=root)
    except ValueError as exc:
        print("Retirement preview requires a fresh snapshot:", exc)
        return
    changes, retired = retirement_plan(root, snapshot)
    for name, data in changes.items():
        print("Would " + ("delete: " if data is None else "update: ") + name)
    print("Verified landed candidate identities:", len(retired))


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--objdiff", default=os.environ.get("OBJDIFF", "objdiff-cli"))
    mode = ap.add_mutually_exclusive_group()
    mode.add_argument("--dry-run", action="store_true", help="preview without builds or writes")
    mode.add_argument("--check-tools", action="store_true", help="validate compilers and pinned objdiff only")
    args = ap.parse_args()
    try:
        os.chdir(ROOT)
        if args.dry_run:
            preview(ROOT)
        elif args.check_tools:
            preflight(ROOT, args.objdiff)
            print("Finalization tools: PASS")
        else:
            with interruptible():
                finalize(ROOT, args.objdiff)
    except (OSError, ValueError, KeyError, TypeError, RuntimeError, subprocess.SubprocessError) as exc:
        print("FINALIZE FAILED:", exc, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
