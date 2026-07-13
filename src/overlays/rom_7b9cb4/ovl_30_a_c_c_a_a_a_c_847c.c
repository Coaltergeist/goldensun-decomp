extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __SetFlag(int flag);

void OvlFunc_932_200847c(void)
{
    unsigned char *actorResult = __MapActor_GetActor(8);
    register unsigned char *actor asm("r5");
    register int fifth asm("r3");
    register int sixth asm("r2");
    register unsigned char *flagPointer asm("r2");

    fifth = 9;
    sixth = 0xd;
    actor = actorResult;
    asm volatile("" : "+r"(fifth), "+r"(sixth), "+r"(actor) : : "memory");
    __Func_8010704(7, 0xd, 1, 1, fifth, sixth);
    if (actor != 0) {
        register int position asm("r3");

        __Actor_SetSpriteFlags(actor, 0);
        position = *(int *)(actor + 0xc) + 0xffe00000;
        flagPointer = actor;
        asm volatile("" : "+r"(position), "+r"(flagPointer));
        *(int *)(actor + 0xc) = position;
        flagPointer += 0x23;
        *flagPointer = 2;
    }
    __SetFlag(0x200);
}
