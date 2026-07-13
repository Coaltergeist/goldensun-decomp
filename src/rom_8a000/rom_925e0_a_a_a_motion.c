#include "gba/types.h"

typedef struct ActorMotion_80925e0 {
    u8 unk00[0x08];
    s32 pos_x;
    s32 pos_y;
    s32 pos_z;
    u8 unk14[0x1c];
    s32 speed_x;
    s32 speed_z;
    s32 draw_x;
    s32 draw_y;
    s32 draw_z;
} ActorMotion_80925e0;

void Func_80925e0(ActorMotion_80925e0 *actor)
{
    s32 speed_x = actor->speed_x;
    s32 speed_z;

    actor->pos_x += speed_x;
    actor->draw_x = actor->pos_x;
    speed_z = actor->speed_z;
    actor->pos_z += speed_z;
    actor->draw_z = actor->pos_z;
    actor->pos_y += 0x400;
    actor->draw_y = actor->pos_y;
    actor->speed_x -= speed_x / 0x12;
    actor->speed_z -= speed_z / 0x10;
}
