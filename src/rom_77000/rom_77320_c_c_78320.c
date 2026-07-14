typedef signed short s16;
typedef signed int s32;

extern s32 __divsi3(s32 numerator, s32 denominator);
extern s32 Div_NoArgs(void) asm("__divsi3");

void Func_8078320(void *object_arg, s32 requested)
{
    register unsigned char *object asm("r5") = object_arg;
    s32 maximum = *(s16 *)(object + 0x36);
    register s32 clamped asm("r2") = maximum;
    register s32 value asm("r3");
    s32 ratio;
    s32 numerator;
    s32 denominator;

    if (requested <= maximum) {
        clamped = 0;
        if (requested >= 0)
            clamped = requested;
    }
    asm volatile("strh r2, [r5, #58]" : : "r"(clamped), "r"(object) : "memory");

    asm volatile("mov r3, #56\n\t"
                 "ldrsh r0, [r5, r3]\n\t"
                 "lsl r0, r0, #14\n\t"
                 "mov r2, #52\n\t"
                 "ldrsh r1, [r5, r2]"
                 : "=r"(numerator), "=r"(denominator)
                 : "r"(object) : "r2", "r3");
    ratio = Div_NoArgs();
    value = 0x4000;
    if (ratio <= 0x4000) {
        value = 0;
        if (ratio >= 0)
            value = ratio;
    }
    *(s16 *)(object + 0x14) = value;
    if ((s16)value == 0 && *(s16 *)(object + 0x38) != 0) {
        value = 1;
        *(s16 *)(object + 0x14) = value;
    }

    numerator = *(s16 *)(object + 0x3a);
    numerator <<= 14;
    denominator = *(s16 *)(object + 0x36);
    ratio = __divsi3(numerator, denominator);
    value = 0x4000;
    if (ratio <= 0x4000) {
        value = 0;
        if (ratio >= 0)
            value = ratio;
    }
    *(s16 *)(object + 0x16) = value;
    if ((s16)value == 0 && *(s16 *)(object + 0x3a) != 0) {
        value = 1;
        *(s16 *)(object + 0x16) = value;
    }
}
