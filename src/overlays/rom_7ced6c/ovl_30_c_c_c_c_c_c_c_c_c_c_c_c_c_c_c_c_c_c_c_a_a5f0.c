typedef unsigned char u8;
typedef unsigned int u32;

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

void OvlFunc_946_200a5f0(void)
{
    int x;
    int z;
    int other_x;
    int third_x;
    int final_z;
    int new_x;

    x = __MapActor_GetActor(0x12)->x >> 20;
    z = __MapActor_GetActor(0x12)->z >> 20;
    other_x = __MapActor_GetActor(0x13)->x >> 20;
    third_x = __MapActor_GetActor(0xe)->x >> 20;

    if (z == 9) {
        if ((u32)(third_x - 6) <= 2) {
            OvlFunc_946_2009774(0x12, 0, 0x20);
        } else if ((u32)(other_x - 6) > 2) {
            OvlFunc_946_2009774(0x12, 0, 0x40);
            OvlFunc_946_2009774(0x12, 0, 0x60);
        } else {
            OvlFunc_946_2009774(0x12, 0, 0x50);
        }
    } else if (z == 0xb) {
        if ((u32)(third_x - 6) <= 2)
            return;
        if ((u32)(other_x - 6) <= 2)
            OvlFunc_946_2009774(0x12, 0, 0x30);
        else
            OvlFunc_946_2009774(0x12, 0, 0x80);
    } else if (z == 0xc) {
        if ((u32)(other_x - 6) <= 2)
            OvlFunc_946_2009774(0x12, 0, 0x20);
        else
            OvlFunc_946_2009774(0x12, 0, 0x70);
    } else if (z == 0xe) {
        if ((u32)(other_x - 6) <= 2)
            return;
        OvlFunc_946_2009774(0x12, 0, 0x50);
    } else if (z == 0xf) {
        OvlFunc_946_2009774(0x12, 0, 0x40);
    } else if (z == 0x12) {
        OvlFunc_946_2009774(0x12, 0, 0x10);
    } else if (z == 0x13) {
        return;
    }

    __WaitFrames(2);
    final_z = __MapActor_GetActor(0x12)->z;
    new_x = x - 1;
    final_z >>= 20;
    __Func_8010704(new_x, z, 3, 1, new_x, final_z);
    __Func_8010704(0, 0, 3, 1, new_x, z);
}
