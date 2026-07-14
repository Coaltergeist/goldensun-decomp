extern unsigned char iwram_3001ebc[];
extern unsigned char *__MapActor_GetActor(int actor_id);

void OvlFunc_963_2008288(void)
{
    short r6;
    unsigned char *base;
    unsigned char *actor;
    int h;
    int offset;
    int mode;

    base = *(unsigned char **)iwram_3001ebc;
    base += 0xb6 << 1;
    r6 = *(short *)base;
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    __PlaySound(0x9e);
    __CopyMapTiles(0x42, 0x24, 0x47, 8, 2, 2);
    __WaitFrames(4);
    h = 8;
    asm volatile("" : "+r"(h));
    __CopyMapTiles(0x44, 0x24, 0x47, h, 2, 2);
    __WaitFrames(4);
    offset = 0x10;
    mode = 3;
    asm volatile("" : "+r"(offset), "+r"(mode));
    offset = -offset;
    __Func_8092208(0, mode, offset);
    __Func_8091e9c(r6);
}
