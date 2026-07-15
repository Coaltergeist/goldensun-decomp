typedef unsigned char u8;
typedef short s16;

extern u8 *iwram_3001f38;
extern void Func_8016478(void *window);
extern void Func_801e7c0(int text, u8 *box, unsigned int x, unsigned int y);
extern void WaitFrames(int frames);
extern void _PlaySound(int sound);
extern u8 WaitFrameTable[] asm(".L373ef");

int Func_80286a0(int menu, int index)
{
    register int menu_r0 asm("r0") = menu;
    register int index_r1 asm("r1") = index;
    register u8 *state asm("r6") = iwram_3001f38;
    register s16 *cursor asm("r5");
    register int step asm("r9");
    register int extra asm("r10");
    register int idx asm("r7");
    register int cur asm("r8");
    register s16 *value asm("r11");

    asm volatile(
        "mov r5, r6\n\t"
        "mov r2, #1\n\t"
        "mov r3, #0xc\n\t"
        "add r5, #0x8c\n\t"
        "mov r7, r1\n\t"
        "mov r9, r2\n\t"
        "mov r10, r3\n\t"
        "strh r0, [r5]\n\t"
        "cmp r7, r0\n\t"
        "bge 1f\n\t"
        "sub r2, #2\n\t"
        "mov r9, r2\n\t"
        "1:\n\t"
        "mov r8, r0\n\t"
        "mov r3, #0x92\n\t"
        "add r3, r6\n\t"
        "mov r11, r3\n\t"
        : "=r"(cursor), "=r"(idx), "=r"(step), "=r"(extra), "=r"(cur), "=r"(value)
        : "r"(state), "r"(menu_r0), "r"(index_r1)
        : "r3", "r2", "cc");

    for (;;) {
        register int text asm("r0");

        Func_8016478(*(void **)(state + 0x78));

        asm volatile(
            "mov r2, r11\n\t"
            "mov r3, #0\n\t"
            "ldrsh r0, [r2, r3]\n\t"
            "cmp r0, #0\n\t"
            "beq 2f\n\t"
            "mov r2, #0\n\t"
            "ldrsh r3, [r5, r2]\n\t"
            "add r0, r3\n\t"
            "b 3f\n\t"
            "2:\n\t"
            "mov r2, #0\n\t"
            "ldrsh r3, [r5, r2]\n\t"
            "add r3, #0x84\n\t"
            "ldrb r2, [r6, r3]\n\t"
            "ldr r3, =0x1f\n\t"
            "add r0, r2, r3\n\t"
            "3:\n\t"
            : "=r"(text)
            : "r"(cursor), "r"(state), "r"(value)
            : "r3", "r2", "cc");

        asm volatile(
            "mov r3, #0\n\t"
            "ldr r1, [r6, #0x78]\n\t"
            "mov r2, #0\n\t"
            "bl Func_801e7c0\n\t"
            :
            : "r"(text), "r"(state)
            : "r0", "r1", "r2", "r3", "r12", "lr", "memory");

        {
            register int frames asm("r0");

            asm volatile(
                "mov r3, #0\n\t"
                "ldrsh r1, [r5, r3]\n\t"
                "sub r3, r1, r7\n\t"
                "ldr r0, =.L373ef\n\t"
                "mov r2, r3\n\t"
                "cmp r3, #0\n\t"
                "bge 1f\n\t"
                "sub r2, r7, r1\n\t"
                "1:\n\t"
                "ldrb r0, [r0, r2]\n\t"
                "add r0, r10\n\t"
                : "=r"(frames)
                : "r"(cursor), "r"(idx), "r"(extra)
                : "r1", "r2", "r3", "cc");
            WaitFrames(frames);
        }

        if (cur == idx)
            break;

        *cursor += step;
        _PlaySound(0x6f);
        asm volatile(
            "mov r2, #0\n\t"
            "mov r10, r2\n\t"
            : "=r"(extra)
            :
            : "r2");
        cur += step;
    }

    WaitFrames(0x30);
    _PlaySound(0x70);
    return idx;
}
