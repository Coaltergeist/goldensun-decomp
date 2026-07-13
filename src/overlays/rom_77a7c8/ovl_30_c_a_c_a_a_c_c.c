extern void __Actor_SetSpriteFlags(unsigned char *actor, unsigned int flags);
extern void __Actor_SetColorswap(unsigned char *actor, unsigned int colorswap);
extern unsigned int __GetFlag(unsigned int flag);
extern void __SetFlag(unsigned int flag);

unsigned int OvlFunc_881_2008314(unsigned char *actor)
{
    register unsigned int zero asm("r6");
    register unsigned char *flag_ptr asm("r3");

    __Actor_SetSpriteFlags(actor, 0);
    __Actor_SetColorswap(actor, 0xa);
    flag_ptr = actor + 0x59;
    /* Finish the flag address before materializing the shared zero value. */
    asm("" : "+r" (flag_ptr));
    zero = 0;
    *flag_ptr = zero;
    if (__GetFlag(0x8a0)) {
        __SetFlag(0x2f1);
        *(unsigned int *)(actor + 8) = zero;
        *(unsigned int *)(actor + 0xc) = zero;
    }
    return 0;
}
