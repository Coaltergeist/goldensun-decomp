typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;

typedef struct {
    u8 pad_0x38[0x38];
    s16 hp;
} Unit;

extern Unit *_GetUnit(s16 unitId);
extern s32 Func_80b8f08(s16 *arg0);
extern void _Func_80198dc(void);
extern void _Func_80175a0(s32 message);
extern void WaitFrames(s32 frames);
extern void Func_80b8c1c(s16 *arg0);
extern void Func_80b8888(s16 *arg0);
extern void Func_80b88d0(s16 *arg0);
extern s32 Func_80b8824(s16 *arg0);
extern void _Func_8016758(void);
extern u8 iwram_3001f00[];

s32 Func_80b874c(s16 *arg0)
{
    Unit *unit;
    s32 *global;
    s32 value;

    unit = _GetUnit(arg0[0]);
    if (unit->hp == 0) {
        return -1;
    }

    arg0[5] = Func_80b8f08(arg0);
    global = *(s32 **)iwram_3001f00;
    value = (arg0[0] > 4) ? 0xffffe000 : 0x2000;
    global[0] = value;
    global[1] = 0x3c;
    _Func_80198dc();

    switch (arg0[3]) {
    case 99:
        _Func_80175a0(0x843);
        if (Func_80b8824(arg0) != 0) {
            return 1;
        }
        break;
    case 3:
        WaitFrames(0x2d);
        Func_80b8888(arg0);
        break;
    case 2:
        WaitFrames(0x2d);
        Func_80b8c1c(arg0);
        break;
    case 0:
    default: {
        s32 *global2 = *(s32 **)iwram_3001f00;
        global2[5] = 0;
        Func_80b8c1c(arg0);
        global2[5] = 0;
        break;
    }
    case 1:
        Func_80b88d0(arg0);
        break;
    }

    _Func_8016758();
    return 0;
}
