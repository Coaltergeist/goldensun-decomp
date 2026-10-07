extern void __Func_8091ff0(int);
extern void __Func_80929d8(void *, int);
extern void __Func_8092950(int, int);
extern unsigned char gState[];

int Xian_MapInit(void)
{
    unsigned int i;
    unsigned char *actor;
    unsigned char *gfx;
    int x;
    int z;

    *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c0) = 0x100;
    __Func_8091ff0(0xa9);

    if (*(short *)(gState + 0x1c2) > 9) {
        API_ClearFlag(0x12f);
    }

    if (API_GetFlag(0x895)) {
        API_Func_8092adc(0xd, 0x8000, 0);
        API_MapActor_SetPos(0xe, 0x92 << 16, 0x9c << 17);
        API_Func_8092adc(0xe, 0, 0);
        if (API_GetFlag(0x89a)) {
            API_MapActor_SetPos(0x11, 0, 0);
        }
    }

    if (API_GetFlag(0x8b0)) {
        API_MapActor_SetPos(0x11, 0, 0);
    }

    for (i = 0; i <= 2; i++) {
        actor = (unsigned char *)__MapActor_GetActor(i + 0x17);
        gfx = *(unsigned char **)(actor + 0x50);
        gfx[9] = (gfx[9] & ~0xc) | 4;
        actor[0x55] = 0;
        actor[0x59] = 8;
        __Actor_SetSpriteFlags((int)actor, 0);
        __Func_80929d8(actor, 0xf);
        actor[0x23] = (actor[0x23] & 0xfe) | 2;
    }

    if (API_GetFlag(0x202)) {
        API_MapActor_SetPos(0xe, 0x92 << 16, 0x9c << 17);
        API_Func_8092adc(0xe, 0, 0);
    }

    if (API_GetFlag(0x201)) {
        __MapActor_SetAnim(0x14, 5);
        x = *(int *)((unsigned char *)__MapActor_GetActor(0x14) + 8);
        z = *(int *)((unsigned char *)__MapActor_GetActor(0x14) + 0x10);
        __Func_8010704(3, 0x11, 1, 1, x >> 20, z >> 20);
        __StartTask(OvlFunc_928_2008324, 0xc8 << 4);
    }

    __Func_8092950(0x12, 2);
    *(void **)((unsigned char *)__MapActor_GetActor(0x12) + 0x6c) = OvlFunc_928_2008500;

    actor = (unsigned char *)__MapActor_GetActor(0x13);
    actor[0x55] = 0;
    *(int *)(actor + 0xc) = 0x80 << 13;
    *(int *)(actor + 0x3c) = 0x80 << 13;
    *(int *)(actor + 0x18) = 0x8ccc;
    *(int *)(actor + 0x1c) = 0x6666;
    *(unsigned short *)(*(unsigned char **)(actor + 0x50) + 0x1e) = 0x8000;

    __Actor_SetSpriteFlags((int)__MapActor_GetActor(0x15), 0);
    ((unsigned char *)__MapActor_GetActor(0x15))[0x55] = 0;
    *(int *)((unsigned char *)__MapActor_GetActor(0x15) + 0xc) = 0;
    *(int *)((unsigned char *)__MapActor_GetActor(0x15) + 0x3c) = 0x80 << 24;

    return 0;
}
