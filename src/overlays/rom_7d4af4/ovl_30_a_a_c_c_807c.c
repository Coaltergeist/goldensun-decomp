typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

typedef struct {
    u8 pad0[6];
    u16 angle;
    s32 x;
    s32 y;
    s32 z;
    u8 pad14[0x47];
    u8 field5b;
} MapActor;

extern s32 OvlFunc_949_2008040(const s32 *, const s32 *);
extern s32 __atan2(s32, s32);
extern void __Actor_SetAnim(MapActor *, s32);
extern MapActor *__MapActor_GetActor(s32);

s32 OvlFunc_949_200807c(MapActor *actor, MapActor *target, s32 distance, s32 force)
{
    u32 angle;
    u32 facing;
    u32 angle0;
    u32 angle_p1;
    u32 angle_m1;
    u32 angle_p2;
    u32 angle_m2;
    s32 result;

    result = 0;
    if (OvlFunc_949_2008040(&target->x, &actor->x) < distance || force) {
        angle = (u16)__atan2(target->z - actor->z, target->x - actor->x);
        angle_m2 = (angle - 0x2000) & 0xf000;
        angle_p2 = (angle + 0x2000) & 0xf000;
        angle_m1 = (angle - 0x1000) & 0xf000;
        angle_p1 = (angle + 0x1000) & 0xf000;
        angle0 = angle & 0xf000;
        facing = actor->angle & 0xf000;
        if (angle0 == facing ||
            angle_p1 == facing ||
            angle_m1 == facing ||
            force) {
            actor->field5b = 1;
            __Actor_SetAnim(actor, 1);
            result = 1;
        }
        if (target == __MapActor_GetActor(0) &&
            (angle_p2 == facing || angle_m2 == facing)) {
            actor->field5b = 1;
            __Actor_SetAnim(actor, 1);
            result = 1;
        }
    } else {
        actor->field5b = 0;
        __Actor_SetAnim(actor, 2);
    }
    return result;
}
