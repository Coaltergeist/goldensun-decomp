typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;

typedef struct {
    s16 x;
    s16 y;
} StatCurveEntry;

extern StatCurveEntry Table_89258[] asm(".L89258");

s32 Func_8079b24(s32 a1, s32 a2)
{
    register u8 *base asm("r5");
    register s32 value asm("r6");
    register s32 modeReg asm("r8");
    register s32 count asm("r0");
    register s32 i asm("r1");
    register s32 offset asm("r4");
    s32 hi;
    s32 lo;

    base = (u8 *)Table_89258;
    modeReg = a2;
    hi = *(s16 *)(base + 0);
    value = a1;
    lo = *(s16 *)(base + 16);
    count = 5;

    if (value > hi)
        value = hi;
    else if (value < lo)
        value = lo;

    __asm__ volatile(
        "movs r1, #0\n\t"
        "movs r4, #0\n\t"
        "cmp r1, r0\n\t"
        "bge 3f\n\t"
        "movs r7, #0\n\t"
        "ldrsh r3, [r5, r7]\n\t"
        "cmp r6, r3\n\t"
        "bgt 2f\n\t"
        "mov r12, r5\n\t"
        "movs r2, #0\n\t"
        "1:\n\t"
        "add r1, #1\n\t"
        "add r2, #4\n\t"
        "cmp r1, r0\n\t"
        "bge 4f\n\t"
        "mov r4, r2\n\t"
        "mov r3, r12\n\t"
        "ldrsh r3, [r4, r3]\n\t"
        "mov lr, r3\n\t"
        "cmp r6, lr\n\t"
        "ble 1b\n\t"
        "b 3f\n\t"
        "2:\n\t"
        "movs r4, #0\n\t"
        "b 3f\n\t"
        "4:\n\t"
        "lsl r4, r1, #2\n\t"
        "3:\n\t"
        : "=r"(i), "=r"(offset)
        : "r"(count), "r"(base), "r"(value)
        : "r2", "r3", "r7", "r12", "lr", "cc");

    {
        s32 result;

        if (i == count) {
            register s32 t asm("r3") = offset - 2;
            result = *(s16 *)(base + t);
        } else {
            register s32 t asm("r3");
            register s32 x_prev asm("r1");
            register s32 x_cur asm("r0");
            register s32 y_prev asm("r2");
            s32 y_cur;

            t = offset - 4;
            x_prev = *(s16 *)(base + t);
            x_cur = *(s16 *)(base + offset);
            t = offset - 2;
            y_prev = *(s16 *)(base + t);
            t = offset + 2;
            y_cur = *(s16 *)(base + t);
            x_prev -= x_cur;
            y_prev -= y_cur;
            result = (value - x_cur) * y_prev / x_prev + y_cur;
        }

        if (modeReg != 0) {
            if (modeReg == 1)
                result /= 2;
        }

        return result + 0x100;
    }
}
