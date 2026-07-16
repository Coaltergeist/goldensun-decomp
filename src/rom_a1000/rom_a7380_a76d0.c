typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001f2c;
extern s32 Func_80a77a4(s32);
extern s32 Func_80a8114(void);
extern s32 Func_80a90bc(void);
extern s32 Func_80a96d8(void);
extern s32 _GetFlag(s32);

s32 Func_80a76d0(void)
{
    u8 *state;
    s32 phase;
    s32 result;
    s32 call0;
    s32 inv;
    s32 t;
    s16 waiting;

    state = iwram_3001f2c;
    phase = 0;
    waiting = 0;
    result = 0;

    while (waiting == 0 && _GetFlag(0xa8 << 1) == 0) {
        switch (phase) {
        case 0:
            *(u16 *)(state + 0x174) = waiting;
            call0 = Func_80a77a4(0);
            if (call0 == -1) {
                result = call0;
                waiting = 1;
            }
            phase = 1;
            break;
        case 1:
            *(u8 *)(*(u8 **)(state + 0x14) + 5) = 0xd;
            result = Func_80a8114();
            inv = ~result;
            t = (0 - inv) | inv;
            phase = (u32)t >> 0x1f;
            phase = phase * 2;
            break;
        case 2:
            *(u8 *)(*(u8 **)(state + 0x14) + 5) = 0xd;
            result = Func_80a90bc();
            phase = 0;
            if (result != -1) {
                phase = 3;
            }
            break;
        case 3:
            *(u8 *)(*(u8 **)(state + 0x14) + 5) = 0xd;
            result = Func_80a96d8();
            inv = ~result;
            phase = (s32)((u32)((0 - inv) | inv) >> 0x1f);
            break;
        default:
            waiting = 1;
            break;
        }
    }
    if (_GetFlag(0xa8 << 1) != 0) {
        result = -1;
    }
    return result;
}
