typedef unsigned char u8;

extern u8 *iwram_3001f2c;
extern void _Sprite_SetAnim(void *sprite, int animation);
extern int Func_80b27b0(int unit_id, int condition);

void Func_80b2e30(int enabled, int selected)
{
    register u8 *state asm("r7") = iwram_3001f2c;
    register int selectedIndex asm("r11") = selected;
    register int category asm("r9");
    register int off asm("r1");
    register int index asm("r6");
    register int valueOffset asm("r8");
    register u8 *valueBase asm("r10");
    register u8 *spriteEntry asm("r5");
    register int count asm("r3");

    asm volatile(
        "ldr r1, =0x3aa\n\t"
        "add r3, r7, r1\n\t"
        "ldrb r3, [r3]\n\t"
        "lsl r3, #24\n\t"
        "asr r3, #24\n\t"
        "mov r9, r3"
        : "=r"(off), "=r"(category)
        : "r"(state)
        : "r3");

    if (enabled == 0)
        return;

    asm volatile(
        "ldr r2, =0x3a7\n\t"
        "add r3, r7, r2\n\t"
        "ldrb r3, [r3]\n\t"
        "lsl r3, #24\n\t"
        "asr r3, #24\n\t"
        "mov r6, #0"
        : "=r"(count), "=r"(index)
        : "r"(state)
        : "r2", "r3");
    if (index >= count)
        return;

    asm volatile(
        "mov r2, #0x8a\n\t"
        "add r3, r7, #2\n\t"
        "sub r1, #0x3e\n\t"
        "lsl r2, #1\n\t"
        "mov r10, r3\n\t"
        "mov r8, r1\n\t"
        "add r5, r7, r2"
        : "=r"(valueBase), "=r"(valueOffset), "=r"(spriteEntry), "+r"(off)
        : "r"(state)
        : "r2", "r3");

    do {
        if (index == selectedIndex)
            _Sprite_SetAnim(*(void **)spriteEntry, 0x1e);
        else
            _Sprite_SetAnim(*(void **)spriteEntry, 1);

        *(int *)(spriteEntry + 0x40) = 0x10000;
        {
            register int entryValue asm("r0");
            asm volatile(
                "mov r2, r8\n\t"
                "mov r3, r10\n\t"
                "ldrsh r0, [r3, r2]"
                : "=r"(entryValue)
                : "r"(valueOffset), "r"(valueBase)
                : "r2", "r3");
            if (Func_80b27b0(entryValue, category) == 0)
                asm volatile(
                    "ldr r3, =0xb333\n\t"
                    "str r3, [r5, #0x40]"
                    :
                    : "r"(spriteEntry)
                    : "r3");
        }

        asm volatile(
            "ldr r1, =0x3a7\n\t"
            "mov r3, #2\n\t"
            "add r8, r3\n\t"
            "add r3, r7, r1\n\t"
            "ldrb r3, [r3]\n\t"
            "lsl r3, #24\n\t"
            "asr r3, #24\n\t"
            "add r6, #1\n\t"
            "add r5, #4"
            : "+r"(index), "+r"(valueOffset), "+r"(spriteEntry), "=r"(count)
            : "r"(state)
            : "r1", "r3");
    } while (index < count);
}
