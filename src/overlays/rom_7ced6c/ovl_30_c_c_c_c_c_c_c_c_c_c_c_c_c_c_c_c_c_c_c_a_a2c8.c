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

void OvlFunc_946_200a2c8(void)
{
    int x;
    int z;
    int other_z;
    int third_x;
    int final_x;
    int new_z;

    x = __MapActor_GetActor(0xf)->x >> 20;
    z = __MapActor_GetActor(0xf)->z >> 20;
    other_z = __MapActor_GetActor(0xa)->z >> 20;
    third_x = __MapActor_GetActor(0xd)->x >> 20;

    if (x == 0x18) {
        if (other_z == 7 || third_x == 0x1f) {
            OvlFunc_946_2009774(0xf, 0x60, 0);
        } else if (third_x == 0x22) {
            OvlFunc_946_2009774(0xf, 0x40, 0);
            OvlFunc_946_2009774(0xf, 0x50, 0);
        } else if (third_x == 0x23) {
            OvlFunc_946_2009774(0xf, 0x50, 0);
            OvlFunc_946_2009774(0xf, 0x50, 0);
        } else {
            OvlFunc_946_2009774(0xf, 0x50, 0);
            OvlFunc_946_2009774(0xf, 0x60, 0);
        }
    } else if (x == 0x1e || third_x == 0x1f) {
        if (other_z == 7)
            return;
        if (third_x == 0x22)
            OvlFunc_946_2009774(0xf, 0x30, 0);
        else if (third_x == 0x23)
            OvlFunc_946_2009774(0xf, 0x40, 0);
        else
            OvlFunc_946_2009774(0xf, 0x50, 0);
    } else if (x == 0x21) {
        if (third_x == 0x22)
            return;
        if (third_x == 0x23)
            OvlFunc_946_2009774(0xf, 0x10, 0);
        else
            OvlFunc_946_2009774(0xf, 0x20, 0);
    } else if (x == 0x22) {
        OvlFunc_946_2009774(0xf, 0x10, 0);
    } else if (x == 0x23) {
        return;
    }

    __WaitFrames(2);
    final_x = __MapActor_GetActor(0xf)->x >> 20;
    new_z = z - 1;
    __Func_8010704(x, new_z, 1, 3, final_x, new_z);
    __Func_8010704(0, 0, 1, 3, x, new_z);
}
