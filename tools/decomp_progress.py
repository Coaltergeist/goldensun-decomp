#!/usr/bin/env python3
"""Verified local progress snapshots and ROM-free decomp.dev TU reports.

baseline: rebuild the pinned original disassembly in an isolated cache.
snapshot: fresh serial game verification, then capture active C ownership.
check/export: validate metadata and source freshness without a ROM/toolchain.
"""
import argparse
from collections import Counter, defaultdict
import hashlib
import io
import json
import os
import re
from pathlib import Path, PurePosixPath
import shlex
import shutil
import subprocess
import sys
import tarfile
import tempfile

from c_source import parse_funcs
from progress import linked_sources, symbol_records

ROOT = Path(__file__).resolve().parents[1]
ROM_SHA1 = "5c4695205413df7db52b9a184815a07783999971"
BASELINE = "original_function_sizes.json"
SNAPSHOT = "progress_snapshot.json"
POLICY = "known-original-function-bytes-excluding-registered-fakematches-v1"
STATUSES = {"assembly", "c", "c-registered-fakematch"}
# Reviewed defects in the pinned original assembly's ELF size metadata.
# These corrections change accounting only, never assembly or production output.
OVERLAP_SUCCESSORS = {"rom:080008d4": "rom:080008d8", "rom:08000b60": "rom:08000b6c"}
SIZE_CORRECTIONS = {
    "overlay:rom_77dd1c:0200c560": (12, "OvlFunc_4560 ends with a typo: .func_end OvlFunc_456c; next entry is 0x0200c56c."),
    "rom:080a23f4": (20, "Func_a23f4 lacks .func_end; its return is followed immediately by Func_a2408."),
}
INPUT_DIRS = {"src", "asm", "data", "include", "overlays", "exports", "file_table", "tools"}
INPUT_FILES = {"Makefile", ".gitattributes", ".gitignore", "goldensun.sha1",
               "original_functions.json", BASELINE, "fakematch.txt", "aliases.txt",
               "unmatchable.txt"}


def digest(path, algorithm="sha256"):
    return hashlib.new(algorithm, Path(path).read_bytes()).hexdigest()


def load(path):
    # Duplicate JSON keys must not hide a duplicate identity or status.
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError("duplicate JSON key: " + key)
            result[key] = value
        return result
    return json.loads(Path(path).read_text(), object_pairs_hook=unique)


