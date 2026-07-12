extern unsigned char gState[];
extern void __SetFlag(int flag);
extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __PlaySound(int sound);
extern void __Func_8091e9c(int arg);
extern void __CutsceneEnd(void);

extern unsigned char Value_59[] asm("0x59");
extern unsigned char Value_5a[] asm("0x5a");
extern unsigned char Value_5b[] asm("0x5b");
extern unsigned char Script_23c8[] asm(".L23c8");
extern unsigned char Script_2410[] asm(".L2410");
extern unsigned char Script_24b8[] asm(".L24b8");
extern unsigned char Script_23b0[] asm(".L23b0");

unsigned char *OvlFunc_933_200841c(void) {
    register unsigned int base asm("r5");
    register unsigned int value asm("r3");
    register unsigned int zero asm("r1");
    register int state asm("r2");

    base = (unsigned int)gState;
    asm volatile("" : "+r"(base));
    zero = 0xe0;
    zero <<= 1;
    asm volatile("" : "+r"(base), "+r"(zero));
    value = base + zero;
    zero = 0;
    asm volatile("" : "+r"(value), "+r"(zero));
    state = *(short *)(value + zero);
    value = (unsigned int)Value_5b;
    asm volatile("" : "+r"(value), "+r"(state), "+r"(base));

    if (state == value) {
        state = 0xe1;
        state <<= 1;
        asm volatile("" : "+r"(state), "+r"(base));
        value = base + state;
        zero = 0;
        asm volatile("" : "+r"(value), "+r"(zero));
        value = *(short *)(value + zero);
        if (value == 5)
            __SetFlag(0x90a);
    }

    state = 0xe0;
    state <<= 1;
    asm volatile("" : "+r"(state), "+r"(base));
    value = base + state;
    zero = 0;
    asm volatile("" : "+r"(value), "+r"(zero));
    state = *(short *)(value + zero);

    value = (unsigned int)Value_59;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_23c8;
    value = (unsigned int)Value_5a;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_2410;
    value = (unsigned int)Value_5b;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_24b8;
    return Script_23b0;
}

void OvlFunc_933_2008498(void) {
    register unsigned int arg asm("r0");

    __CutsceneStart();
    arg = 0x8b2;
    asm volatile("" : "+r"(arg));
    if (__GetFlag(arg) == 0) {
        arg = 0x8b3;
        asm volatile("" : "+r"(arg));
        if (__GetFlag(arg) == 0) {
            arg = 0x8b3;
            asm volatile("" : "+r"(arg));
            __SetFlag(arg);
            arg = 0x8b2;
            asm volatile("" : "+r"(arg));
            __SetFlag(arg);
        }
    }
    __PlaySound(0x7b);
    __Func_8091e9c(3);
    __CutsceneEnd();
}
