typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 __Random(void);
extern u32 _umodsi3_RAM(u32, u32);

s32 OvlFunc_921_2008030(u8 *actor)
{
    s16 state;

    state = *(s16 *)(actor + 0x64);
    switch (state) {
    case 6:
        *(s32 *)(actor + 0x18) += -0x4000;
        *(s32 *)(actor + 0x1c) += 0x2000;
        break;
    case 4:
        *(s32 *)(actor + 0x18) += 0x2000;
        *(s32 *)(actor + 0x1c) += -0x1000;
        break;
    case 2:
        *(s32 *)(actor + 0x18) += 0x1000;
        *(s32 *)(actor + 0x1c) += -0x800;
        break;
    case 0:
        *(s32 *)(actor + 0x18) += 0x1000;
        *(s32 *)(actor + 0x1c) += -0x800;
        if (*(s16 *)(actor + 0x66) != 0) {
            *(s16 *)(actor + 0x64) = _umodsi3_RAM(__Random(), 0x28) + 0x28;
        } else {
            *(s16 *)(actor + 0x64) = _umodsi3_RAM(__Random(), 0x14) + 0x14;
        }
        break;
    }
    *(s16 *)(actor + 0x64) -= 1;
    return 1;
}
