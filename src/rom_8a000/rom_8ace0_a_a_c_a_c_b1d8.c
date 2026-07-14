typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;

extern u8 gState[];
extern s16 gRespawnTable[] asm(".L9e1d8");

void UpdateRespawnMap(void)
{
    register s16 *entry asm("r2");
    register int map asm("r6");
    register int submap asm("r5");
    register u16 *respawnMap asm("r4");
    register u16 *respawnSubmap asm("r0");
    register int sentinel asm("r12");
    register u16 value asm("r1");

    asm volatile(
        "ldr r0, =gState\n\t"
        "mov r1, #0xe0\n\t"
        "lsl r1, #1\n\t"
        "add r3, r0, r1\n\t"
        "mov r4, #0xe1\n\t"
        "lsl r4, #1\n\t"
        "mov r2, #0\n\t"
        "ldrsh r6, [r3, r2]\n\t"
        "ldr r2, =.L9e1d8\n\t"
        "add r3, r0, r4\n\t"
        "mov r7, #0\n\t"
        "ldrsh r5, [r3, r7]\n\t"
        "mov r4, #0\n\t"
        "ldrsh r3, [r2, r4]\n\t"
        "mov r4, #1\n\t"
        "neg r4, r4\n\t"
        "ldrh r1, [r2]\n\t"
        "cmp r3, r4\n\t"
        "beq .Lrespawn_end\n\t"
        "mov r7, #0xe2\n\t"
        "mov r3, #0xe3\n\t"
        "lsl r7, #1\n\t"
        "lsl r3, #1\n\t"
        "mov r12, r4\n\t"
        "add r4, r0, r7\n\t"
        "add r0, r3"
        : "=r"(entry), "=r"(map), "=r"(submap),
          "=r"(respawnMap), "=r"(respawnSubmap), "=r"(sentinel),
          "=r"(value)
        :
        : "r3", "r7", "cc", "memory");

    do {
        register int entryMap asm("r3");
        asm volatile(
            "lsl r3, %1, #16\n\t"
            "asr %0, r3, #16"
            : "=r"(entryMap)
            : "r"(value));
        if (entryMap == map) {
            register int entrySubmap asm("r3");
            register int offset asm("r7") = 2;
            asm volatile("ldrsh %0, [%1, %2]"
                         : "=r"(entrySubmap)
                         : "r"(entry), "r"(offset));
            if (entrySubmap == sentinel || entrySubmap == submap) {
                *respawnMap = (u16)entry[2];
                *respawnSubmap = (u16)entry[3];
                break;
            }
        }
        entry += 4;
        {
            register int signedValue asm("r3");
            register int zero asm("r7") = 0;
            asm volatile(
                "ldrsh %0, [%2, %3]\n\t"
                "ldrh %1, [%2]"
                : "=r"(signedValue), "=r"(value)
                : "r"(entry), "r"(zero)
                : "memory");
            if (signedValue == sentinel)
                break;
        }
    } while (1);

    asm volatile(".Lrespawn_end:");
}
