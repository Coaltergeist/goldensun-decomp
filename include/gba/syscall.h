#ifndef GUARD_GBA_SYSCALL_H
#define GUARD_GBA_SYSCALL_H

// BIOS CpuSet / CpuFastSet, as used by gba/cpuset_macros.h. Ported (trimmed)
// from the SA2 decomp's gba/syscall.h.

#define CPU_SET_SRC_FIXED 0x01000000
#define CPU_SET_16BIT     0x00000000
#define CPU_SET_32BIT     0x04000000

#define CPU_FAST_SET_SRC_FIXED 0x01000000

void CpuSet(const void *src, void *dest, u32 control);
void CpuFastSet(const void *src, void *dest, u32 control);

#endif // GUARD_GBA_SYSCALL_H
