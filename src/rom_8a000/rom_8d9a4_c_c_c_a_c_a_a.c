extern unsigned char iwram_3001ed0[];
extern void Func_809088c(void *arg0, void *arg1, void *arg2, int arg3);

void Func_8091254(int enabled) {
    register unsigned char *base asm("r4") = *(unsigned char **)iwram_3001ed0;
    register int enabledReg asm("r5") = enabled;

    if (base != 0) {
        register int offset asm("r1") = 0x2a01;
        register int zero asm("r2");
        register unsigned char *field asm("r3") = base + offset;

        asm volatile("" : "+r"(field), "+r"(offset));
        offset++;
        asm volatile("" : "+r"(field), "+r"(offset));
        zero = 0;
        asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
        *field = enabledReg;
        field = base + offset;
        asm volatile("" : "+r"(field), "+r"(zero));
        *field = zero;
        {
            register void *arg0 asm("r0");
            register void *arg1 asm("r1");
            register int offset2 asm("r2");
            register int offset3 asm("r3");

            offset3 = 0xe0;
            asm volatile("" : "+r"(offset3));
            offset3 <<= 4;
            asm volatile("" : "+r"(offset3));
            offset2 = 0xe0;
            asm volatile("" : "+r"(offset2), "+r"(offset3));
            arg1 = base + offset3;
            asm volatile("" : "+r"(arg1), "+r"(offset2));
            offset3 = 0xc4;
            asm volatile("" : "+r"(offset2), "+r"(offset3));
            offset2 <<= 2;
            asm volatile("" : "+r"(offset2), "+r"(offset3));
            offset3 <<= 5;
            asm volatile("" : "+r"(offset2), "+r"(offset3));
            arg0 = base + offset2;
            asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(offset3));
            offset2 = (int)(base + offset3);
            asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(offset2));
            Func_809088c(arg0, arg1, (void *)offset2, enabledReg);
        }
    }
}
