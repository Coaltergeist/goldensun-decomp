#!/usr/bin/env bash
# Wrapper that runs asm-differ inside its venv from the goldensun project root.
# Usage: ./run-diff.sh <symbol_or_address> [extra diff.py flags]
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
exec "$DIR/tools/asm-differ/.venv/bin/python3" "$DIR/tools/asm-differ/diff.py" "$@"
