typedef unsigned int u32;

extern const u32 MoveRangeMasks[] asm(".Laf23c");
extern void Func_80008d8(void *destination, u32 size, u32 value);

void LoadMoveRangeIcons(void)
{
    register int icon asm("r7");
    register int row asm("r6");
    register int column asm("r4");
    register u32 *tile asm("r5");
    register u32 *word asm("r0");
    register const u32 *masks asm("r8");
    register void (*fill)(void *, u32, u32) asm("r10");

    asm volatile(
        "ldr r2, =.Laf23c\n\t"
        "ldr r3, =Func_80008d8\n\t"
        "mov r7, #0\n\t"
        "mov r8, r2\n\t"
        "mov r10, r3"
        : "=r" (icon), "=r" (masks), "=r" (fill)
        :
        : "r2", "r3");

    do {
        asm volatile(
            "lsl r3, r7, #1\n\t"
            "add r3, r7\n\t"
            "ldr r2, =0x06005000\n\t"
            "lsl r3, #7\n\t"
            "mov r6, #0\n\t"
            "add r5, r3, r2"
            : "=r" (tile), "=r" (row)
            : "r" (icon)
            : "r2", "r3");

        do {
            asm volatile(
                "mov r0, r5\n\t"
                "mov r1, #0x40\n\t"
                "ldr r2, =0x44444444\n\t"
                "bl _call_via_r10"
                :
                : "r" (tile), "r" (fill)
                : "r0", "r1", "r2", "r3", "cc", "memory");
            column = 1;
            asm volatile("" : "+r" (column));
            word = tile + 1;
            do {
                int maskRow = row;

                if (icon == 1 && column <= 1)
                    continue;
                if (icon == 0 && row > column - 2) {
                    maskRow = column - 2;
                    if (maskRow < 0) {
                        register int zero asm("r1");
                        asm volatile("mov r1, #0" : "=r" (zero));
                        maskRow = zero;
                    }
                }
                {
                    register int maskOffset asm("r1") = maskRow << 3;
                    register u32 maskValue asm("r3");
                    register u32 secondMask asm("r1");
                    register u32 wordValue asm("r2");
                    asm volatile(
                        "mov r3, r8\n\t"
                        "ldr r3, [r3, r1]\n\t"
                        "ldr r2, [r0]"
                        : "=r" (maskValue), "=r" (wordValue),
                          "+r" (maskOffset)
                        : "r" (masks), "r" (word));
                    wordValue ^= maskValue;
                    *word = wordValue;
                    asm volatile(
                        "add r1, #4\n\t"
                        "mov r3, r8\n\t"
                        "ldr r2, [r0, #0x20]\n\t"
                        "ldr r1, [r3, r1]"
                        : "+r" (maskOffset), "=r" (secondMask),
                          "=r" (wordValue)
                        : "r" (masks), "r" (word));
                    wordValue ^= secondMask;
                    word[8] = wordValue;
                }
            } while (++column <= 7 && (word++, 1));
            row++;
            tile += 0x10;
        } while (row <= 5);
        icon++;
    } while (icon <= 1);
}
