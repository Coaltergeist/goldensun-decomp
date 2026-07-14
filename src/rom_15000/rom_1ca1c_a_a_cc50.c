typedef signed short s16;
typedef unsigned short u16;

extern int Func_8000888(int value, int scale);

u16 Func_801cc50(const s16 *components, int red_scale,
                 int green_scale, int blue_scale)
{
    register const s16 *component_ptr asm("r5");
    register int green asm("r6");
    register int red asm("r7");
    register int blue asm("r0");
    register int (*scale_component)(int, int) asm("r4");

    __asm__ volatile (
        "mov r5, r0\n\t"
        "mov r6, r2\n\t"
        "mov r2, #0\n\t"
        "ldrsh r0, [r5, r2]\n\t"
        "ldr r4, =Func_8000888\n\t"
        "lsl r0, #16\n\t"
        ".align 2, 0\n\t"
        "mov r12, pc\n\t"
        "bx r4\n\t"
        "asr r7, r0, #16\n\t"
        "mov r2, #2\n\t"
        "ldrsh r0, [r5, r2]\n\t"
        "mov r1, r6\n\t"
        "lsl r0, #16\n\t"
        ".align 2, 0\n\t"
        "mov r12, pc\n\t"
        "bx r4\n\t"
        "asr r6, r0, #16\n\t"
        "mov r2, #4\n\t"
        "ldrsh r0, [r5, r2]\n\t"
        "mov r1, r3\n\t"
        "lsl r0, #16\n\t"
        ".align 2, 0\n\t"
        "mov r12, pc\n\t"
        "bx r4\n\t"
        "asr r0, #16"
        : "=r" (component_ptr), "=r" (green), "=r" (red),
          "=r" (blue), "=r" (scale_component)
        :
        : "r1", "r2", "cc", "memory");

    if (red < 0)
        red = 0;
    if (red > 31)
        red = 31;
    if (green < 0)
        green = 0;
    if (green > 31)
        green = 31;
    if (blue < 0)
        blue = 0;
    if (blue > 31)
        blue = 31;

    {
        register int green_bits asm("r3") = green << 5;
        int packed = (blue << 10) + green_bits;
        __asm__ volatile ("add %0, r7, %0" : "+r" (packed) : "r" (red));
        return packed;
    }
}
