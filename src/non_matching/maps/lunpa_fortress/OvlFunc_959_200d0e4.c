extern void OvlFunc_959_200d4b0(void);

extern void OvlFunc_959_2009150(void);

extern void OvlFunc_959_200938c(void);

extern void OvlFunc_959_2009a44(void);

extern void OvlFunc_959_200a06c(void);

void OvlFunc_959_200d0e4(void)
{
    unsigned char *gs;
    unsigned char *p;
    unsigned char *actor;
    int val;
    int x, y;
    int actor_id;

    OvlFunc_959_200d4b0();
    __Func_8092950(9, 1);
    __Func_8092950(10, 1);
    __Func_8092950(17, 1);

    if (__GetFlag(0x94c) != 0) {
        __MapActor_SetPos(15, 0, 0);
    }
    if (__GetFlag(0x949) != 0) {
        __MapActor_SetPos(11, 0, 0);
    }
    if (__GetFlag(0x94b) != 0) {
        __MapActor_SetPos(16, 0, 0);
    }
    if (__GetFlag(0xf2e) != 0) {
        __MapActor_SetPos(8, 0, 0);
    }

    gs = (unsigned char *)&gState;
    gs += (0xe1 << 1);
    switch (*(short *)gs) {
    case 1:
    case 2:
    case 3:
        val = 0xe0 << 1;
        p = *(unsigned char **)iwram_3001ebc + val;
        *(int *)p = val + 0x40;
        __Func_80108c4(0xe0 << 4);
        __StartTask(OvlFunc_959_2009150, 0xc8 << 4);
        __WaitFrames(1);
        __Func_800fe9c();
        __WaitFrames(1);
        break;

    case 10:
    case 13:
    case 20:
    case 23:
    case 24:
        val = 0xe0 << 1;
        p = *(unsigned char **)iwram_3001ebc + val;
        *(int *)p = val + 0x49;
        __Func_80108c4(0xc0 << 4);
        actor = (unsigned char *)__MapActor_GetActor(24);
        __Actor_SetSpriteFlags(actor, 0);
        if (__GetFlag(0xc5 << 2) != 0) {
            x = 0xda;
            y = 0xf0;
            __MapActor_SetPos(25, x << 18, y << 15);
        }
        break;

    case 21:
    case 22:
        val = 0xe0 << 1;
        p = *(unsigned char **)iwram_3001ebc + val;
        *(int *)p = val + 0x40;
        __Func_80108c4(0xe0 << 4);
        __StartTask(OvlFunc_959_200938c, 0xc8 << 4);
        __WaitFrames(1);
        __Func_800fe9c();
        __WaitFrames(1);
        break;

    case 11:
    case 12:
        val = 0xe0 << 1;
        p = *(unsigned char **)iwram_3001ebc + val;
        *(int *)p = val + 0x40;
        if (__GetFlag(0x94a) != 0) {
            OvlFunc_959_200a06c();
        }
        break;

    case 31:
        val = 0xe0 << 1;
        p = *(unsigned char **)iwram_3001ebc + val;
        *(int *)p = val + 0x40;
        OvlFunc_959_200a06c();
        break;

    case 14:
    case 15:
    case 16:
        __StartTask(OvlFunc_959_2009a44, 0xc8 << 4);
        break;

    default:
        val = 0xe0 << 1;
        p = *(unsigned char **)iwram_3001ebc + val;
        *(int *)p = val + 0x40;
        __Func_80108c4(0xe0 << 4);
        break;
    }

    actor_id = 8;
    actor = (unsigned char *)__MapActor_GetActor(actor_id);
    __Actor_SetSpriteFlags(__MapActor_GetActor(actor_id), 0);
    __Func_8092b08(actor_id, 1);
    *(int *)(actor + 0x18) = 0xc0 << 8;
    *(int *)(actor + 0x1c) = 0xc0 << 8;
}
