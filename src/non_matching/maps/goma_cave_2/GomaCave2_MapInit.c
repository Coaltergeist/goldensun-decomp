extern void OvlFunc_905_2008ce0(void);

int GomaCave2_MapInit(void)
{
    unsigned char *base;
    unsigned char *gs;
    struct Actor *a;

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x204;
    *(int *)(base + 0x1c8) = 0x18;

    a = (struct Actor *)__MapActor_GetActor(9);
    a->__unk59 |= 0x10;

    if (API_GetFlag(0x302)) {
        API_MapActor_SetPos(8, 0xac << 17, 0xd0 << 15);
        __Func_8010704(0x18, 0x28, 6, 3, 0x12, 6);
    } else {
        __Func_8010704(0x12, 0x28, 6, 3, 0x12, 6);
    }

    if (API_GetFlag(0x300)) {
        API_MapActor_SetPos(9, 0, 0);
        __Func_8010704(0x15, 0x2d, 4, 2, 0x15, 0xb);
    }

    gs = (unsigned char *)&gState;
    if (API_GetFlag(0x301)) {
        API_MapActor_SetPos(10, 0x9a << 18, 0xe8 << 16);
        switch (*(short *)(gs + 0x1c2)) {
        case 2:
        case 3:
            ((struct Actor *)__MapActor_GetActor(10))->layer = 2;
            ((struct Actor *)__MapActor_GetActor(10))->pos.y -= 1;
            ((struct Actor *)__MapActor_GetActor(10))->flags |= 2;
            __Func_8010704(0x24, 0x30, 5, 1, 0x24, 0xe);
            break;
        }
    }

    if (*(short *)(gs + 0x1c2) == 0x63) {
        API_MapTransitionIn();
        API_WaitMapTransition();
        API_MapActor_SetPos(9, 0xc0 << 17, 0xc0 << 16);
        API_CutsceneWait(0x3c);
        ((struct Actor *)__MapActor_GetActor(9))->layer = 2;
        API_MapActor_TravelToWait(9, 0xcc << 1, 0xc0);
        API_CutsceneWait(0x3c);
        OvlFunc_905_2008ce0();
    }

    if (*(short *)(gs + 0x234) != 0) {
        gOvl_020098ec = 0;
        API_StartTask(OvlFunc_905_20090c8, 0xc8 << 4);
    }

    return 0;
}
