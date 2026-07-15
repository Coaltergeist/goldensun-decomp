typedef unsigned char u8;

extern u8 *iwram_3001f2c;
extern void _Sprite_SetAnim(void *sprite, int animation);
extern int _Func_807845c(int value, int mode);

void Func_80b11c4(int enabled, int selected, int mode)
{
    register u8 *state asm("r7") = iwram_3001f2c;
    register int selectedIndex asm("r11") = selected;
    register int displayMode asm("r9") = mode;
    register int index asm("r6");
    register int valueOffset asm("r8");
    register u8 *valueBase asm("r10");
    register u8 *spriteEntry asm("r5");
    register int count asm("r3");

    if (enabled == 0)
        return;

    asm volatile(
        "ldr r1, =0x3a7\n\t"
        "add r3, r7, r1\n\t"
        "ldrb r3, [r3]\n\t"
        "lsl r3, #24\n\t"
        "asr r3, #24\n\t"
        "mov r6, #0"
        : "=r"(count), "=r"(index)
        : "r"(state)
        : "r1");
    if (index >= count)
        return;

    asm volatile(
        "mov r3, #0xdb\n\t"
        "mov r1, #0x8a\n\t"
        "add r2, r7, #2\n\t"
        "lsl r3, #2\n\t"
        "lsl r1, #1\n\t"
        "mov r10, r2\n\t"
        "mov r8, r3\n\t"
        "add r5, r7, r1"
        : "=r"(valueBase), "=r"(valueOffset), "=r"(spriteEntry)
        : "r"(state)
        : "r1", "r2", "r3");

    do {
        if (index == selectedIndex)
            _Sprite_SetAnim(*(void **)spriteEntry, 0x1e);
        else
            _Sprite_SetAnim(*(void **)spriteEntry, 1);

        *(int *)(spriteEntry + 0x40) = 0x10000;
        {
            register int entryValue asm("r0");
            asm volatile(
                "mov r1, r8\n\t"
                "mov r2, r10\n\t"
                "ldrsh r0, [r2, r1]"
                : "=r"(entryValue)
                : "r"(valueOffset), "r"(valueBase)
                : "r1", "r2");
            if (_Func_807845c(entryValue, displayMode) == 0)
                asm volatile(
                    "ldr r3, =0xcccc\n\t"
                    "str r3, [r5, #0x40]"
                    :
                    : "r"(spriteEntry)
                    : "r3");
        }

        asm volatile(
            "ldr r1, =0x3a7\n\t"
            "add r3, r7, r1\n\t"
            "ldrb r3, [r3]\n\t"
            "lsl r3, #24\n\t"
            "asr r3, #24\n\t"
            "mov r2, #2\n\t"
            "add r6, #1\n\t"
            "add r8, r2\n\t"
            "add r5, #4"
            : "+r"(index), "+r"(valueOffset), "+r"(spriteEntry), "=r"(count)
            : "r"(state)
            : "r1", "r2");
    } while (index < count);
}
