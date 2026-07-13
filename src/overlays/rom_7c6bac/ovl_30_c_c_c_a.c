typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_942_2008b68(int actorId);

/* 二人の座標から通路タイルを更新 */
void OvlFunc_942_2008af8(void)
{
    register int firstX asm("r8");
    register int shiftedFirst asm("r3");
    register int secondX asm("r5");
    register int sourceY asm("r6");

    firstX = *(int *)(__MapActor_GetActor(14) + 8);
    shiftedFirst = firstX;
    asm volatile("" : "+r"(firstX), "+r"(shiftedFirst));
    shiftedFirst >>= 20;
    firstX = shiftedFirst;
    secondX = *(int *)(__MapActor_GetActor(15) + 8);
    sourceY = 11;

    __Func_8010704(5, 12, 5, 1, 5, sourceY);
    __Func_8010704(1, 0, 1, 1, secondX >> 20, sourceY);
    __Func_8010704(1, 0, 1, 1, firstX, sourceY);
    OvlFunc_942_2008b68(14);
    OvlFunc_942_2008b68(15);
}
