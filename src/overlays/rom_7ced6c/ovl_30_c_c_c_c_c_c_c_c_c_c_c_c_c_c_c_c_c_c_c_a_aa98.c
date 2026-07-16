typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int);
extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_946_200aa98(void)
{
    int x13;
    int z13;
    int z12;
    int z9;
    int row;

    x13 = *(int *)(__MapActor_GetActor(0x13) + 8) >> 20;
    z13 = *(int *)(__MapActor_GetActor(0x13) + 0x10) >> 20;
    z12 = *(int *)(__MapActor_GetActor(0x12) + 0x10) >> 20;
    z9 = *(int *)(__MapActor_GetActor(9) + 0x10) >> 20;

    if (x13 == 3) {
        if (z12 == 0xf) {
            OvlFunc_946_2009774(0x13, 0x20, 0);
        } else if (z9 == 0xf) {
            OvlFunc_946_2009774(0x13, 0x50, 0);
        } else {
            OvlFunc_946_2009774(0x13, 0x70, 0);
            OvlFunc_946_2009774(0x13, 0x30, 0);
        }
    } else if (x13 == 5) {
        if (z12 == 0xf) {
            return;
        }
        if (z9 == 0xf) {
            OvlFunc_946_2009774(0x13, 0x30, 0);
        } else {
            OvlFunc_946_2009774(0x13, 0x80, 0);
        }
    } else if (x13 == 6) {
        if (z9 == 0xf) {
            OvlFunc_946_2009774(0x13, 0x20, 0);
        } else {
            OvlFunc_946_2009774(0x13, 0x70, 0);
        }
    } else if (x13 == 8) {
        if (z9 == 0xf) {
            return;
        }
        OvlFunc_946_2009774(0x13, 0x50, 0);
    } else if (x13 == 9) {
        OvlFunc_946_2009774(0x13, 0x40, 0);
    } else if (x13 == 0xc) {
        OvlFunc_946_2009774(0x13, 0x10, 0);
    }

    __WaitFrames(2);
    row = z13 - 1;
    __Func_8010704(x13, row, 1, 3,
                   *(int *)(__MapActor_GetActor(0x13) + 8) >> 20, row);
    __Func_8010704(0, 0, 1, 3, x13, row);
}
