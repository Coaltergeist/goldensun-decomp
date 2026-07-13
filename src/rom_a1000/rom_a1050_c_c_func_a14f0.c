extern int __divsi3(int numerator, int denominator);
extern void _Func_801e9d4(int value, int digits, int arg2, int x, int arg4);

void Func_80a14f0(int value, int arg1, int x, int arg3)
{
    register int original asm("r7");
    register int savedArg1 asm("r10");
    register int savedX asm("r6");
    register int savedArg3 asm("r8");
    register int digits asm("r5");
    register int current asm("r0");

    asm volatile("mov r7, r0\n\t"
                 "mov r10, r1\n\t"
                 "mov r6, r2\n\t"
                 "mov r8, r3"
                 : "=r"(original), "=r"(savedArg1), "=r"(savedX),
                   "=r"(savedArg3), "=r"(current));
    digits = 1;
    while (digits <= 15) {
        current = __divsi3(current, 10);
        if (current <= 9)
            break;
        digits++;
    }
    digits++;
    savedX -= digits * 8;
    _Func_801e9d4(original, digits, savedArg1, savedX, savedArg3);
}
