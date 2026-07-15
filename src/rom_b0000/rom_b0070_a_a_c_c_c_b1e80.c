typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void Func_80b04dc(s32 arg0);
extern void Func_80b0a6c(void *arg0, u32 arg1, u32 arg2);
extern s32 Func_80b1614(s32 arg0, s32 arg1, s32 arg2);
extern s32 Func_80b19cc(u32 item);
extern void WaitFrames(u32 frames);
extern void _Func_80a17c4(void *actor);
extern s32 _GetInventoryItem(s32 unit, s32 slot);
extern u8 *_GetItemInfo(u32 item);
extern u8 *_GetUnit(s32 unitId);
extern u8 iwram_3001f2c[];

s32 Func_80b1e80(s32 arg0, s32 arg1)
{
    u8 *base;
    u8 *unit;
    u8 *info;
    u8 **actorSlot;
    s32 offset;
    s32 quantity;
    s32 price;
    s32 result;
    s16 x;
    s16 y;

    base = *(u8 **)iwram_3001f2c;
    unit = _GetUnit(arg0);
    offset = (arg1 << 1) + 0xD8;
    info = _GetItemInfo(*(u16 *)(unit + offset));
    result = 1;
    price = Func_80b19cc(*(u16 *)(unit + offset));
    quantity = _GetInventoryItem(arg0, arg1);
    if ((info[3] & 0x10) && quantity > 1) {
        Func_80b04dc(0xCAD);
        x = *(s16 *)(base + 0x388);
        y = *(s16 *)(base + 0x38A);
        actorSlot = (u8 **)(base + 0x380);
        (*actorSlot)[5] = 4;
        base[0x3A8] = 0xC;
        Func_80b0a6c(0, 0x80, 0x30);
        result = Func_80b1614(0, quantity, price);
        WaitFrames(1);
        _Func_80a17c4(*actorSlot);
        Func_80b0a6c(0, x, y);
    }
    return result;
}
