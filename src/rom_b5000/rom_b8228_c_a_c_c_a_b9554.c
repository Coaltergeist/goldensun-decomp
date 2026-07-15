typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u16 iwram_3001f64;
extern s32 Func_80063bc(s32, s32);
extern s32 Func_80064f4(void);
extern void WaitFrames(s32);

s32 Func_80b9554(void)
{
    register s32 *ctx asm("r9");
    s32 *stack_copy;
    register s32 **stack_address asm("r3") = &stack_copy;
    register s32 tmp asm("r2");
    register s32 *working asm("r7");
    register s32 timer asm("r5");
    register s32 streak asm("r6");
    s32 result;

    asm volatile ("" : "+r" (stack_address));
    tmp = (s32) ctx;
    asm volatile ("" : "+r" (tmp), "+r" (stack_address));
    *stack_address = (s32 *) tmp;
    asm volatile ("" : "+r" (tmp));
    working = (s32 *) tmp;

    result = Func_80063bc(working[-1], 0x14);
    streak = 0;
    timer = 300;
    if (result == -1)
        return result;

    while (Func_80064f4()) {
        WaitFrames(1);
        timer--;
        if (timer < 0)
            return -1;
        if ((iwram_3001f64 & 3) != 3) {
            if (++streak > 0x18)
                return -1;
        } else {
            streak = 0;
        }
    }

    if (working[-2] == 0)
        goto return_zero;

    result = Func_80063bc(working[-3], working[-2]);
    tmp = -1;
    asm volatile ("" : "+r" (tmp));
    if (result == tmp)
        return result;

    while (Func_80064f4()) {
        WaitFrames(1);
        timer--;
        if (timer < 0)
            return -1;
        if ((iwram_3001f64 & 3) != 3) {
            if (++streak > 0x18)
                return -1;
        } else {
            streak = 0;
        }
    }

return_zero:
    return 0;
}
