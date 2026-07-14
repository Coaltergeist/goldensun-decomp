typedef signed short s16;
typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001e74;
extern void _PreloadSpriteGFX(int slot, int arg1, int arg2, int arg3);

int Func_80b6e30(int value)
{
    register u8 *base asm("r7");
    register int saved_value asm("r8");
    register int index asm("r6");
    register int zero asm("r10");
    register int offset asm("r5");
    register int literal asm("r2");

    asm volatile (
        "ldr r3, 3f\n"
        "ldr r2, 1f\n"
        "ldr r7, [r3]\n"
        "mov r8, %6\n"
        "mov r6, #0\n"
        "mov r10, r2\n"
        "mov r5, #4"
        : "=r"(base), "=r"(saved_value), "=r"(index), "=r"(zero),
          "=r"(offset), "=r"(literal)
        : "r"(value)
        : "r3"
    );
    do {
        if (*(s16 *)((u32)offset + (u32)base) == saved_value) {
            register int arg3 asm("r3");
            asm volatile ("mov r3, #0" : "=r"(arg3));
            _PreloadSpriteGFX(index, 0, 0, arg3);
            *(s16 *)((u32)offset + (u32)base) = zero;
            asm volatile (
                "b 2f\n"
                ".align 2, 0\n"
                "1: .word 0\n"
                "3: .word iwram_3001e74\n"
                "2:"
            );
        }
        index++;
        offset += 2;
    } while (index <= 5);
}
