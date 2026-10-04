void OvlFunc_881_200b84c(void)
{
    extern void *__MapActor_GetActor(int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __SetDestMap(int, int);
    extern GlobalState gState;
    struct Actor *actor1;
    struct Actor *actor2;
    unsigned char *gs;
    int i;

    gs = (unsigned char *)&gState;
    gs += (0xfa << 1);
    actor1 = (struct Actor *)__MapActor_GetActor(*(int *)gs);
    actor2 = (struct Actor *)__MapActor_GetActor(0x36);

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_PlaySound(0xdb);
    __Actor_SetSpriteFlags(actor1, 0);

    actor2->__unk55 = 0;
    actor1->__unk55 = 0;
    actor1->motion.y = 0;
    actor1->__unk61 = 1;
    actor2->__unk61 = 1;

    for (i = 0x3b; i >= 0; i--) {
        actor1->motion.y += 0x3333;
        actor2->motion.y += 0x3333;
        API_WaitFrames(1);
    }

    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneEnd();
    API_SetFlag(0x91 << 1);
    __SetDestMap(2, 0x1b);
}
