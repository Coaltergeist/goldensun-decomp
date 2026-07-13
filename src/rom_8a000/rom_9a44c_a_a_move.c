#include "gba/types.h"

typedef struct FieldMoveObj_809a44c {
    u8 unk00[0x08];
    s32 pos_x;
    s32 pos_y;
    s32 pos_z;
    u8 unk14[0x04];
    s32 velocity_x;
    s32 velocity_y;
    u8 unk20[0x10];
    s32 accel_x;
    s32 accel_y;
    u8 unk38[0x0c];
    s32 delta_x;
    s32 delta_y;
    s32 delta_z;
    struct FieldMoveObj_809a44c *target;
    u8 unk54[0x10];
    u16 angle_delta;
} FieldMoveObj_809a44c;

void Func_809a44c(FieldMoveObj_809a44c *obj)
{
    obj->pos_x += obj->delta_x;
    obj->pos_y += obj->delta_y;
    obj->pos_z += obj->delta_z;
    obj->velocity_x += obj->accel_x;
    obj->velocity_y += obj->accel_y;
    __asm__ volatile ("" : : : "memory");
    *(u16 *)((u8 *)obj->target + 0x1e) += obj->angle_delta;
}
