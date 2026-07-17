#!/bin/sh
# Invoke the matching compiler (arm-elf-gcc 2.96-20000731, 32-bit Linux
# binary; see tools/get-compiler.sh). Runs natively when the host can
# execute it, otherwise through Docker with linux/386 emulation.
set -e
root="$(cd "$(dirname "$0")/.." && pwd)"
prebuilt_rel=tools/camelot-gcc/usr/local/bin/arm-elf-gcc
installed_rel=tools/gcc296/xgcc
native_rel=../camelot-gcc/stage_exec/gcc296/xgcc

# Prefer the approved native Apple-Silicon build when the sibling compiler
# checkout is present.  The bundled fallbacks are 32-bit Linux binaries.
if [ -x "$root/$native_rel" ]; then
	 exec "$root/$native_rel" -B"$root/../camelot-gcc/stage_exec/gcc296/" "$@"
fi

if [ -e "$root/$prebuilt_rel" ]; then
	gcc_rel=$prebuilt_rel
	prefix=
elif [ -e "$root/$installed_rel" ]; then
	gcc_rel=$installed_rel
	prefix=tools/gcc296/
else
	echo "$0: no GCC 2.96 install found; see INSTALL.md or run tools/get-compiler.sh" >&2
	exit 1
fi

if "$root/$gcc_rel" --version >/dev/null 2>&1; then
	if [ -n "$prefix" ]; then
		exec "$root/$gcc_rel" -B"$root/$prefix" "$@"
	fi
	exec "$root/$gcc_rel" "$@"
fi

if [ -n "$prefix" ]; then
	exec docker run --rm --platform linux/386 -v "$root:/work" -w /work \
		debian:bookworm-slim "$gcc_rel" -B"$prefix" "$@"
fi

exec docker run --rm --platform linux/386 -v "$root:/work" -w /work \
	debian:bookworm-slim "$gcc_rel" "$@"
