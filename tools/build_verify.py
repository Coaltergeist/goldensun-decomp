"""Record direct serial Make verification; validate older receipts unchanged."""
import hashlib
from pathlib import Path
import re
import shutil
import subprocess

LEGACY_GATE = "make -j1 clean && make -j1 compare"


def commands():
    return [["make", "-j1", target] for target in ("clean", "verify")]


def historical_commands(backend):
    # Schema 1 is evidence of the retired dispatcher, never a current executor.
    return [["python3", "-B", "tools/build.py", "--backend", backend, target]
            for target in ("clean", "verify")]


def receipt(root):
    executable = shutil.which("make")
    if not executable:
        raise ValueError("GNU Make 4.3+ is required")
    version = subprocess.check_output([executable, "--version"], cwd=root, text=True).splitlines()[0]
    return dict(schema=2, backend="make", serial=True, commands=commands(),
                checks=["rom-sha1", "all-96-overlays"],
                executor=dict(name="make", version=version,
                              sha256=hashlib.sha256(Path(executable).read_bytes()).hexdigest()))


def validate(gate, *, legacy=False):
    if legacy:
        if gate != LEGACY_GATE:
            raise ValueError("invalid historical Make verification gate")
        return
    if not isinstance(gate, dict) or gate.get("schema") not in (1, 2):
        raise ValueError("unsupported verification receipt schema")
    backend = gate.get("backend")
    expected = historical_commands(backend) if gate["schema"] == 1 else commands()
    allowed = ("make", "ninja") if gate["schema"] == 1 else ("make",)
    executor = gate.get("executor", {})
    if (backend not in allowed or gate.get("serial") is not True
            or gate.get("commands") != expected
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
    if before != receipt(root):
        raise ValueError("verification Make executable changed during build")
    return before
