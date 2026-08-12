/* other/sub_8006864.c -- consolidated TU. */
#include "nonmatching.h"

/* FF: void CpuSet(void * src, void * dest, u32 length) */
void CpuSet(void) {
    asm("swi 0xb");
}

/* FF: void SoundBias0(void) */
void SoundBias0(void) {
    asm("mov r0, #0\n\tswi 0x19");
}

/* FF: void SoundBias1(void) */
void SoundBias1(void) {
    asm("mov r0, #1\n\tswi 0x19");
}
