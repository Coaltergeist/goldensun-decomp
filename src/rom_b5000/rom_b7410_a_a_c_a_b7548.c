#include "gba/types.h"

extern u8 *iwram_3001e74;
extern void Func_80b7424(u16 *ids, int count, int *x, int *y);
extern u8 *GetBattleActor(int actor);

int Func_80b7548(void)
{
    register u8 *units asm("r9");
    register int count asm("r6");
    register int firstId asm("r3");
    register u16 *ids asm("r0");
    register int *xOut asm("r10");
    register int *yOut asm("r8");

    asm volatile (
        "ldr r3, =iwram_3001e74\n\t"
        "ldr r2, [r3]\n\t"
        "mov r3, #0x64\n\t"
        "add r2, #2\n\t"
        "ldrsh r3, [r2, r3]\n\t"
        "sub sp, #0x4c\n\t"
        "mov r6, #0\n\t"
        "mov r9, r2"
        : "=r" (units), "=r" (count), "=r" (firstId) : : "r2", "memory");

    if (firstId != 0xff) {
        register u16 *idBase asm("r5");
        register int destOffset asm("r4");
        register int sourceOffset asm("r2");
        register u8 *scan asm("r1");
        asm volatile ("add r0, sp, #0x30\n\tmov r5, r0\n\tmov r4, #0\n\tmov r2, #0x64\n\tmov r1, r9"
                      : "=r" (ids), "=r" (idBase), "=r" (destOffset), "=r" (sourceOffset), "=r" (scan)
                      : "r" (units));
        do {
            register int next asm("r3");
            asm volatile (
                "ldrh r3, [r1, r2]\n\t"
                "add r6, #1\n\t"
                "strh r3, [r4, r5]\n\t"
                "add r2, #2\n\t"
                "add r4, #2"
                : "+r" (count), "+r" (sourceOffset), "+r" (destOffset)
                : "r" (scan), "r" (idBase) : "r3", "memory");
            if (count > 5)
                break;
            asm volatile ("ldrsh r3, [r1, r2]" : "=r" (next) : "r" (scan), "r" (sourceOffset) : "memory");
            if (next == 0xff)
                break;
        } while (1);
    } else {
        asm volatile ("add r0, sp, #0x30" : "=r" (ids));
    }

    asm volatile (
        "add r1, sp, #0x18\n\t"
        "mov r10, r1\n\t"
        "mov r8, sp"
        : "=r" (xOut), "=r" (yOut) : : "r1");
    Func_80b7424(ids, count, xOut, yOut);

    if (count > 0) {
        register int resultOffset asm("r5") = 0;
        register int unitOffset asm("r7") = 0x64;
        do {
            register int actorId asm("r0");
            register u8 *actor asm("r0");
            asm volatile ("mov r2, r9\n\tldrsh r0, [r2, r7]"
                          : "=r" (actorId) : "r" (units), "r" (unitOffset) : "r2", "memory");
            if (actorId != 0xfe) {
                actor = GetBattleActor(actorId);
                asm volatile (
                    "mov r1, r10\n\t"
                    "ldr r3, [r5, r1]\n\t"
                    "lsl r3, #16\n\t"
                    "str r3, [r0, #0xc]\n\t"
                    "mov r2, r8\n\t"
                    "ldr r3, [r5, r2]\n\t"
                    "lsl r3, #16\n\t"
                    "str r3, [r0, #0x10]"
                    : : "r" (actor), "r" (xOut), "r" (yOut), "r" (resultOffset)
                    : "r1", "r2", "r3", "memory");
            }
            count--;
            resultOffset += 4;
            unitOffset += 2;
        } while (count != 0);
    }

    asm volatile ("add sp, #0x4c");
}
