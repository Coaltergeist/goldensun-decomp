typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *_GetMoveInfo(u32 moveId);
extern void Func_80a2438(u32 code);

void Func_80aa460(u32 moveId)
{
    u8 *move;
    u32 kind;
    u32 idx;

    move = _GetMoveInfo(moveId);
    kind = move[1] & 0xf;
    switch (kind) {
    case 1:
        Func_80a2438(0x7e);
    case 0xb:
        Func_80a2438(0x7e);
        return;
    }

    idx = move[3] - 1;

    switch (idx) {
    case 4:
        Func_80a2438(0x52);
        return;
    case 2:
        Func_80a2438(0x54);
        return;
    case 0:
    case 1:
    case 30:
    case 31:
        return;
    default:
        Func_80a2438(0x5b);
        return;
    }
}
