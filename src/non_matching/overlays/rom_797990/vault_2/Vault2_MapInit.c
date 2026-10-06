extern void OvlFunc_common0_70(int, int, int, int);
extern void OvlFunc_901_2008400(void);
extern unsigned char gState[];

int Vault2_MapInit(void) {
    if (__GetFlag(0x80 << 2)) {
        __Func_8010704(0x37, 0x1a, 4, 2, 0x17, 0x1a);
    }
    OvlFunc_common0_70(0x80 << 16, 0, 0xd2 << 17, 0xdf);
    __CopyMapTiles(0x2d, 0x29, 8, 0x2d, 3, 3);
    __WaitFrames(1);
    ((struct Actor *)__MapActor_GetActor(0xe))->update = (void *)OvlFunc_901_2008400;
    ((struct Actor *)__MapActor_GetActor(0xe))->waveCounter = 1;
    ((struct Actor *)__MapActor_GetActor(0xf))->update = (void *)OvlFunc_901_2008400;
    ((struct Actor *)__MapActor_GetActor(0xf))->waveCounter = 0;
    if (__GetFlag(0x858)) {
        __MapActor_SetPos(0x12, 0xd8 << 16, 0xc4 << 17);
    }
    if (*(short *)(gState + (0xe1 << 1)) <= 2) {
        if (!__GetFlag(0x34) && !__GetFlag(0x109)) {
            __ClearFlag(0x867);
        }
    }
    if (__GetFlag(0x867) && !__GetFlag(0x34)) {
        __MapActor_SetPos(0x15, 0xcc << 17, 0xf0 << 15);
    }
    if (*(short *)(gState + (0xe1 << 1)) == 11) {
        __ClearFlag(0x12f);
    }
    if ((*(unsigned short *)(gState + (0xe1 << 1)) << 16) == (0xd0 << 12)) {
        __ClearFlag(0x90 << 1);
    }
    return 0;
}
