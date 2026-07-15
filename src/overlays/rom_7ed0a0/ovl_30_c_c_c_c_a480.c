typedef unsigned char u8;
extern void __Func_8010704(int,int,int,int,int,int);
extern u8 *__MapActor_GetActor(int);

void OvlFunc_964_200a480(void)
{
    register int x asm("r5");
    int y;
    u8 *actor;

    __Func_8010704(0x59, 0x31, 3, 2, 0x19, 0x31);
    __Func_8010704(0x59, 0x33, 8, 5, 0x19, 0x33);
    actor = __MapActor_GetActor(0xe);
    actor[0x22] = 1;

    x = *(int *)(__MapActor_GetActor(0xc) + 8);
    y = *(int *)(__MapActor_GetActor(0xc) + 0x10) >> 20;
    x >>= 20;
    __Func_8010704(0x16, 0x34, 1, 1, x, y);

    x = *(int *)(__MapActor_GetActor(0xd) + 8);
    y = *(int *)(__MapActor_GetActor(0xd) + 0x10) >> 20;
    x >>= 20;
    __Func_8010704(0x16, 0x34, 1, 1, x, y);

    x = *(int *)(__MapActor_GetActor(0xe) + 8);
    y = *(int *)(__MapActor_GetActor(0xe) + 0x10) >> 20;
    x >>= 20;
    __Func_8010704(0x16, 0x34, 1, 1, x, y);
}
