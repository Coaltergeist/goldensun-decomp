typedef unsigned char u8;
typedef unsigned short u16;
typedef signed char s8;
typedef unsigned int u32;

extern u8 *_GetUnit(int unitId);

int Func_80b78e4(int unitId, u8 *out)
{
    u8 *unit = _GetUnit(unitId);
    u32 flags;
    s8 v;
    u8 form;
    register u8 tag asm("r3");
    register u32 shift asm("r2");

    v = (s8)unit[0x131];
    flags = 0;
    if (v == 1)
        flags = 1;
    if (v == 2)
        flags |= v;

    if (unit[0x138] != 0)
        flags |= 0x20;

    if (unit[0x13b] != 0) {
        flags |= 4;
        form = unit[0x128];
        if (form == 0x79 || form == 0x94)
            flags &= -5;
    }

    if (unit[0x13d] != 0)
        flags |= 8;

    if (unit[0x140] != 0)
        flags |= 0x40;

    if (unit[0x13c] != 0)
        flags |= 0x10;

    unit += 0x141;
    tag = *unit;
    if (tag != 0) {
        shift = tag;
        __asm__ volatile ("" : "+r" (shift));
        shift += 6;
        flags |= 1 << shift;
    }

    *(u16 *)(out + 0x1c) = flags;
}