def write_json(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    text = json.dumps(value, indent=2, sort_keys=True) + "\n"
    with tempfile.NamedTemporaryFile(mode="w", dir=path.parent, delete=False) as out:
        temporary = Path(out.name)
        out.write(text)
    temporary.replace(path)


def git(root, *args):
    return subprocess.check_output(["git", "--no-optional-locks", *args], cwd=root)


def production_candidate_errors(root):
    errors = []
    token = re.compile(r'/\*.*?\*/|//[^\n]*|"(?:\\.|[^"\\])*"', re.S)
    for base in ("src", "include"):
        for path in (root / base).rglob("*"):
            name = path.relative_to(root).as_posix()
            if path.suffix not in (".c", ".h") or name.startswith("src/non_matching/"):
                continue
            text = path.read_text().replace("\\\n", "")
            text = token.sub(lambda m: re.sub(r"[^\n]", " ", m[0])
                             if m[0].startswith(("/*", "//")) else m[0], text)
            for line in re.findall(r'^\s*#\s*include(?:_next)?\b([^\n]*)', text, re.M):
                include = re.fullmatch(r'\s*[<"]([^>"\n]+)[>"]\s*', line)
                if include is None:
                    errors.append("non-literal include prevents candidate isolation check: " + name)
                    continue
                ref = include[1]
                targets = (path.parent / ref, root / "include" / ref, root / ref)
                if "non_matching" in Path(ref).parts or any(
                        t.resolve().is_relative_to((root / "src/non_matching").resolve())
                        for t in targets):
                    errors.append("production includes parked candidate: " + name)
    for path in list(root.glob("*.ld")) + list((root / "overlays").glob("*/overlay.ld")):
        if "non_matching" in path.read_text():
            errors.append("linker references parked candidate: " + path.relative_to(root).as_posix())
    return errors


def source_inputs(root):
    errors = production_candidate_errors(root)
    if errors:
        raise ValueError("; ".join(errors))
    names = git(root, "ls-files", "-z", "--cached", "--others", "--exclude-standard")
    result = {}
    for raw in sorted(set(names.split(b"\0")) - {b""}):
        name = os.fsdecode(raw)
        path = PurePosixPath(name)
        if not (path.parts[0] in INPUT_DIRS or name in INPUT_FILES
                or len(path.parts) == 1 and path.suffix in {".ld", ".sym"}):
            continue
        # Tests and prose don't affect the compiled game or accounting implementation.
        if name.startswith(("tools/tests/", "src/non_matching/")) or path.suffix.lower() == ".md":
            continue
        p = root / name
        p.resolve().relative_to(root.resolve())
        if p.is_symlink():
            raise ValueError("source symlinks are not supported: " + name)
        if not p.exists():
            # A working-tree deletion should hash the same before and after staging.
            continue
        if not p.is_file():
            raise ValueError("invalid source input: " + name)
        result[name] = digest(p)
    # Raw INCLUDE_ASM files are sometimes gitignored until the maintainer force-adds
    # them. Include their content even before staging; a missing checkout must fail.
    queue = [name for name in result if name.startswith("src/")
             and name.endswith(".c") and not name.startswith("src/non_matching/")]
    # Walk includes only in assembly actually linked (the tree also preserves
    # historical library references with upstream-only include paths).
    for name in result:
        if not name.endswith(".ld"):
            continue
        for obj in re.findall(r'\b((?:src|asm)/[A-Za-z0-9_/]+)\.o\b', (root / name).read_text()):
            source = ("src/" + obj[4:] if obj.startswith("asm/") else obj) + ".c"
            assembly = obj + ".s"
            if not (root / source).is_file() and assembly in result:
                queue.append(assembly)
    seen = set()
    while queue:
        name = queue.pop()
        if name.startswith("src/non_matching/"):
            raise ValueError("production includes parked candidate: " + name)
        if name in seen:
            continue
        seen.add(name)
        path = root / name
        if path.suffix == ".c" and name.startswith("src/"):
            refs = re.findall(r'^\s*INCLUDE_ASM(?:_SECTION)?\("([^"]+)"', path.read_text(), re.M)
        elif path.suffix in {".s", ".inc"}:
            refs = re.findall(r'^\s*\.include\s+"([^"]+)"', path.read_text(), re.M)
        else:
            continue
        for ref in refs:
            candidates = [root / ref, root / "include" / ref]
            target = next((p for p in candidates if p.is_file()), None)
            if target is None:
                raise ValueError("missing assembly input: " + name + " -> " + ref)
            target.resolve().relative_to(root.resolve())
            if target.is_symlink():
                raise ValueError("assembly symlink is not supported: " + ref)
            relative = target.relative_to(root).as_posix()
            if relative not in result:
                result[relative] = digest(target)
                queue.append(relative)
    if "Makefile" not in result or "original_functions.json" not in result:
        raise ValueError("incomplete source inventory")
    return result


def fingerprint(inputs):
    return hashlib.sha256(json.dumps(inputs, sort_keys=True, separators=(",", ":")).encode()).hexdigest()


def validate_baseline(manifest, baseline):
    if manifest.get("schema") != 1 or baseline.get("schema") != 1:
        raise ValueError("unsupported original-function metadata schema")
    if baseline.get("revision") != manifest.get("revision") or baseline.get("rom_sha1") != ROM_SHA1:
        raise ValueError("baseline revision/ROM mismatch")
    functions = manifest.get("functions", [])
    ids = [f["id"] for f in functions]
    sizes = baseline.get("sizes", {})
    if not ids or len(set(ids)) != len(ids) or set(ids) != set(sizes):
        raise ValueError("baseline must cover every original identity exactly once")
    domains = defaultdict(list)
    for f in functions:
        identity = f'{f["domain"]}:{f["address"]:08x}'
        if identity != f["id"] or f["mode"] not in {"arm", "thumb"}:
            raise ValueError("invalid original identity: " + f["id"])
        size = sizes[f["id"]]
        if type(size) is not int or size <= 0:
            raise ValueError("invalid original size: " + f["id"])
        domains[f["domain"]].append((f["address"], f["address"] + size, f["id"]))
    for ranges in domains.values():
        end = -1
        for start, stop, identity in sorted(ranges):
            if start < end:
                raise ValueError("overlapping original function: " + identity)
            end = stop
    return sizes


def metadata(root):
    manifest = load(root / "original_functions.json")
    baseline = load(root / BASELINE)
    if baseline.get("manifest_sha256") != digest(root / "original_functions.json"):
        raise ValueError("original-function manifest changed; review/regenerate baseline")
    validate_baseline(manifest, baseline)
    return manifest, baseline


def domain_artifact(root, domain, historical=False):
    if domain == "rom":
        return root / "goldensun.elf"
    if domain.startswith("common:"):
        parent = "overlays/common" if historical else "asm/maps/common"
        return root / parent / (domain.split(":")[1] + ".o")
    return root / "overlays" / domain.split(":")[1] / "overlay.elf"


def verify_outputs(root):
    if digest(root / "baserom.gba", "sha1") != ROM_SHA1:
        raise ValueError("reference ROM SHA1 mismatch")
    if digest(root / "goldensun.gba", "sha1") != ROM_SHA1:
        raise ValueError("built ROM SHA1 mismatch")
    overlays = sorted((root / "overlays").glob("*/overlay.ld"))
    if len(overlays) != 96:
        raise ValueError("expected all 96 overlay linker scripts")
    hashes = {}
    for script in overlays:
        original = script.with_name("orig.bin")
        built = script.with_name("overlay.bin")
        if original.read_bytes() != built.read_bytes():
            raise ValueError("overlay mismatch: " + script.parent.name)
        hashes[script.parent.name] = digest(built)
    return hashes


def run_gate(root, log):
    for target in ("clean", "compare"):
        subprocess.run(["make", "-j1", target], cwd=root, stdout=log,
                       stderr=subprocess.STDOUT, check=True)
    return verify_outputs(root)


def account_sizes(manifest, raw_sizes):
    sizes = dict(raw_sizes)
    adjustments = {}
    for identity, (size, reason) in SIZE_CORRECTIONS.items():
        if identity in sizes:
            if sizes[identity] != 0:
                raise ValueError("historical size correction no longer applies: " + identity)
            sizes[identity] = size
            adjustments[identity] = dict(elf_size=0, size=size, reason=reason)
    domains = defaultdict(list)
    for f in manifest["functions"]:
        domains[f["domain"]].append(f)
    for rows in domains.values():
        rows.sort(key=lambda f: f["address"])
        for f, following in zip(rows, rows[1:]):
            span = following["address"] - f["address"]
            if span > 0 and sizes[f["id"]] > span:
                if OVERLAP_SUCCESSORS.get(f["id"]) != following["id"]:
                    raise ValueError("unreviewed overlapping entry points: " + f["id"])
                adjustments[f["id"]] = dict(elf_size=sizes[f["id"]], size=span,
                    reason="Overlapping original entry points: shared tail belongs to " + following["id"])
                sizes[f["id"]] = span
    return sizes, adjustments


def baseline_capture(root, output):
    if output.exists():
        raise ValueError("baseline destination exists; choose --output to compare a regeneration")
    manifest = load(root / "original_functions.json")
    if digest(root / "baserom.gba", "sha1") != ROM_SHA1:
        raise ValueError("reference ROM SHA1 mismatch")
    work = root / ".progress"
    work.mkdir(exist_ok=True)
    reference = Path(tempfile.mkdtemp(prefix="baseline-", dir=work))
    print("Historical build/log:", reference, flush=True)
    archive = git(root, "archive", manifest["revision"])
    with tarfile.open(fileobj=io.BytesIO(archive)) as tree:
        for member in tree:
            target = reference / member.name
            target.resolve().relative_to(reference.resolve())
            if member.isdir():
                target.mkdir(parents=True, exist_ok=True)
            elif member.isfile():
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_bytes(tree.extractfile(member).read())
                target.chmod(member.mode & 0o777)
            else:
                raise ValueError("unsupported archive entry: " + member.name)
    for f in manifest["functions"]:
        if digest(reference / f["source"]) != f["source_sha256"]:
            raise ValueError("historical source provenance mismatch: " + f["source"])
    shutil.copyfile(root / "baserom.gba", reference / "baserom.gba")
    with (reference / "build.log").open("w") as log:
        overlays = run_gate(reference, log)
    domains = {}
    sizes = {}
    for f in manifest["functions"]:
        domain = f["domain"]
        if domain not in domains:
            domains[domain] = symbol_records(domain_artifact(reference, domain, historical=True))
        records = [s for s in domains[domain].get(f["address"], []) if s["name"] == f["original_name"]]
        if len(records) != 1:
            raise ValueError("missing/ambiguous historical symbol: " + f["id"])
        sizes[f["id"]] = records[0]["size"]
    sizes, adjustments = account_sizes(manifest, sizes)
    result = dict(schema=1, revision=manifest["revision"], rom_sha1=ROM_SHA1,
                  manifest_sha256=digest(root / "original_functions.json"), sizes=sizes, adjustments=adjustments,
                  scope="Known original function spans including in-span literal pools/alignment; overlapping entry-point tails assigned to the later entry; reviewed missing-size corrections; shared common modules once; call_via support excluded.",
                  verification=dict(gate="make -j1 clean && make -j1 compare", overlays=len(overlays)),
                  assembler=subprocess.check_output(["arm-none-eabi-as", "--version"], text=True).splitlines()[0])
    validate_baseline(manifest, result)
    write_json(output, result)
    print("Original functions:", len(sizes), "Bytes:", sum(sizes.values()), flush=True)


def active_definitions(root, source):
    # Reuse the production Makefile contract, including Gaia/common2/library overrides.
    contract = subprocess.check_output(["make", "-s", "--no-print-directory",
                                       "print-compile-contract", "SOURCE=" + source],
                                      cwd=root, text=True).splitlines()
    if len(contract) != 6 or contract[0] not in {"gcc296", "agbcc"}:
        raise ValueError("invalid compile contract: " + source)
    if contract[0] == "gcc296":
        command = [contract[1], *shlex.split(contract[2]), "-E", source]
    else:
        command = ["gcc", "-E", *shlex.split(contract[4]), source]
    expanded = subprocess.run(command, cwd=root, capture_output=True, text=True, check=True).stdout
    return parse_funcs(expanded)



def classify(units, definitions, registered):
    """Classify only the active definition in the function's owning TU."""
    statuses = {}
    for source, unit in units.items():
        for identity, entry in unit["functions"].items():
            name = entry["name"]
            is_c = name in definitions.get(source, {})
            statuses[identity] = ("c-registered-fakematch" if is_c and (name, source) in registered
                                  else "c" if is_c else "assembly")
    return statuses


def map_sections(text):
    """Read linked GNU ld input sections, excluding discarded input sections."""
    marker = "Linker script and memory map"
    if marker not in text:
        raise ValueError("unrecognized linker map")
    # GNU ld wraps long section names onto their own line.
    return [(section, int(address, 16), int(size, 16), obj)
            for section, address, size, obj in re.findall(
                r"^[ \t]+(\.\S+)\s+(0x[0-9a-fA-F]+)\s+(0x[0-9a-fA-F]+)"
                r"[ \t]+(\S+\.o)[ \t]*$", text.split(marker, 1)[1], re.M)]


def object_source(root, obj):
    """Mirror the Makefile's src/*.o and asm/*.o rules, including assembly TUs."""
    path = PurePosixPath(obj)
    if path.is_absolute() or ".." in path.parts or path.suffix != ".o":
        raise ValueError("invalid TU object path: " + obj)
    c_source = ("src/" + obj[4:] if obj.startswith("asm/") else obj)[:-2] + ".c"
    source = c_source if (root / c_source).is_file() else obj[:-2] + ".s"
    if not (root / source).is_file() or source.startswith("src/non_matching/"):
        raise ValueError("missing production TU source: " + source)
    return source


def capture_units(root, manifest, domains, definitions):
    """Join original addresses to input objects using linker maps and ELF symbols."""
    maps, objects, artifacts, units = {}, {}, {}, {}

    def read_object(obj):
        if obj not in objects:
            # Resolve through the source rule first to reject invalid object paths.
            object_source(root, obj)
            artifacts[obj] = digest(root / obj)
            objects[obj] = symbol_records(root / obj)
        return objects[obj]

    for f in manifest["functions"]:
        domain = f["domain"]
        linked = domains[domain].get(f["address"], [])
        if not linked:
            raise ValueError("unresolved original address: " + f["id"])
        aliases = {record["name"] for record in linked}
        candidates = []
        if domain.startswith("common:"):
            # These relocatable modules are included in several overlays; the
            # original census owns them once, at their section-relative offsets.
            obj = domain_artifact(root, domain).relative_to(root).as_posix()
            for record in read_object(obj).get(f["address"], []):
                if record["name"] in aliases:
                    candidates.append((obj, f["address"], record["section"], None))
        else:
            if domain not in maps:
                name = ("stage1.map" if domain == "rom" else
                        "overlays/" + domain.split(":")[1] + "/overlay.map")
                artifacts[name] = digest(root / name)
                maps[domain] = map_sections((root / name).read_text())
            address = f["address"]
            if domain == "rom" and any(record["section"] == "rom_770" for record in linked):
                address = address - 0x08000770 + 0x03000000
            for section, start, size, obj in maps[domain]:
                if start <= address < start + size:
                    candidates.append((obj, address - start, section, address))
        owners = {}
        for obj, offset, section, virtual_address in candidates:
            names = {record["name"] for record in read_object(obj).get(offset, [])
                     if record["section"] == section} & aliases
            if names:
                owners[(obj, offset, section, virtual_address)] = names
        if len(owners) != 1:
            raise ValueError("missing/ambiguous TU ownership: " + f["id"])
        (obj, offset, section, virtual_address), names = next(iter(owners.items()))
        source = object_source(root, obj)
        active_names = names & definitions.get(source, {}).keys()
        if len(active_names) > 1:
            raise ValueError("ambiguous C ownership in TU: " + f["id"])
        name = (next(iter(active_names)) if active_names else
                f["original_name"] if f["original_name"] in names else sorted(names)[0])
        entry = dict(name=name, address=offset, section=section)
        if virtual_address is not None:
            entry["virtual_address"] = virtual_address
        unit = units.setdefault(source, dict(object=obj, functions={}))
        if unit["object"] != obj:
            raise ValueError("source built into multiple TU objects: " + source)
        unit["functions"][f["id"]] = entry
    return units, artifacts


def validate_units(baseline, snapshot, inputs):
    units = snapshot.get("units")
    if not isinstance(units, dict) or not units:
        raise ValueError("snapshot has no TU inventory; regenerate the snapshot")
    seen, objects = set(), set()
    for source, unit in units.items():
        if (source not in inputs or PurePosixPath(source).suffix not in {".c", ".s"}
                or source.startswith("src/non_matching/")):
            raise ValueError("TU source is not a fingerprinted production input: " + source)
        obj = unit["object"]
        path = PurePosixPath(obj)
        if (path.is_absolute() or ".." in path.parts or path.suffix != ".o"
                or obj in objects):
            raise ValueError("invalid/duplicate TU object: " + obj)
        expected = {source[:-2] + ".o"}
        if source.startswith("src/") and source.endswith(".c"):
            expected.add("asm/" + source[4:-2] + ".o")
        if obj not in expected:
            raise ValueError("TU object/source mismatch: " + source)
        objects.add(obj)
        functions = unit["functions"]
        if not isinstance(functions, dict) or not functions:
            raise ValueError("empty TU: " + source)
        names = set()
        for identity, entry in functions.items():
            if identity not in baseline["sizes"] or identity in seen:
                raise ValueError("duplicate/unknown TU function: " + identity)
            seen.add(identity)
            name, address, section = entry["name"], entry["address"], entry["section"]
            if (not isinstance(name, str) or not name or name in names
                    or type(address) is not int or address < 0
                    or not isinstance(section, str) or not section.startswith(".")):
                raise ValueError("invalid TU function metadata: " + identity)
            names.add(name)
            if "virtual_address" in entry and (
                    type(entry["virtual_address"]) is not int or entry["virtual_address"] < 0):
                raise ValueError("invalid TU virtual address: " + identity)
    if seen != set(baseline["sizes"]):
        raise ValueError("TU inventory must cover every original identity exactly once")


def installed_tools(root):
    manifest_path = root / "tools/gcc296/build-manifest.json"
    manifest = load(manifest_path)
    for name, expected in manifest["artifacts"].items():
        path = root / "tools/gcc296" / Path(name).name
        if digest(path) != expected:
            raise ValueError("installed GCC binary differs from provenance: " + name)
    # old_agbcc has no manifest; record its actual binary and installed headers.
    paths = [manifest_path, *sorted((root / "tools/gcc296").glob("*")),
             *sorted((root / "tools/agbcc").rglob("*"))]
    hashes = {p.relative_to(root).as_posix(): digest(p) for p in paths if p.is_file()}
    for name in ["arm-none-eabi-as", "arm-none-eabi-ld", "arm-none-eabi-objcopy", "gcc", "make"]:
        path = shutil.which(name)
        if not path:
            raise ValueError("missing build tool: " + name)
        hashes[name] = digest(path)
    return dict(gcc_manifest_sha256=digest(manifest_path),
                gcc_revision=manifest.get("revision"), gcc_dirty=manifest.get("dirty"),
                binaries_and_headers=hashes)


def capture(root, output):
    manifest, baseline = metadata(root)
    before = source_inputs(root)
    tools_before = installed_tools(root)
    work = root / ".progress"
    work.mkdir(exist_ok=True)
    run = Path(tempfile.mkdtemp(prefix="verification-", dir=work))
    print("Verification log:", run / "build.log", flush=True)
    with (run / "build.log").open("w") as log:
        overlays = run_gate(root, log)
    domains, allowed = {}, {}
    for domain in sorted({f["domain"] for f in manifest["functions"]}):
        domains[domain] = symbol_records(domain_artifact(root, domain))
        allowed[domain] = linked_sources(root, domain)
    artifacts = {domain_artifact(root, domain).relative_to(root).as_posix():
                 digest(domain_artifact(root, domain)) for domain in domains}
    stamps = {p.name: digest(p) for p in sorted((root / ".build").glob("*.stamp"))}
    definitions = {}
    sources = sorted(set().union(*allowed.values()))
    for source in sources:
        if (root / source).is_file() and not source.startswith("src/non_matching/"):
            definitions[source] = active_definitions(root, source)
    registered = {tuple(line.split("#", 1)[0].split()) for line in
                  (root / "fakematch.txt").read_text().splitlines() if line.split("#", 1)[0].strip()}
    if any(len(row) != 2 for row in registered):
        raise ValueError("malformed fakematch registry")
    units, tu_artifacts = capture_units(root, manifest, domains, definitions)
    statuses = classify(units, definitions, registered)
    artifacts.update(tu_artifacts)
    if source_inputs(root) != before or installed_tools(root) != tools_before:
        raise ValueError("inputs changed during verification; snapshot not published")
    if any(digest(root / name) != sha for name, sha in artifacts.items()):
        raise ValueError("linked artifacts changed during capture")
    if {p.name: digest(p) for p in (root / ".build").glob("*.stamp")} != stamps:
        raise ValueError("build contracts changed during capture")
    verify_outputs(root)
    snapshot = dict(schema=2, policy=POLICY, source_fingerprint=fingerprint(before),
                    input_count=len(before), baseline_sha256=digest(root / BASELINE),
                    functions=statuses, units=units,
                    verification=dict(rom_sha1=ROM_SHA1, overlays=overlays,
                                      artifacts=artifacts, build_stamps=stamps,
                                      gate="make -j1 clean && make -j1 compare",
                                      toolchain=tools_before))
    validate_snapshot(manifest, baseline, snapshot, before, digest(root / BASELINE))
    write_json(output, snapshot)
    print("Snapshot:", output, "Statuses:", dict(Counter(statuses.values())), flush=True)


def validate_snapshot(manifest, baseline, snapshot, inputs, baseline_sha):
    validate_baseline(manifest, baseline)
    if snapshot.get("schema") != 2 or snapshot.get("policy") != POLICY:
        raise ValueError("unsupported snapshot schema/policy")
    if snapshot.get("baseline_sha256") != baseline_sha:
        raise ValueError("snapshot baseline changed")
    if (snapshot.get("source_fingerprint") != fingerprint(inputs)
            or snapshot.get("input_count") != len(inputs)):
        raise ValueError("stale progress snapshot; run python3 tools/decomp_progress.py snapshot after source changes")
    statuses = snapshot.get("functions", {})
    if set(statuses) != set(baseline["sizes"]) or not set(statuses.values()) <= STATUSES:
        raise ValueError("snapshot must classify every original identity exactly once")
    validate_units(baseline, snapshot, inputs)
    verification = snapshot.get("verification", {})
    overlays = verification.get("overlays", {})
    expected_overlays = {f["domain"].split(":")[1] for f in manifest["functions"]
                         if f["domain"].startswith("overlay:")}
    if (not isinstance(overlays, dict) or not expected_overlays <= set(overlays)
            or any(not isinstance(value, str) or not re.fullmatch(r"[0-9a-f]{64}", value)
                   for value in overlays.values())):
        raise ValueError("invalid overlay verification metadata")
    if (verification.get("rom_sha1") != ROM_SHA1 or len(verification.get("overlays", {})) != 96
            or verification.get("gate") != "make -j1 clean && make -j1 compare"):
        raise ValueError("snapshot lacks complete ROM/overlay verification metadata")


def measures(baseline, snapshot, identities):
    sizes, statuses = baseline["sizes"], snapshot["functions"]
    identities = list(identities)
    total = sum(sizes[key] for key in identities)
    matched = sum(sizes[key] for key in identities if statuses[key] == "c")
    functions = sum(statuses[key] == "c" for key in identities)
    return {"total_code": str(total), "matched_code": str(matched),
            "matched_code_percent": 100.0 * matched / total,
            "total_functions": len(identities), "matched_functions": functions,
            "matched_functions_percent": 100.0 * functions / len(identities)}


def summary(baseline, snapshot):
    return {"version": 2, "measures": measures(baseline, snapshot, baseline["sizes"])}


def unit_report(baseline, snapshot):
    report = summary(baseline, snapshot)
    units = []
    for source, unit in sorted(snapshot["units"].items()):
        stats = measures(baseline, snapshot, unit["functions"])
        # decomp.dev colors by fuzzy_match_percent. This conservative score grants
        # only 0/100 per function, weighted by original bytes; no partial credit.
        stats["fuzzy_match_percent"] = stats["matched_code_percent"]
        functions = []
        for identity, entry in sorted(unit["functions"].items()):
            function = dict(name=entry["name"], size=str(baseline["sizes"][identity]),
                            address=str(entry["address"]),
                            fuzzy_match_percent=100.0 if snapshot["functions"][identity] == "c" else 0.0)
            if "virtual_address" in entry:
                function["metadata"] = dict(virtual_address=str(entry["virtual_address"]))
            functions.append(function)
        units.append(dict(name=source, metadata=dict(source_path=source),
                          measures=stats, functions=functions))
    report["units"] = units
    report["measures"]["total_units"] = len(units)
    report["measures"]["fuzzy_match_percent"] = report["measures"]["matched_code_percent"]
    return report


def export(root, output=None):
    manifest, baseline = metadata(root)
    snapshot = load(root / SNAPSHOT)
    validate_snapshot(manifest, baseline, snapshot, source_inputs(root), digest(root / BASELINE))
    report = unit_report(baseline, snapshot)
    if output:
        write_json(output, report)
    print(json.dumps({"version": report["version"], "measures": report["measures"]}, indent=2))
    return report


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("command", choices=["baseline", "snapshot", "check", "export"])
    ap.add_argument("--output", type=Path, help="alternate baseline/snapshot output, or report output")
    args = ap.parse_args()
    try:
        if args.command == "baseline":
            baseline_capture(ROOT, args.output or ROOT / BASELINE)
        elif args.command == "snapshot":
            capture(ROOT, args.output or ROOT / SNAPSHOT)
        elif args.command == "check":
            if args.output:
                raise ValueError("check does not write output")
            export(ROOT)
        else:
            export(ROOT, args.output or ROOT / "report.json")
    except (OSError, ValueError, KeyError, TypeError, subprocess.SubprocessError) as exc:
        print("decomp.dev progress: " + str(exc), file=sys.stderr)
        if getattr(exc, "stderr", None):
            print(exc.stderr, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
