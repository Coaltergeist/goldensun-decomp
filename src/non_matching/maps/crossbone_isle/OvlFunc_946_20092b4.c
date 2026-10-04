void OvlFunc_946_20092b4(void)
{
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void OvlFunc_946_2008e00(int);
    struct Actor *actor;
    int x;
    unsigned int r2;
    int ev;
    int flag;

    actor = (struct Actor *)__MapActor_GetActor(8);
    x = actor->pos.x >> 20;
    if (x != 0x28) {
        return;
    }

    r2 = 0xe0;
    r2 <<= 1;
    ev = *(short *)((char *)&gState + r2);
    flag = API_GetFlag(ev + (0x8d2 - (int)_EVENT_7e));
    if (flag) {
        return;
    }

    actor->__unk55 = 3;
    __CutsceneWait(8);
    OvlFunc_946_2008e00(8);
    __PlaySound(0x88);
    __CutsceneWait(0x28);
    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
    API_Func_8092b08(8, 3);
    actor->__unk55 = flag;
    actor->flags |= 2;
    API_Func_8010704(0x2a, 0xa, 1, 1, x, 0xa);
    API_SetFlag(*(short *)((char *)&gState + r2) + (0x8d2 - (int)_EVENT_7e));
}
