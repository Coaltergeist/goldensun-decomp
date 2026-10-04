void OvlFunc_881_200b95c(void)
{
    extern GlobalState gState;
    extern unsigned int iwram_3001e40;
    extern void *__MapActor_GetActor(int);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern unsigned int __Random(void);
    extern void __Func_80933f8(int, int, int, int);
    unsigned char *gs;
    unsigned char *actor;
    short x;
    short z;

    gs = (unsigned char *)&gState;
    gs += (0xfa << 1);
    actor = (unsigned char *)__MapActor_GetActor(*(int *)gs);
    x = *(short *)(actor + 0xa);
    z = *(short *)(actor + 0x12);

    if (_umodsi3_RAM(iwram_3001e40, 3) != 0)
        return;

    switch ((__Random() * 4) >> 16) {
    case 0:
        __Func_80933f8((x << 16) - 0x10000, -1, (z << 16) + 0x10000, 1);
        break;
    case 1:
        __Func_80933f8((x << 16) + 0x10000, -1, (z << 16) - 0x10000, 1);
        break;
    case 2:
        __Func_80933f8((x << 16) + 0x10000, -1, (z << 16) + 0x10000, 1);
        break;
    case 3:
        __Func_80933f8((x << 16) - 0x10000, -1, (z << 16) - 0x10000, 1);
        break;
    }
}
