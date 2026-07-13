#include "gba/types.h"

typedef struct FieldObj_809b0dc {
    u8 unk00[0x06];
    u16 angle;
    u8 unk08[0x04];
    s32 pos_y;
    u8 unk10[0x08];
    s32 height;
    s32 shadow_height;
    u8 unk20[0x34];
    u8 state;
} FieldObj_809b0dc;

void Func_809b0dc(FieldObj_809b0dc *obj)
{
    register s32 height __asm__("r2") = obj->height - 0x280;

    obj->shadow_height -= 0x280;
    obj->angle += 0x2000;
    obj->pos_y += 0x10000;
    obj->height = height;
    if (height < 0x3000) {
        obj->state = 0;
    }
}
