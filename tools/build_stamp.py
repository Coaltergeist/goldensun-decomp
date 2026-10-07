"""Invalidate only profiles whose effective settings or selected tools changed."""
import argparse
import hashlib
import json
from pathlib import Path
import build_config as config
import build_deps
import build_paths

ROOT = Path(__file__).resolve().parents[1]

def profile_stamp(root, profile):
    data, _, units = config.load(root)
    members = [u for u in units if u["profile"] == profile]
    if not members:
        raise ValueError("profile has no active units: " + profile)
    resolved = config.settings(root, members[0]["source"])
    values = {k: v for k, v in resolved.items() if k != "unit"}
    hashes = {name: hashlib.sha256((root / name).read_bytes()).hexdigest()
              for name in ("Makefile", *config.IMPLEMENTATION)}
    tools = {name: dict(path=str(path), sha256=hashlib.sha256(path.read_bytes()).hexdigest())
             for name, path in config.tool_files(root, resolved).items()}
    # Membership participates so changing a TU's assigned profile cannot reuse an
    # older destination-profile stamp. Only the two affected groups invalidate.
    text = json.dumps(dict(settings=values, tools=tools, implementation=hashes,
                           units=sorted(({k: u[k] for k in ("id", "source", "object", "profile")} for u in members), key=lambda u: u["id"])), sort_keys=True, indent=2) + "\n"
    build_deps.write_changed(root / build_paths.STAMPS / (profile + ".stamp"), text)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("profile")
    args = parser.parse_args()
    profile_stamp(ROOT, args.profile)
