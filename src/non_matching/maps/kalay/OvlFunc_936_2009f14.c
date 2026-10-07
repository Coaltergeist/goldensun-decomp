extern unsigned char gScript_936__0200bec0[];
extern unsigned char gScript_936__0200bfb0[];

void OvlFunc_936_2009f14(void)
{
    extern void __MapActor_SetBehavior(int, void *);
    struct Actor *actor;

    switch (Lm936_5144) {
    case 0:
        actor = (struct Actor *)__MapActor_GetActor(0x15);
        actor->waveCounter = 0;
        __MapActor_SetBehavior(0x15, gScript_936__0200bec0);
        Lm936_5144++;
        break;

    case 1:
        actor = (struct Actor *)__MapActor_GetActor(0x15);
        if (actor->waveCounter != 0) {
            actor = (struct Actor *)__MapActor_GetActor(0x14);
            actor->waveCounter = 0;
            __MapActor_SetBehavior(0x14, gScript_936__0200bfb0);
            Lm936_5144++;
        }
        break;

    case 2:
        actor = (struct Actor *)__MapActor_GetActor(0x14);
        if (actor->waveCounter != 0) {
            actor = (struct Actor *)__MapActor_GetActor(0x14);
            actor->waveCounter = 0;
            __MapActor_SetBehavior(0x14, gScript_936__0200bec0);
            Lm936_5144++;
        }
        break;

    case 3:
        actor = (struct Actor *)__MapActor_GetActor(0x14);
        if (actor->waveCounter != 0) {
            actor = (struct Actor *)__MapActor_GetActor(0x15);
            actor->waveCounter = 0;
            __MapActor_SetBehavior(0x15, gScript_936__0200bfb0);
            Lm936_5144++;
        }
        break;

    case 4:
        actor = (struct Actor *)__MapActor_GetActor(0x15);
        if (actor->waveCounter != 0) {
            Lm936_5144 = 0;
        }
        break;
    }
}
