typedef unsigned char u8;

extern void OvlFunc_948_2009da0(void);
extern u8 *__MapActor_GetActor(int actorId);
extern void __Func_8010704(int, int, int, int, int, int);

/* 二人の位置へ同じマップ演出を配置 */
void OvlFunc_948_2009df8(void)
{
    register int lastSource asm("r5");
    register int x asm("r0");

    OvlFunc_948_2009da0();
    x = *(int *)(__MapActor_GetActor(11) + 8);
    if (x < 0)
        x += 0xfffff;
    x >>= 20;
    asm volatile("" : "+r"(x));
    lastSource = 0x37;
    __Func_8010704(0x35, 0x37, 1, 1, x, lastSource);
    x = *(int *)(__MapActor_GetActor(12) + 8);
    if (x < 0)
        x += 0xfffff;
    x >>= 20;
    __Func_8010704(0x35, 0x37, 1, 1, x, lastSource);
}
