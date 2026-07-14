extern int _divsi3_RAM(int value, int divisor);

void OvlFunc_898_2009754(unsigned char *actor)
{
    register unsigned char *ptr asm("r6");
    register int a asm("r3");
    register int b asm("r2");

    ptr = actor;
    asm volatile("" : "+r"(ptr));

    a = *(int *)(ptr + 8);
    b = *(int *)(ptr + 0x30);
    asm volatile("" : "+r"(a), "+r"(b));
    a += b;
    asm volatile("" : "+r"(a));
    *(int *)(ptr + 8) = a;
    *(int *)(ptr + 0x38) = a;

    if (*(short *)(ptr + 0x64) != 0) {
        a = *(int *)(ptr + 0xc);
        b = *(int *)(ptr + 0x34);
        asm volatile("" : "+r"(a), "+r"(b));
    } else {
        a = *(int *)(ptr + 0x10);
        b = *(int *)(ptr + 0x34);
        asm volatile("" : "+r"(a), "+r"(b));
        a += b;
        asm volatile("" : "+r"(a));
        *(int *)(ptr + 0x10) = a;
        *(int *)(ptr + 0x40) = a;
        b = 0x80;
        a = *(int *)(ptr + 0xc);
        asm volatile("" : "+r"(a), "+r"(b));
        b <<= 3;
        asm volatile("" : "+r"(b));
    }
    a += b;
    asm volatile("" : "+r"(a));
    *(int *)(ptr + 0xc) = a;
    *(int *)(ptr + 0x3c) = a;

    {
        register int divisor asm("r1");
        register int value asm("r0");
        register int c asm("r5");

        c = *(int *)(ptr + 0x30);
        asm volatile("" : "+r"(c));
        divisor = 0x1c;
        asm volatile("" : "+r"(divisor));
        value = c;
        asm volatile("" : "+r"(value));
        value = _divsi3_RAM(value, divisor);
        c -= value;
        asm volatile("" : "+r"(c));
        *(int *)(ptr + 0x30) = c;

        c = *(int *)(ptr + 0x34);
        asm volatile("" : "+r"(c));
        divisor = 0x1c;
        asm volatile("" : "+r"(divisor));
        value = c;
        asm volatile("" : "+r"(value));
        value = _divsi3_RAM(value, divisor);
        c -= value;
        asm volatile("" : "+r"(c));
        *(int *)(ptr + 0x34) = c;
    }
}
