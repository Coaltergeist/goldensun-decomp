extern unsigned char gState[];
extern int __GetFlag(int flag);
extern void OvlFunc_936_200ba3c(int);
extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_936_200a6c0(void);

void OvlFunc_936_2009858(void)
{
    register unsigned char *state asm("r3");
    register int state_offset asm("r2");
    register int zero asm("r2");

    if (!__GetFlag(0xfd6))
        OvlFunc_936_200ba3c(0xc);
    if (__GetFlag(0x915)) {
        register int store_zero asm("r3");
        unsigned char *actor = __MapActor_GetActor(8);
        store_zero = 0;
        asm volatile("" : "+r" (store_zero));
        *(short *)(actor + 6) = store_zero;
    }
    state = gState;
    state_offset = 0xe1;
    asm volatile("" : "+r" (state), "+r" (state_offset));
    state_offset <<= 1;
    state += state_offset;
    zero = 0;
    asm volatile("" : "+r" (state), "+r" (zero));
    if (*(short *)(state + zero) == 0xa)
        OvlFunc_936_200a6c0();
}
