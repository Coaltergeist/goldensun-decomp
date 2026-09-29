"""ROM-free validation of measured candidate progress."""
import math
import re

from candidate_catalog import catalog, closure, local
from decomp_progress import digest, fingerprint, load

SCORES = "candidate_scores.json"
POLICY = "objdiff-function-scores-original-byte-weights-v1"
VERSION = "3.8.1"
# Official v3.8.1 CLI release assets (Linux, macOS, Windows).
RELEASE_HASHES = {
    "a84dc05de65eb981c97ca85890bbf2cf8e1def8a4ce062144ecc4d0d686a993a",
    "fcde0f3029b4564d7ffb612904232cc2f912dbf1dbea251969c186dbcf204fec",
    "c8290281e82114bcc1a06ff73061110d3902a177822e750337de2537188e358f",
    "98f8275c27900c4fe2248fce3af37617658be49648fa7dbb5b376371f046dfdb",
    "13e2535c252b8ecb6dba76b5aaef0bc03c6e36460c739fe5ac35af16d898501e",
    "ef51c4bab8aeded0ccaa039921266babf26e67f84e406f64e77d92f4076932d1",
    "c5faf4225a700ef6f4f1b1c511b3ab7029162af32b008183c001d1b0a5498c16",
    "f2a8865f3b928dc412e4f633626fe138edc79077d6fcf23e63b7cfe649c154b4",
}
# Match objdiff report generation settings; these are similarity scores only.
CONFIG = ["function_reloc_diffs=none", "combine_data_sections=true",
          "combine_text_sections=true", "ppc_calculate_pool_relocations=false"]


def candidate_inputs(root):
    result = {}
    for path in sorted((root / "src/non_matching").rglob("*")):
        if path.suffix in {".c", ".h"} or path.name == "candidates.json":
            name = path.relative_to(root).as_posix()
            result[name] = digest(local(root, name))
    return result


def percent(value):
    if (type(value) not in (int, float) or not math.isfinite(value)
            or not 0 <= value <= 100):
        raise ValueError("invalid candidate match percentage")
    return float(value)


def function_score(diff, name):
    left, right = diff["left"]["symbols"], diff["right"]["symbols"]
    matches = [s for s in left if s["name"] == name]
    if len(matches) != 1:
        raise ValueError("missing/ambiguous original symbol: " + name)
    target = matches[0]
    index = target.get("target_symbol")
    if type(index) is not int or not 0 <= index < len(right):
        raise ValueError("unmapped candidate symbol: " + name)
    candidate = right[index]
    for symbol in (target, candidate):
        if (symbol["name"] != name or symbol.get("kind") != "SYMBOL_FUNCTION"
                or symbol.get("flags", {}).get("hidden") or int(symbol.get("size", 0)) <= 0):
            raise ValueError("invalid compared function: " + name)
    return dict(fuzzy_match_percent=percent(target.get("match_percent", 0)),
                target_size=int(target["size"]), candidate_size=int(candidate["size"]))


def validate_scores(root, snapshot, saved, units=None):
    if (saved.get("schema") != 1 or saved.get("policy") != POLICY
            or saved.get("scorer", {}).get("version") != VERSION
            or saved["scorer"].get("sha256") not in RELEASE_HASHES
            or saved["scorer"].get("config") != CONFIG):
        raise ValueError("unsupported candidate score schema/scorer")
    if (saved.get("progress_sha256") != digest(root / "progress_snapshot.json")
            or saved.get("candidate_fingerprint") != fingerprint(candidate_inputs(root))):
        raise ValueError("stale candidate scores; run python3 tools/score_candidates.py")
    units = catalog(root) if units is None else units
    expected = {entry["id"]: (unit, name, entry)
                for unit in units.values() for name, entry in unit["functions"].items()}
    if set(saved.get("functions", {})) != set(expected):
        raise ValueError("scores must cover every registered candidate exactly once")
    scores = {}
    for identity, row in saved["functions"].items():
        unit, name, entry = expected[identity]
        if (snapshot["functions"].get(identity) != "assembly"
                or row.get("source") != unit["source"] or row.get("name") != name
                or row.get("candidate") != entry["candidate"]
                or row.get("evaluated_with") != closure(unit, [name])):
            raise ValueError("candidate score identity/context mismatch: " + identity)
        if row.get("reference_sha256") != snapshot["verification"]["artifacts"].get(unit["object"]):
            raise ValueError("candidate reference differs from verified snapshot: " + identity)
        if not re.fullmatch(r"[0-9a-f]{64}", row.get("object_sha256", "")):
            raise ValueError("invalid scored object hash: " + identity)
        if any(type(row.get(k)) is not int or row[k] <= 0
               for k in ("target_size", "candidate_size")):
            raise ValueError("invalid compared function size: " + identity)
        scores[identity] = percent(row["fuzzy_match_percent"])
    return scores


def read_scores(root, snapshot):
    path = root / SCORES
    if not path.is_file():
        raise ValueError("missing candidate_scores.json; run python3 tools/score_candidates.py")
    return validate_scores(root, snapshot, load(path))
