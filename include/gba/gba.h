#ifndef GUARD_GBA_GBA_H
#define GUARD_GBA_GBA_H

// Umbrella header for the GBA hardware environment. Currently scoped to what
// the stock m4a ("Sappy") engine needs; extend as more hardware-facing code
// is decompiled.

#include "gba/types.h"

/* GBA pointers are 32-bit.  Keep the freestanding SDK build host-independent. */
typedef s32 intptr_t;
typedef u32 uintptr_t;

#include "gba/defines.h"
#include "gba/io.h"
#include "gba/syscall.h"
#include "gba/cpuset_macros.h"

#endif // GUARD_GBA_GBA_H
