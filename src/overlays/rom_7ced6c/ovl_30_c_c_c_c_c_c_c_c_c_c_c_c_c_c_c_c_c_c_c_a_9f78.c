typedef unsigned char u8;
extern u8 *__MapActor_GetActor(int);
extern void OvlFunc_946_2009774(int,int,int);
extern void __WaitFrames(int);
extern void __Func_8010704(int,int,int,int,int,int);
void OvlFunc_946_2009f78(void)
{
    int x = *(int *)(__MapActor_GetActor(12) + 8) >> 20;
    int y = *(int *)(__MapActor_GetActor(12) + 0x10) >> 20;
    if (x == 0x24) {
        OvlFunc_946_2009774(12, -0x60, 0);
        OvlFunc_946_2009774(12, -0x60, 0);
    } else if (x == 0x22) {
        OvlFunc_946_2009774(12, -0x60, 0);
        OvlFunc_946_2009774(12, -0x40, 0);
    } else if (x == 0x18) {
        return;
    }
    __WaitFrames(2);
    {
        int currentX = *(int *)(__MapActor_GetActor(12) + 8) >> 20;
        int row = y - 1;
        __Func_8010704(x, row, 1, 3, currentX, row);
        __Func_8010704(0, 0, 1, 3, x, row);
    }
}
