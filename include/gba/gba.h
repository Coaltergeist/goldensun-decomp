#ifndef GUARD_GBA_GBA_H
#define GUARD_GBA_GBA_H

// Umbrella header for the GBA hardware environment. Currently scoped to what
// the stock m4a ("Sappy") engine needs; extend as more hardware-facing code
// is decompiled.

#include "gba/types.h"
#include <stdint.h>   // intptr_t / uintptr_t (m4a); agbcc-only, so kept out of the shared gba/types.h
#include "gba/defines.h"
#include "gba/io.h"
#include "gba/syscall.h"
#include "gba/cpuset_macros.h"

#endif // GUARD_GBA_GBA_H
