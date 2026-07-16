typedef unsigned char u8;

typedef struct {
    u8 pad00[8];
    int x;
    int y;
    int z;
} Actor;

extern Actor *__MapActor_GetActor(int);
extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_946_200a984(void)
{
    int x;
    int z;
    int other_z;
    int third_z;
    int fourth_z;
    int final_x;
    int new_z;

    x = __MapActor_GetActor(0x13)->x >> 20;
    z = __MapActor_GetActor(0x13)->z >> 20;
    other_z = __MapActor_GetActor(0x11)->z >> 20;
    third_z = __MapActor_GetActor(0x12)->z >> 20;
    fourth_z = __MapActor_GetActor(9)->z >> 20;

    if (x == 3) {
        return;
    } else if (x == 0xd) {
        if (fourth_z == 0xf)
            OvlFunc_946_2009774(0x13, -0x10, 0);
        else if (third_z == 0xf)
            OvlFunc_946_2009774(0x13, -0x40, 0);
        else if (other_z == 0xf)
            OvlFunc_946_2009774(0x13, -0x70, 0);
        else {
            OvlFunc_946_2009774(0x13, -0x70, 0);
            OvlFunc_946_2009774(0x13, -0x30, 0);
        }
    } else if (x == 6) {
        if (other_z == 0xf)
            return;
        OvlFunc_946_2009774(0x13, -0x30, 0);
    } else if (x == 5) {
        OvlFunc_946_2009774(0x13, -0x20, 0);
    } else if (x == 8) {
        if (third_z == 0xf)
            return;
        if (other_z == 0xf)
            OvlFunc_946_2009774(0x13, -0x20, 0);
        else
            OvlFunc_946_2009774(0x13, -0x50, 0);
    } else if (x == 9) {
        if (third_z == 0xf)
            return;
        if (other_z == 0xf)
            OvlFunc_946_2009774(0x13, -0x30, 0);
        else
            OvlFunc_946_2009774(0x13, -0x60, 0);
    } else if (x == 0xc) {
        if (fourth_z == 0xf)
            return;
        if (third_z == 0xf)
            OvlFunc_946_2009774(0x13, -0x30, 0);
        else if (other_z == 0xf)
            OvlFunc_946_2009774(0x13, -0x60, 0);
        else
            OvlFunc_946_2009774(0x13, -0x90, 0);
    }

    __WaitFrames(2);
    final_x = __MapActor_GetActor(0x13)->x >> 20;
    new_z = z - 1;
    __Func_8010704(x, new_z, 1, 3, final_x, new_z);
    __Func_8010704(0, 0, 1, 3, x, new_z);
}
