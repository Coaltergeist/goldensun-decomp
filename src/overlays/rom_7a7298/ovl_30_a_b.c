extern int __atan2(int y, int x);

int OvlFunc_921_20080d8(unsigned char *self)
{
    register unsigned char *selfReg asm("r5") = self;
    register unsigned char *target asm("r1");

    asm volatile("" : "+r"(selfReg));
    target = *(unsigned char **)(selfReg + 0x68);
    asm volatile("" : "+r"(selfReg), "+r"(target));
    if (target != 0) {
        register unsigned char *flagByte asm("r0") = self;
        register unsigned int direction asm("r0");
        register int angle asm("r3");
        register int flagValue asm("r2");
        int delta;

        asm volatile("" : "+r"(flagByte), "+r"(target));
        flagByte += 0x5a;
        flagValue = *flagByte;
        asm volatile("" : "+r"(flagByte), "+r"(flagValue));
        angle = 0xfe;
        asm volatile("" : "+r"(flagByte), "+r"(flagValue), "+r"(angle));
        angle &= flagValue;
        asm volatile("" : "+r"(flagByte), "+r"(angle));
        *flagByte = angle;
        direction = *(int *)(target + 0x10);
        asm volatile("" : "+r"(direction), "+r"(target));
        angle = *(int *)(selfReg + 0x10);
        asm volatile("" : "+r"(direction), "+r"(target), "+r"(angle));
        target = (unsigned char *)*(int *)(target + 8);
        asm volatile("" : "+r"(direction), "+r"(target), "+r"(angle));
        direction -= angle;
        asm volatile("" : "+r"(direction), "+r"(target));
        angle = *(int *)(selfReg + 8);
        asm volatile("" : "+r"(direction), "+r"(target), "+r"(angle));
        target -= angle;
        asm volatile("" : "+r"(direction), "+r"(target));
        direction = __atan2(direction, (int)target);
        angle = *(unsigned short *)(selfReg + 6);
        asm volatile("" : "+r"(direction), "+r"(angle));
        direction <<= 16;
        asm volatile("" : "+r"(direction), "+r"(angle));
        direction >>= 16;
        asm volatile("" : "+r"(direction), "+r"(angle));
        direction -= angle;
        asm volatile("" : "+r"(direction), "+r"(angle));
        direction <<= 16;
        asm volatile("" : "+r"(direction), "+r"(angle));
        delta = (int)direction >> 16;
        if (delta != 0) {
            if (delta > 0x1000)
                delta = 0x1000;
            if (delta < -0x1000)
                delta = -0x1000;
            *(unsigned short *)(selfReg + 6) = angle + delta;
        }
    }
    return 1;
}
