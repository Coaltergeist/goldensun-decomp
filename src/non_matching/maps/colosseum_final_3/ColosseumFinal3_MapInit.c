typedef struct { unsigned char _bytes[4]; } ActorCmd;

extern unsigned char iwram_3001ebc[];

extern ActorCmd ActorCmd_ARRAY_956__0200cbec[13];

extern void OvlFunc_956_2008658(void);

extern void OvlFunc_common1_148(void);

extern void OvlFunc_common1_1608();

extern void OvlFunc_common1_1ecc();

extern void OvlFunc_common1_78();

extern void OvlFunc_common1_0();

extern void OvlFunc_common1_ea0();

extern void OvlFunc_common1_1fb4();

extern void OvlFunc_956_2009a0c();

extern void OvlFunc_common1_488();

extern void OvlFunc_956_2009474();

int ColosseumFinal3_MapInit(void)
{
    unsigned char *base;
    int actor;
    int actor2;
    int flag_byte;
    int i;
    int j;
    int ret;

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x100;
    __SetFlag(0x144);
    __StartTask(OvlFunc_956_2008658, 0xc80);
    __Func_8010704(0x4a, 0x3c, 8, 6, 0x78, 0x3c);

    __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);

    actor = __MapActor_GetActor(10);
    __Actor_SetSpriteFlags(actor, 0);
    *(unsigned char *)(actor + 0x55) = 0;
    *(int *)(actor + 0xc) = 0x200000;

    actor = __MapActor_GetActor(11);
    __Actor_SetSpriteFlags(actor, 0);
    *(unsigned char *)(actor + 0x55) = 0;
    *(int *)(actor + 0xc) = 0x40000;

    if (__GetFlag(0x362)) {
        __MapActor_SetAnim(9, 5);
        actor = __MapActor_GetActor(10);
        *(int *)(actor + 0xc) = 0x40000;
        actor = __MapActor_GetActor(11);
        *(int *)(actor + 0xc) = 0x200000;
        __Func_8010704(0xf, 0xc, 1, 1, 0xd, 0xc);
    } else {
        actor = __MapActor_GetActor(9);
        *(int *)(actor + 0x18) = 0x18000;
        *(int *)(actor + 0x1c) = 0x18000;
        if (__GetFlag(0x367)) {
            __Func_8010704(0, 0x18, 1, 1, 9, 0xc);
        } else {
            __Func_8010704(0, 0x19, 1, 1, 9, 0xc);
        }
    }

    if (__GetFlag(0x368)) {
        __Func_8010704(0xf, 0xc, 1, 1, 0xd, 0xc);
        __Func_8010704(1, 0x19, 1, 1, 9, 0xc);
        actor = __MapActor_GetActor(0xc);
        __Actor_SetSpriteFlags(actor, 0);
        *(unsigned char *)(actor + 0x55) = 0;
        *(int *)(actor + 0xc) = 0x20000;
        *(unsigned char *)(actor + 0x23) = 2;
        actor = __MapActor_GetActor(10);
        *(int *)(actor + 0xc) = 0x40000;
        *(unsigned char *)(actor + 0x23) = 2;
        actor = __MapActor_GetActor(11);
        *(int *)(actor + 0xc) = 0x200000;
    }

    flag_byte = __GetFlagByte(0x370);
    if (flag_byte == 0) {
        flag_byte = 0x13;
    }
    actor = __MapActor_GetActor(0xd);
    *(int *)(actor + 8) = (flag_byte << 20) + 0x80000;
    *(unsigned char *)(actor + 0x55) = 0;
    *(unsigned char *)(actor + 0x23) = 2;
    __Func_8010704(0x12, 0xa, 3, 1, 0x12, 0xb);
    __Func_8010704(0x11, 0xb, 1, 1, flag_byte, 0xb);

    for (i = 0xf; i <= 0x11; i++) {
        actor = __MapActor_GetActor(i);
        ret = __Func_8011f54(0, *(int *)(actor + 8), *(int *)(actor + 0x10));
        if (*(int *)(actor + 0xc) == 0 && ret == 0) {
            *(unsigned char *)(actor + 0x23) = 2;
            *(unsigned char *)(actor + 0x55) = 0;
            __Func_8010704(0x53, 0xd, 1, 1, *(int *)(actor + 8) >> 20, *(int *)(actor + 0x10) >> 20);
            __Func_8010704(0x53, 0xd, 1, 1, *(int *)(actor + 8) >> 20, (*(int *)(actor + 0x10) >> 20) + 0x34);
        }
    }

    if (__GetFlag(0x361)) {
        j = 0x21;
        for (i = 0x12; i <= 0x16; i++) {
            actor = __MapActor_GetActor(i);
            *(unsigned char *)(actor + 0x23) = 2;
            __Actor_SetAnim(actor, 2);
            actor2 = __MapActor_GetActor(i + 5);
            *(unsigned char *)(actor2 + 0x23) = 2;
            *(unsigned char *)(actor2 + 0x55) = 0;
            *(int *)(actor2 + 0xc) = 0x200000;
            __Actor_SetAnim(actor2, 0xa);
            __Func_8010704(0x4a, 0xc, 1, 1, j, 0xb);
            j += 2;
        }
        __MapActor_SetAnim(0x1c, 0xa);
        __Func_809ad90(0x1c);
    } else {
        for (i = 0x12; i <= 0x16; i++) {
            actor = __MapActor_GetActor(i);
            *(unsigned char *)(actor + 0x23) = 2;
            actor2 = __MapActor_GetActor(i + 5);
            *(unsigned char *)(actor2 + 0x23) = 2;
            *(unsigned char *)(actor2 + 0x55) = 0;
            *(int *)(actor2 + 0xc) = 0x200000;
        }
        __StartTask(OvlFunc_956_200804c, 0xc80);
    }

    if (__GetFlag(0x360)) {
        __MapActor_SetAnim(0x1d, 4);
        __Func_8010704(0x2f, 0x3d, 1, 4, 0x31, 0x3d);
    }

    if (__GetFlag(0x363)) {
        __Func_80118c0(1);
        actor = __MapActor_GetActor(0x1e);
        *(unsigned char *)(actor + 0x55) = 0;
        *(int *)(actor + 8) = 0x46a0000;
        *(int *)(actor + 0x10) = 0xb80000;
        __Actor_SetSpriteFlags(actor, 0);
        __Actor_SetAnim(actor, 3);
        __Actor_SetScript(actor, ActorCmd_ARRAY_956__0200cbec);
    } else {
        __Func_80118c0(2);
    }

    if (__GetFlag(0x369)) {
        actor = __MapActor_GetActor(0x1f);
        __Actor_SetAnim(actor, 8);
        *(unsigned char *)(actor + 0x23) = 2;
        __Func_8010704(0x56, 0xa, 1, 2, 0x54, 0xa);
        __Func_8010704(0x56, 9, 1, 1, 0x54, 0xc);
    } else {
        actor = __MapActor_GetActor(0x1f);
        __Func_8010704(0x55, 9, 1, 4, *(int *)(actor + 8) >> 20, 9);
        __Func_8010704(0x55, 9, 1, 4, *(int *)(actor + 8) >> 20, 0x3d);
    }

    actor = __MapActor_GetActor(9);
    *(unsigned char *)(actor + 0x55) = 0;
    *(unsigned char *)(actor + 0x23) = 2;
    actor = __MapActor_GetActor(10);
    *(unsigned char *)(actor + 0x55) = 0;
    *(unsigned char *)(actor + 0x23) = 2;
    actor = __MapActor_GetActor(11);
    *(unsigned char *)(actor + 0x55) = 0;
    *(unsigned char *)(actor + 0x23) = 2;
    __MapActor_SetAnim(8, 9);
    *(unsigned char *)((char *)&gState + 0x1f2) = 0;
    OvlFunc_common1_1608(0x27, 3);
    OvlFunc_common1_1608(0x28, 0x11);
    __Func_8092950(8, 2);

    switch (*(short *)((char *)&gState + 0x1c2)) {
    case 1:
        OvlFunc_common1_1ecc(0, 8, 6, 0x5e80000, 0xc00000, 0x27, 0x28);
        __Func_8010788(0x7f, 0, 1, 2, 5, 2);
        __DeleteFieldActor(0x20);
        __DeleteFieldActor(0x21);
        __DeleteFieldActor(0x22);
        __DeleteFieldActor(0x23);
        __DeleteFieldActor(0x24);
        __DeleteFieldActor(0x25);
        __DeleteFieldActor(0x26);
        if (__GetFlag(0x109) == 0) {
            __PlaySound(0x11);
            OvlFunc_common1_78(0);
            OvlFunc_common1_0();
            __MapActor_SetExtra(1, 0);
            OvlFunc_common1_ea0(3);
        }
        __MapActor_SetExtra(1, 0);
        __MapActor_SetExtra(2, 0);
        __MapActor_SetExtra(3, 0);
        OvlFunc_common1_1fb4(0xe6);
        break;
    case 2:
        __StartTask(OvlFunc_common1_148, 0xc80);
        __DeleteFieldActor(0x27);
        __DeleteFieldActor(0x28);
        if (__GetFlag(0x109) == 0) {
            OvlFunc_common1_0();
            OvlFunc_common1_78(1);
            OvlFunc_common1_ea0(0);
        }
        break;
    case 3:
        if (__GetFlag(0x109) == 0) {
            OvlFunc_956_2009a0c(0x20);
            OvlFunc_common1_488();
        }
        break;
    case 4:
        OvlFunc_956_2009474(1);
        __Func_8091e9c(4);
        __SetFlag(0x950);
        __SetFlag(0x951);
        break;
    case 5:
        OvlFunc_956_2009474(-1);
        __Func_8091e9c(5);
        __SetFlag(0x950);
        break;
    }

    return 0;
}
