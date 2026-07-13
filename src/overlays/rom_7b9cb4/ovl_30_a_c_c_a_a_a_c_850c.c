extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __SetFlag(int flag);

void OvlFunc_932_200850c(void)
{
    unsigned char *actorResult = __MapActor_GetActor(9);
    register unsigned char *actor asm("r5");
    register int stackValue asm("r3");
    register unsigned char *flagPointer asm("r2");

    stackValue = 0x1a;
    actor = actorResult;
    asm volatile("" : "+r"(stackValue), "+r"(actor) : : "memory");
    __Func_8010704(0, 0, 1, 1, stackValue, stackValue);
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

void OvlFunc_932_200855c(void)
{
    unsigned char *actorResult = __MapActor_GetActor(9);
    register unsigned char *actor asm("r5");
    register int fifth asm("r3") = 0x19;
    register int sixth asm("r2") = 0xd;
    register unsigned char *flagPointer asm("r2");
    actor = actorResult;
    asm volatile("" : "+r"(fifth), "+r"(sixth), "+r"(actor) : : "memory");
    __Func_8010704(0x17, 0xd, 1, 1, fifth, sixth);
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

void OvlFunc_932_20085ac(void)
{
    unsigned char *actorResult = __MapActor_GetActor(9);
    register unsigned char *actor asm("r5");
    register int fifth asm("r3") = 0x2b;
    register int sixth asm("r2") = 0x29;
    register unsigned char *flagPointer asm("r2");
    actor = actorResult;
    asm volatile("" : "+r"(fifth), "+r"(sixth), "+r"(actor) : : "memory");
    __Func_8010704(0x2d, 0x29, 1, 1, fifth, sixth);
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

void OvlFunc_932_20085fc(void)
{
    unsigned char *actorResult = __MapActor_GetActor(0xb);
    register unsigned char *actor asm("r5");
    register int fifth asm("r3") = 0x11;
    register int sixth asm("r2") = 0xa;
    register unsigned char *flagPointer asm("r2");
    actor = actorResult;
    asm volatile("" : "+r"(fifth), "+r"(sixth), "+r"(actor) : : "memory");
    __Func_8010704(1, 0, 1, 1, fifth, sixth);
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
    __SetFlag(0x201);
}

void OvlFunc_932_2008650(void)
{
    unsigned char *actorResult = __MapActor_GetActor(0xc);
    register unsigned char *actor asm("r5");
    register int fifth asm("r3") = 0x1a;
    register int sixth asm("r2") = 0xf;
    register unsigned char *flagPointer asm("r2");
    actor = actorResult;
    asm volatile("" : "+r"(fifth), "+r"(sixth), "+r"(actor) : : "memory");
    __Func_8010704(1, 0, 1, 1, fifth, sixth);
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
    __SetFlag(0x204);
}
