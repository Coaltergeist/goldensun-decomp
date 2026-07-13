extern void __MapActor_Emote(int actor, int emote, int arg);
extern void __MapActor_Jump(int actor, int height, int arg);
extern void __Func_8091f14(int actor, int frames);

void OvlFunc_905_20089dc(void)
{
    register int emote __asm__("r1") = 0x80;
    register int actor __asm__("r0") = 13;

    /* Materialize both call arguments before scaling the emote value. */
    __asm__ volatile ("" : : "r" (emote), "r" (actor));
    emote <<= 1;
    __MapActor_Emote(actor, emote, 0);
    __MapActor_Jump(13, 2, 0);
    __Func_8091f14(12, 40);
}
