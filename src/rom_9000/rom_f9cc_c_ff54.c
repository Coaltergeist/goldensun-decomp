typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 gBuffer[];
extern u8 ewram_2020000[];
extern u8 ewram_2020004[];

void UpdateScreenEdge_H(s32 param1, s32 param2, s32 param3)
{
    register s32 p1 asm("r0") = param1;
    register s32 p2 asm("r1") = param2;
    register s32 p3 asm("r2") = param3;
    register s32 fixedCol asm("r7");

    asm volatile(
        "ldr r3, =0x6002800\n\t"
        "lsl r0, r0, #11\n\t"
        "add r3, r3, r0\n\t"
        "mov r14, r3\n\t"
        "lsr r3, r2, #31\n\t"
        "add r3, r2, r3\n\t"
        "mov r4, #0x7f\n\t"
        "asr r3, r3, #1\n\t"
        "and r3, r3, r4\n\t"
        "lsl r6, r3, #7\n\t"
        "lsr r3, r1, #31\n\t"
        "mov r0, #0x1e\n\t"
        "add r3, r1, r3\n\t"
        "and r2, r2, r0\n\t"
        "asr r7, r3, #1\n\t"
        "mov r9, r1\n\t"
        "lsl r5, r2, #5\n\t"
        "and r7, r7, r4\n\t"
        "mov r2, #1\n\t"
        "mov r4, r9\n\t"
        "and r4, r4, r0\n\t"
        "mov r12, r2\n\t"
        "mov r3, r12\n\t"
        "mov r9, r4\n\t"
        "mov r2, #0xf0\n\t"
        "mov r4, #0xfe\n\t"
        "and r3, r3, r1\n\t"
        "lsl r4, r4, #6\n\t"
        "lsl r2, r2, #2\n\t"
        "mov r12, r3\n\t"
        "mov r0, #0\n\t"
        "mov r10, r4\n\t"
        "mov r8, r2\n\t"
    "1:\n\t"
        "add r3, r6, r7\n\t"
        "ldr r4, =gBuffer\n\t"
        "lsl r3, r3, #2\n\t"
        "add r3, r3, r4\n\t"
        "ldr r1, [r3]\n\t"
        "lsl r1, r1, #20\n\t"
        "lsr r1, r1, #18\n\t"
        "ldr r3, =ewram_2020000\n\t"
        "add r1, r1, r12\n\t"
        "lsl r1, r1, #1\n\t"
        "mov r4, r9\n\t"
        "add r2, r1, r3\n\t"
        "add r3, r5, r4\n\t"
        "add r3, r3, r12\n\t"
        "ldrh r2, [r2]\n\t"
        "lsl r3, r3, #1\n\t"
        "add r3, r3, r14\n\t"
        "ldr r4, =ewram_2020004\n\t"
        "strh r2, [r3]\n\t"
        "add r2, r1, r4\n\t"
        "ldrh r2, [r2]\n\t"
        "add r3, r3, #0x40\n\t"
        "strh r2, [r3]\n\t"
        "add r6, r6, #0x80\n\t"
        "mov r2, r10\n\t"
        "add r5, r5, #0x40\n\t"
        "mov r3, r8\n\t"
        "add r0, r0, #1\n\t"
        "and r6, r6, r2\n\t"
        "and r5, r5, r3\n\t"
        "cmp r0, #0xa\n\t"
        "bls 1b\n\t"
        : "+r"(p1), "+r"(p2), "+r"(p3), "=r"(fixedCol)
        :
        : "r3", "r4", "r5", "r6", "r8", "r9", "r10", "r12", "r14", "memory"
    );
    asm volatile("" :: "r"(fixedCol));
}
