#!/usr/bin/env bash
# Wrapper that runs asm-differ inside its venv from the goldensun project root.
# Usage: bash ./run-diff.sh <symbol_or_address> [extra diff.py flags]
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"
if [[ ! -x tools/asm-differ/.venv/bin/python3 || ! -f tools/asm-differ/diff.py ]]; then
    echo "asm-differ is not installed. Follow the diff setup in INSTALL.md." >&2
    exit 2
fi
exec "$DIR/tools/asm-differ/.venv/bin/python3" "$DIR/tools/asm-differ/diff.py" "$@"
