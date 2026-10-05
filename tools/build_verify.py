"""Versioned proof of the actual serial backend and full verification operation."""
import hashlib
import os
from pathlib import Path
import re
import shutil
import subprocess

LEGACY_GATE = "make -j1 clean && make -j1 compare"


def selected_backend():
    value = os.environ.get("BUILD_BACKEND", "ninja")
    if value not in ("make", "ninja"): raise ValueError("unknown build backend: " + value)
    return value


def commands(backend):
    return [["python3", "-B", "tools/build.py", "--backend", backend, target]
            for target in ("clean", "verify")]


def receipt(root):
    backend = selected_backend()
    executable = shutil.which(os.environ.get("NINJA", "ninja") if backend == "ninja" else "make")
    if not executable: raise ValueError("missing verification backend: " + backend)
    version = subprocess.check_output([executable, "--version"], cwd=root, text=True).splitlines()[0]
    return dict(schema=1, backend=backend, serial=True, commands=commands(backend),
                checks=["rom-sha1", "all-96-overlays"],
                executor=dict(name=backend, version=version,
                              sha256=hashlib.sha256(Path(executable).read_bytes()).hexdigest()))


def validate(gate, *, legacy=False):
    if legacy:
        if gate != LEGACY_GATE: raise ValueError("invalid historical Make verification gate")
        return
    if not isinstance(gate, dict) or gate.get("schema") != 1:
        raise ValueError("unsupported verification receipt schema")
    backend = gate.get("backend")
    executor = gate.get("executor", {})
    if (backend not in ("make", "ninja") or gate.get("serial") is not True
            or gate.get("commands") != commands(backend)
            or gate.get("checks") != ["rom-sha1", "all-96-overlays"]
            or not isinstance(executor, dict) or executor.get("name") != backend
            or not isinstance(executor.get("version"), str) or not executor["version"]
            or not isinstance(executor.get("sha256"), str)
            or not re.fullmatch(r"[0-9a-f]{64}", executor["sha256"])):
        raise ValueError("receipt lacks full serial ROM/overlay verification")


def run(root, log):
    before = receipt(root)
    for command in before["commands"]:
        subprocess.run(command, cwd=root, stdout=log, stderr=subprocess.STDOUT, check=True)
    if before != receipt(root): raise ValueError("verification backend changed during build")
    return before
