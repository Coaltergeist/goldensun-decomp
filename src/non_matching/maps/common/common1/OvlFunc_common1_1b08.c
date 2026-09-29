#include "gba/types.h"

#include "dma.h"

struct Struct_3001f3c {
    u8 _pad0[0xd8];
    s16 field_d8;
    s16 field_da;
    s16 field_dc;
    s16 field_de;
    s16 field_e0;
    s16 field_e2;
    s16 field_e4;
    s16 field_e6;
    s32 field_e8;
    s32 field_ec;
};

struct SpriteNode {
    u32 unk0;
    u32 unk4;
    u32 unk8;
};

struct FieldActor {
    u8 _pad0[8];
    s32 x;
    u32 _padC;
    s32 y;
};

extern u32 iwram_3001f3c;

extern u32 iwram_3001e40;

extern unsigned char Lc1_4[] __asm__(".Lc1_4");

extern unsigned char Lc1_5[] __asm__(".Lc1_5");

extern int _divsi3_RAM(int, int);

void OvlFunc_common1_1b08(void)
{
    struct Struct_3001f3c *data;
    struct SpriteNode *node;
    u32 *out;
    u32 slot_val;
    s32 r7;
    int i;
    int count;
    s32 sp4;
    u32 mask;
    u32 attr2;
    u32 attr2_plus6;
    u32 r10;
    u32 val;
    int x;
    int y;
    void *ewram;

    data = (struct Struct_3001f3c *)iwram_3001f3c;
    out = (u32 *)data;
    node = (struct SpriteNode *)data;

    slot_val = gSpriteSlots[data->field_d8].vramOffset >> 5;
    count = data->field_e6;

    if (data->field_dc != 0) {
        data->field_da = 2;
    } else if (__GetFlag(0x83 << 1)) {
        if (data->field_da > 0) {
            data->field_da--;
        }
    } else {
        if (data->field_da <= 1) {
            data->field_da++;
            if ((data->field_da << 16) == (0x80 << 9)) {
                DMA3_SET(Lc1_4, (void *)0x50003c0, 0x80000010);
                ewram = (void *)__alloc_ewram(0x80 << 2);
                __DecompressLZ(Lc1_5, ewram);
                __UploadSpriteGFX(data->field_d8, 0x80 << 2, ewram);
                __free(ewram);
            }
        }
    }

    if (data->field_da == 0) {
        __Func_8003f78(*(s16 *)((char *)out + 0xd8));
        return;
    }

    r7 = (data->field_da * 6 - 8) & 0xff;
    sp4 = count << 4;

    mask = 0x80 << 8;

    *out++ = 0;
    *out++ = ((0x68 - sp4) << 16) | r7 | mask;
    *out++ = slot_val | (0xe4 << 8);

    i = 0;
    __Func_8003dec(node++, 0xff);

    for (; i < count; i++) {
        *out++ = 0;
        *out++ = ((0x60 - (i << 4)) << 16) | r7 | (0x80 << 23);
        *out++ = (slot_val + 2) | (0xe4 << 8);
        __Func_8003dec(node++, 0xff);
    }

    mask = 0x80 << 8;
    *out++ = (i = 0);
    *out++ = (0xe0 << 15) | r7 | mask;
    attr2_plus6 = (slot_val + 6) | (0xe4 << 8);
    *out++ = attr2_plus6;
    __Func_8003dec(node++, 0xff);

    *out++ = i;
    val = (0xf0 << 15) | r7 | mask;
    val |= (0x80 << 21);
    *out++ = val;
    *out++ = attr2_plus6;
    __Func_8003dec(node++, 0xff);

    for (r10 = 0x80 << 16; i < count; i++, r10 += 0x80 << 13) {
        *out++ = 0;
        val = r7 | r10 | (0x80 << 23);
        val |= (0x80 << 21);
        *out++ = val;
        *out++ = (slot_val + 2) | (0xe4 << 8);
        __Func_8003dec(node++, 0xff);
    }

    mask = 0x80 << 8;
    *out++ = (count = 0);
    r7 |= (sp4 + 0x80) << 16;
    r7 |= mask;
    r7 |= 0x80 << 21;
    *out++ = r7;
    *out++ = slot_val | (0xe4 << 8);
    __Func_8003dec(node++, 0xff);

    if ((iwram_3001e40 & 0xf) > 4) {
        struct FieldActor *actor;
        mask = 0x80 << 23;
        actor = (struct FieldActor *)__GetFieldActor(data->field_e0);
        if (actor != 0) {
            x = _divsi3_RAM(actor->x - data->field_e8, 0xe0 << 12) + 0x70;
            y = _divsi3_RAM(actor->y - data->field_ec, 0xe0 << 12) + data->field_da * 6;
            r7 = (y - 4) & 0xff;
            *out++ = count;
            r7 |= x << 16;
            r7 |= mask;
            *out++ = r7;
            *out++ = (slot_val + 12) | (0xe4 << 8);
            __Func_8003dec(node++, 0xff);
        }

        actor = (struct FieldActor *)__GetFieldActor(data->field_de);
        if (actor != 0) {
            x = _divsi3_RAM(actor->x - data->field_e8, 0xe0 << 12) + 0x70;
            y = _divsi3_RAM(actor->y - data->field_ec, 0xe0 << 12) + data->field_da * 6;
            r7 = (y - 4) & 0xff;
            *out++ = count;
            r7 |= x << 16;
            r7 |= mask;
            *out++ = r7;
            *out = (slot_val + 8) | (0xe4 << 8);
            __Func_8003dec(node, 0xff);
        }
    }
}
