extern unsigned char gState[];
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __Func_8092c40(int actor, int arg1);
extern void __Func_8019908(int value, int tag);
extern void __MessageID(int message);

int OvlFunc_971_2009158(int actor)
{
    register unsigned char *base asm("r5");

    __CutsceneStart();
    base = gState;

    {
        register unsigned int tmp asm("r2");
        register int *addr asm("r3");
        register int val asm("r1");
        register int zero asm("r2");
        register int act asm("r0");

        tmp = 0xfa;
        asm volatile("" : "+r"(base), "+r"(tmp));
        tmp <<= 1;
        addr = (int *)(base + tmp);
        asm volatile("" : "+r"(base), "+r"(addr));
        val = *addr;
        zero = 0;
        asm volatile("" : "+r"(val), "+r"(zero));
        act = actor;
        asm volatile("" : "+r"(act), "+r"(val), "+r"(zero));
        __Func_809280c(act, val, zero);
    }

    {
        register unsigned int tmp asm("r3");
        register unsigned short *addr asm("r2");
        register unsigned int value asm("r3");

        tmp = 0xaa;
        asm volatile("" : "+r"(base), "+r"(tmp));
        tmp <<= 2;
        addr = (unsigned short *)(base + tmp);
        asm volatile("" : "+r"(addr));
        value = *addr;
        asm volatile("" : "+r"(value));
        if (value != 0) {
            register int arg0 asm("r0");
            register int arg1 asm("r1");

            arg0 = value;
            asm volatile("" : "+r"(arg0));
            arg1 = 5;
            asm volatile("" : "+r"(arg0), "+r"(arg1));
            __Func_8019908(arg0, arg1);
            __MessageID(0x298a);
        } else {
            __MessageID(0x298b);
        }
    }

    {
        register int zero asm("r1");
        register int act asm("r0");

        zero = 0;
        asm volatile("" : "+r"(zero));
        act = actor;
        asm volatile("" : "+r"(act), "+r"(zero));
        __Func_8092c40(act, zero);
    }
    __CutsceneEnd();
}
