extern void __CutsceneStart(void);

extern void __CutsceneEnd(void);

extern void __Func_80933f8(int, int, int, int);

extern void __WaitFrames(int);

extern void __MapTransitionOut(void);

extern void __WaitMapTransition(void);

extern void __SetDestMap(int, int);

void OvlFunc_960_2008c00(void)
{
    int flagByte;
    int off;
    unsigned char *actorId;
    unsigned char *actor1;
    unsigned char *actor2;
    int delta;
    int i;
    int ev;

    flagByte = __GetFlagByte(0x86 << 2);
    off = 0xfa << 1;
    actorId = (unsigned char *)((char *)&gState + off);
    actor1 = __MapActor_GetActor(*(int *)actorId);
    actor2 = __MapActor_GetActor(flagByte);
    __CutsceneStart();
    __Func_80933f8(-1, -1, -1, 0);
    __PlaySound(0xdb);
    __Actor_SetSpriteFlags(*(unsigned int *)actorId, 0);
    actor2[0x55] = 0;
    actor1[0x55] = 0;
    *(int *)(actor1 + 0x28) = 0;
    actor1[0x61] = 1;
    actor2[0x61] = 1;
    delta = 0x3333;
    for (i = 0x3b; i >= 0; i--) {
        *(int *)(actor1 + 0x28) += delta;
        *(int *)(actor2 + 0x28) += delta;
        __WaitFrames(1);
    }
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
    __SetFlag(0x91 << 1);
    off = 0xe0 << 1;
    ev = *(short *)((char *)&gState + off);
    if (ev == (int)Const_A5 && __GetFlagByte(0x86 << 2) == 11) {
        __SetDestMap(2, 0x4d);
    } else {
        __SetDestMap(2, 0x1b);
    }
}
