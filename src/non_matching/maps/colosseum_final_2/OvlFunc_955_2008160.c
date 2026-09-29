extern void __MapActor_SetAnim(int, int);

void OvlFunc_955_2008160(void)
{
    unsigned char *actor;
    unsigned char *sprite;
    int s;
    int i;

    actor = (unsigned char *)__MapActor_GetActor(0x1e);
    sprite = *(unsigned char **)(actor + 0x50);
    __SetFlag(0xcc << 2);
    *(int *)(actor + 0x34) = 0x1999;
    *(int *)(actor + 0x30) = 0x13333;
    __PlaySound(0xe3);
    __Actor_TravelTo(actor, 0xa8 << 17, 0xa0 << 12, 0x84 << 17);
    s = 0;
    i = 9;
    do {
        *(unsigned short *)(sprite + 0x1e) -= s;
        i--;
        __WaitFrames(1);
        s += 0x24;
    } while (i >= 0);
    __Actor_TravelTo(actor, 0xa5 << 17, 0xfff00000, 0x84 << 17);
    s = 0xb4 << 1;
    i = 0x15;
    do {
        *(unsigned short *)(sprite + 0x1e) -= s;
        i--;
        __WaitFrames(1);
        s += 0x24;
    } while (i >= 0);
    __Actor_WaitMovement(actor);
    __CutsceneWait(2);
    i = 0;
    __PlaySound(0xf0);
    *(unsigned short *)(sprite + 0x1e) = i;
    __MapActor_SetAnim(0x1e, 4);
    *(int *)(actor + 8) = 0xa8 << 17;
    *(int *)(actor + 0xc) = 0xfff80000;
    *(int *)(actor + 0x10) = 0x84 << 17;
    *(int *)(actor + 0x28) = i;
    *(int *)(actor + 0x24) = i;
    __Func_8010704(0x13, 0x10, 1, 1, 0x14, 0x10);
    __Func_8010704(0x14, 0x50, 1, 1, 0x15, 0x50);
}
