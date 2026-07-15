typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *GetUnit(u32 unitId);
extern s32 Func_807a2bc(u32 unitId, u32 element, u32 bit);
extern s32 GiveDjinni(s32 unitId, s32 element, u32 djinni);
extern u32 Func_807a350(u32 arg0, u32 arg1, u32 arg2);
extern s32 SetDjinni(s32 unitId, s32 elementId, u32 djinniId);
extern s32 Func_807a3a8(u32 param_1, u32 param_2, u32 param_3);
extern u8 *Func_807a458(u32 index, u32 first, u32 second);

s32 Func_807a498(u32 unitId, u32 element, u32 bit, u32 newUnit)
{
    u8 *unit = GetUnit(unitId);
    u32 offset = element * 4 + 0xf8;
    u32 mask = 1 << bit;
    s32 moved;
    s32 result;
    u32 idxByte;

    if ((*(u32 *)(unit + offset) & mask) == 0)
        goto fail;

    moved = Func_807a2bc(unitId, element, bit);
    result = GiveDjinni(newUnit, element, bit);
    if (result != 0)
        goto fail;

    Func_807a350(unitId, element, bit);
    *(u32 *)(unit + offset) &= ~mask;
    idxByte = element + 0x118;
    unit[idxByte] += 0xff;

    if (moved != 0) {
        SetDjinni(newUnit, element, bit);
    } else {
        Func_807a3a8(unitId, element, bit);
        Func_807a458(newUnit, element, bit);
    }
    return 0;

fail:
    return -1;
}
