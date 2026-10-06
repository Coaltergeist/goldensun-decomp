extern void __Func_8092950(int, int);
extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, void *);
extern void __gfree(int);

void OvlFunc_936_20096bc(void)
{
    int flag;
    unsigned char *actor;
    unsigned char *sprite;
    unsigned char *buf;

    if (__GetFlag(0x941)) {
        __SetFlag(0x321);
        __SetFlag(0x913);
        __SetFlag(0x912);
        __SetFlag(0x915);
    }

    if (__GetFlag(0x94 << 4)) {
        __SetFlag(0x321);
    }

    if (*(short *)((char *)&gState + 0x1c2) == 0xe) {
        MapActor_SetPos17_15(0xd4, 0xb0, 0x19);
    }

    __Func_8092950(0x15, 2);

    flag = __GetFlag(0x916);
    if (flag) {
        __MapActor_SetPos(0x1a, 0, 0);
    } else {
        actor = (unsigned char *)__MapActor_GetActor(0x1a);
        sprite = *(unsigned char **)(actor + 0x50);
        sprite[9] = ((sprite[9] & ~0xc) | 4) & 0xf;
        sprite[5] &= ~0x20;
        sprite[0x27] = flag;
        actor[0x5c] = 1;
        actor[0x55] = flag;
        *(int *)(actor + 0xc) = 0xa0 << 12;
        actor[0x61] = 1;
        buf = (unsigned char *)__galloc_iwram(0x11, 0xc1 << 3);
        __LoadItemIcon(0xb5);
        __UploadSpriteGFX(sprite[0x1c], 0x80, buf + (0x80 << 3));
        __gfree(0x11);
        *(int *)(actor + 0x30) = flag;
        *(int *)(actor + 0x38) = *(int *)(actor + 8);
        *(int *)(actor + 0x3c) = *(int *)(actor + 0xc);
        *(int *)(actor + 0x40) = *(int *)(actor + 0x10);
        __StartTask(OvlFunc_936_200b90c, 0xc8 << 4);
    }
}
