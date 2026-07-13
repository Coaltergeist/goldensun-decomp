extern int __GetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void *__MapActor_GetActor(int actor);
extern unsigned char *iwram_3001ee0;

void OvlFunc_936_200958c(void)
{
    register int flag __asm__("r0") = 0x80;

    /* Materialize each flag argument independently in r0. */
    __asm__ volatile ("" : "+r" (flag));
    flag <<= 2;
    if (__GetFlag(flag)) {
        register unsigned char *state __asm__("r2") = iwram_3001ee0;

        __asm__ volatile ("" : "+r" (state));
        flag = 0x80;
        __asm__ volatile ("" : "+r" (flag));
        *(void **)(state + 0x18) = 0;
        flag <<= 2;
        __ClearFlag(flag);
    }
}

void OvlFunc_936_20095b4(void)
{
    register int flag __asm__("r0") = 0x80;

    __asm__ volatile ("" : "+r" (flag));
    flag <<= 2;
    if (!__GetFlag(flag)) {
        unsigned char *state = iwram_3001ee0;
        void *actor = __MapActor_GetActor(0);

        *(void **)(state + 0x18) = actor;
        flag = 0x80;
        __asm__ volatile ("" : "+r" (flag));
        flag <<= 2;
        __SetFlag(flag);
    }
}
