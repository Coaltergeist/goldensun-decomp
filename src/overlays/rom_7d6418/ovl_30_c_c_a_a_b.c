extern unsigned char gState[];
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __Func_80921c4(int actor, int x, int y);
extern void __Func_8092adc(int actor, int distance, int arg);
extern void __CutsceneEnd(void);
extern void OvlFunc_951_2008880(void);
extern void OvlFunc_951_2008ac8(void);

void OvlFunc_951_2008104(void)
{
    register unsigned char *state __asm__("r3") = gState;
    register int offset __asm__("r2") = 0xfa;
    register int actor __asm__("r5");
    register int flag __asm__("r0");

    __asm__ volatile ("" : "+r" (state), "+r" (offset));
    offset <<= 1;
    flag = 0x80;
    state += offset;
    flag <<= 2;
    __asm__ volatile ("" : "+r" (state), "+r" (flag));
    actor = *(int *)state;
    __asm__ volatile ("" : "+r" (actor), "+r" (flag));

    if (!__GetFlag(flag)) {
        register int set_flag __asm__("r0") = 0x80;

        set_flag <<= 2;
        __SetFlag(set_flag);
        OvlFunc_951_2008880();
    }

    __CutsceneStart();
    __Func_80921c4(actor, 0x78, 0x98);
    {
        register int distance __asm__("r1") = 0x80;
        register int zero __asm__("r2");
        register int actor_arg __asm__("r0");

        distance <<= 7;
        zero = 0;
        __asm__ volatile ("" : "+r" (distance), "+r" (zero));
        actor_arg = actor;
        __asm__ volatile ("" : "+r" (actor_arg));
        __Func_8092adc(actor_arg, distance, zero);
    }
    OvlFunc_951_2008ac8();
    __CutsceneEnd();
}
