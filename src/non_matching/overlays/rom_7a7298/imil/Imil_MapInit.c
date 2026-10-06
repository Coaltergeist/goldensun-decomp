extern void __Func_8010704(int a, int b, int c, int d, int e, int f);
extern void __MapActor_SetBehavior(int, void *);

extern void __StartTask(void (*)(void), int);

extern void __Func_8092b08(int, int);

extern void __Func_8092950(int, int);

extern void __Func_800fe9c(void);

extern void __CopyMapTiles(int, int, int, int, int, int);

extern void OvlFunc_921_2009960(void);

extern void OvlFunc_921_20099bc(void);

extern void OvlFunc_921_2008f90(void);

extern void OvlFunc_921_20099e8(void);

extern void OvlFunc_921_2009794(void);

extern void OvlFunc_921_20098c4(void);

extern unsigned char gScript_921__0200a4f4[];

void Imil_MapInit(void)
{
    unsigned char *actor;
    short *p;
    short ev, sub;

    p = (short *)((char *)&gState + 0x1c0);
    ev = p[0];

    if (ev == 0x32) {
        actor = __MapActor_GetActor(0);
        *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c0) = 0x100;
        __MapActor_SetAnim(10, 9);
        if (__GetFlag(0x109)) {
            __ClearFlag(0x200);
            __ClearFlag(0x201);
        }
        *(short *)(actor + 0x64) = 0;
        *(short *)(actor + 0x66) = 0xc80;
        __StartTask(OvlFunc_921_2009794, 0xc80);
        __StartTask(OvlFunc_921_20098c4, 0xc80);
        __Func_8092b08(11, 1);
        if (__GetFlag(0x203)) {
            OvlFunc_921_2009960();
        }
        if (__GetFlag(0x109)) {
            return;
        }
        sub = p[1];
        if (sub == 9) {
            OvlFunc_921_20099bc();
        }
        return;
    }

    if (ev != 0x33) {
        return;
    }

    *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c0) = 0x209;
    sub = p[1];

    if (sub == 1) {
        __Func_8092950(0x15, 0xf);
        actor = __MapActor_GetActor(0x15);
        actor[0x59] |= 8;
        __Func_8092b08(0x15, 1);
        if (__GetFlag(0x881)) {
            __Func_8010704(10, 7, 1, 1, 10, 8);
            __CopyMapTiles(3, 0x7d, 9, 0x45, 3, 3);
            __Func_800fe9c();
            __WaitFrames(1);
            __MapActor_SetBehavior(8, (void *)2);
            __MapActor_SetPos(10, 0, 0);
            return;
        }
        if (__GetFlag(0x82c) && __GetFlag(0x82a)) {
            actor = __MapActor_GetActor(10);
            __Actor_SetSpriteFlags(actor, 0);
            __MapActor_SetPos(9, 0xae << 16, 0xa4 << 16);
            actor = __MapActor_GetActor(9);
            __Actor_SetSpriteFlags(actor, 0);
            __MapActor_SetAnim(9, 5);
            __MapActor_SetPos(8, 0xa8 << 16, 0x98 << 16);
            actor = __MapActor_GetActor(8);
            *(short *)(actor + 6) = 0xc0 << 6;
            if (__GetFlag(0x82b)) {
                return;
            }
            OvlFunc_921_2008f90();
            return;
        }
        __Func_8010704(10, 7, 1, 1, 10, 8);
        __CopyMapTiles(3, 0x7d, 9, 0x45, 3, 3);
        __Func_800fe9c();
        __WaitFrames(1);
        if (__GetFlag(0x82c)) {
            __MapActor_SetPos(8, 0x95 << 16, 0xe8 << 15);
            actor = __MapActor_GetActor(8);
            *(short *)(actor + 6) = 0;
            actor = __MapActor_GetActor(9);
            *(short *)(actor + 0x66) = 0;
            __MapActor_SetBehavior(9, gScript_921__0200a4f4);
            return;
        }
        __MapActor_SetBehavior(8, (void *)2);
        return;
    }

    if (sub == 2) {
        if (__GetFlag(0x881)) {
            return;
        }
        actor = __MapActor_GetActor(11);
        *(short *)(actor + 0x66) = 1;
        __MapActor_SetBehavior(11, gScript_921__0200a4f4);
        return;
    }

    if (sub == 4) {
        if (__GetFlag(0x881)) {
            __MapActor_SetPos(12, 0xb6 << 17, 0x02420000);
            __Func_8092b08(12, 2);
            actor = __MapActor_GetActor(12);
            actor[0x59] |= 4;
            __CopyMapTiles(6, 0x7d, 0x16, 0x58, 3, 3);
            __MapActor_SetPos(13, 0xf6 << 17, 0x02420000);
            __Func_8092b08(13, 2);
            actor = __MapActor_GetActor(13);
            actor[0x59] |= 4;
            __CopyMapTiles(9, 0x7d, 0x1c, 0x58, 3, 3);
            return;
        }
        actor = __MapActor_GetActor(12);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = __MapActor_GetActor(12);
        __Actor_SetSpriteFlags(actor, 0);
        __MapActor_SetAnim(12, 5);
        actor = __MapActor_GetActor(13);
        __Actor_SetSpriteFlags(actor, 0);
        __MapActor_SetAnim(13, 5);
        return;
    }

    if (sub == 3) {
        if (__GetFlag(0x881)) {
            __MapActor_SetPos(15, 0xe6 << 17, 0x81 << 17);
            __Func_8092b08(15, 2);
            actor = __MapActor_GetActor(15);
            actor[0x59] |= 4;
            __MapActor_SetPos(14, 0xcc << 17, 0x84 << 17);
            actor = __MapActor_GetActor(14);
            *(short *)(actor + 6) = 0x80 << 5;
            __CopyMapTiles(12, 0x7d, 0x1a, 0x46, 3, 3);
            return;
        }
        __MapActor_SetPos(14, 0xe6 << 17, 0x81 << 17);
        __Func_8092b08(14, 2);
        actor = __MapActor_GetActor(14);
        actor[0x59] |= 4;
        actor = __MapActor_GetActor(15);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = __MapActor_GetActor(15);
        __Actor_SetSpriteFlags(actor, 0);
        __MapActor_SetAnim(15, 5);
        return;
    }

    if (sub == 7) {
        if (!__GetFlag(0x881)) {
            return;
        }
        actor = __MapActor_GetActor(20);
        *(short *)(actor + 6) = 0xc0 << 6;
        if (!__GetFlag(0x82e)) {
            __MapActor_SetPos(20, 0x028a0000, 0xa1 << 16);
            OvlFunc_921_20099e8();
            return;
        }
        __MapActor_SetPos(20, 0xa1 << 18, 0xa6 << 16);
        return;
    }
}
