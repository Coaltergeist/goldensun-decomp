typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int);
extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_946_200ad0c(void)
{
    int z = *(int *)(__MapActor_GetActor(0x10) + 8) >> 20;
    int x = *(int *)(__MapActor_GetActor(0x10) + 0x10) >> 20;
    int near = *(int *)(__MapActor_GetActor(0x12) + 0x10) >> 20;
    int other = *(int *)(__MapActor_GetActor(9) + 0x10) >> 20;
    int next_x;

    if (z == 0xd) {
        if ((unsigned)(other - 9) <= 2) {
            OvlFunc_946_2009774(0x10, -0x10, 0);
        } else if ((unsigned)(near - 9) <= 2) {
            OvlFunc_946_2009774(0x10, -0x40, 0);
        } else {
            OvlFunc_946_2009774(0x10, -0x70, 0);
        }
    } else if (z == 0xc) {
        if ((unsigned)(other - 9) <= 2)
            return;
        if ((unsigned)(near - 9) <= 2) {
            OvlFunc_946_2009774(0x10, -0x30, 0);
        } else {
            OvlFunc_946_2009774(0x10, -0x60, 0);
        }
    } else if (z == 9) {
        if ((unsigned)(near - 9) <= 2)
            return;
        OvlFunc_946_2009774(0x10, -0x30, 0);
    } else if (z == 8) {
        OvlFunc_946_2009774(0x10, -0x20, 0);
    } else if (z == 6) {
        return;
    }
    __WaitFrames(2);
    other = *(int *)(__MapActor_GetActor(0x10) + 8) >> 20;
    next_x = x - 1;
    __Func_8010704(z, next_x, 1, 3, other, next_x);
    __Func_8010704(0, 0, 1, 3, z, next_x);
}
