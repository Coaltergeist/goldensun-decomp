#include "actor.h"
#include "gba/types.h"

#define PushObjExec OvlFunc_968_2008374

extern u32 MapDirTbl[] __asm__(".L50e8");

extern struct Actor *__MapActor_GetActor(u32 actorNo);
extern struct Actor *OvlFunc_968_200832c(
    const vec3_t *position,
    const struct Actor *excludedActor);
extern int __TestCollision(struct Actor *actor, const vec3_t *position);
extern void __Actor_SetAnim(struct Actor *actor, u32 animationNo);
extern void __WaitFrames(u32 frames);
extern void __PlaySound(u32 soundNo);
extern void __Actor_TravelTo(struct Actor *actor, s32 x, s32 y, s32 z);
extern void __Actor_WaitMovement(struct Actor *actor);
extern void __Func_809202c(void);

/* プレイヤー前方のOBJを１マス押す */
void PushObjExec(void)
{
    vec3_t destination;
    register struct Actor *player __asm__("r8");
    register struct Actor *object __asm__("r6");
    register vec3_t *position __asm__("r7");
    register u32 directionOffset __asm__("r5");
    register u32 work10 __asm__("r10");
    register u32 *directionTable __asm__("r9");
    struct Actor *blockingActor;

    {
        register struct Actor *r0 __asm__("r0");
        register u32 r1 __asm__("r1");
        register u32 r2 __asm__("r2");
        register u32 r3 __asm__("r3");

        r0 = __MapActor_GetActor(0);
        r3 = r0->facing;
        __asm__ volatile ("" : "+r" (r0), "+r" (r3));
        player = r0;
        __asm__ volatile ("" : "+r" (player), "+r" (r3));
        r3 >>= 12;
        r0 = (struct Actor *)MapDirTbl;
        __asm__ volatile ("" : "+r" (r0));
        directionOffset = r3 << 2;
        r2 = 0xffff0000;
        r1 = *(u32 *)((u8 *)r0 + directionOffset);
        work10 = r2;
        r3 = work10;
        r2 = r1;
        __asm__ volatile ("" : "+r" (r2), "+r" (r3));
        directionTable = (u32 *)r0;
        r0 = player;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1), "+r" (r2),
                          "+r" (r3));
        __asm__ volatile ("" : "+r" (directionOffset), "+r" (work10),
                          "+r" (directionTable));
        r2 &= r3;
        r3 = r0->pos.x;
        position = &destination;
        r3 += r2;
        position->x = r3;
        r3 = r0->pos.y;
        position->y = r3;
        r3 = r0->pos.z;
        r1 <<= 16;
        r3 += r1;
        position->z = r3;
    }

    object = OvlFunc_968_200832c(position, player);
    if (object == 0)
        return;

    {
        register u32 r1 __asm__("r1");
        register u32 *r2 __asm__("r2") = directionTable;
        register u32 r3 __asm__("r3");

        r1 = *(u32 *)((u8 *)r2 + directionOffset);
        r3 = work10;
        r2 = (u32 *)r1;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2), "+r" (r3) :
                          "r" (directionOffset), "r" (directionTable));
        r2 = (u32 *)((u32)r2 & r3);
        position->x = object->pos.x + (u32)r2;
        position->y = object->pos.y;
        position->z = object->pos.z + (r1 << 16);
    }
    blockingActor = OvlFunc_968_200832c(position, object);
    if (blockingActor != 0 && (blockingActor->__unk59 & 1) != 0)
        return;

    position->x = object->pos.x;
    position->y = object->pos.y + 0x100000;
    position->z = object->pos.z;
    blockingActor = OvlFunc_968_200832c(position, object);
    if (blockingActor != 0 && (blockingActor->__unk59 & 1) != 0)
        return;

    object->layer = 2;
    {
        register u32 r1 __asm__("r1");
        register u32 *r2 __asm__("r2") = directionTable;
        register u32 r3 __asm__("r3");

        r1 = *(u32 *)((u8 *)r2 + directionOffset);
        r3 = work10;
        r2 = (u32 *)r1;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2), "+r" (r3) :
                          "r" (directionOffset), "r" (directionTable));
        r2 = (u32 *)((u32)r2 & r3);
        position->x = object->pos.x + (u32)r2;
        position->y = object->pos.y;
        position->z = object->pos.z + (r1 << 16);
    }
    if (__TestCollision(object, position) > 0)
        return;

    work10 = *((u8 *)object + 0x62);
    if (work10 != 0)
        return;

    __Actor_SetAnim(player, 8);
    __WaitFrames(15);
    __PlaySound(0xb9);

    object->speed = 0x3333;
    object->bounce = 0x3333;
    {
        register struct Actor *r0 __asm__("r0");
        register s32 r1 __asm__("r1");
        register s32 r2 __asm__("r2");
        register s32 r3 __asm__("r3");

        r1 = position->x;
        r2 = position->y;
        r3 = position->z;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2), "+r" (r3));
        r0 = object;
        __asm__ volatile ("" : "+r" (r0));
        __Actor_TravelTo(r0, r1, r2, r3);
    }

    {
        register struct Actor *r0 __asm__("r0") = player;
        register s32 r1 __asm__("r1");
        register s32 r2 __asm__("r2");
        register s32 r3 __asm__("r3");

        __asm__ volatile ("" : "+r" (r0));
        r0->speed = 0x3333;
        r0->bounce = 0x3333;
        r1 = position->x;
        r2 = position->y;
        r3 = position->z;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2), "+r" (r3));
        __Actor_TravelTo(r0, r1, r2, r3);
    }

    __Actor_WaitMovement(object);
    __Func_809202c();

    {
        register s32 r0 __asm__("r0");
        register s32 r1 __asm__("r1");
        register struct Actor *r2 __asm__("r2");
        register s32 r3 __asm__("r3");

        r3 = position->x;
        object->pos.x = r3;
        r3 = position->z;
        r1 = work10;
        __asm__ volatile ("" : "+r" (r1), "+r" (r3));
        object->pos.z = r3;
        object->motion.x = r1;
        object->motion.z = r1;

        r3 = 0x80;
        r2 = player;
        __asm__ volatile ("" : "+r" (r2), "+r" (r3));
        r3 <<= 24;
        *(s32 *)((u8 *)r2 + 0x38) = r3;
        *(s32 *)((u8 *)r2 + 0x40) = r3;

        r0 = 0x0a;
        r3 = *(s16 *)((u8 *)r2 + r0);
        r3 <<= 16;
        *(s32 *)((u8 *)r2 + 0x24) = r1;
        *(s32 *)((u8 *)r2 + 0x2c) = r1;
        *(s32 *)((u8 *)r2 + 0x08) = r3;

        r1 = 0x12;
        r3 = *(s16 *)((u8 *)r2 + r1);
        r3 <<= 16;
        *(s32 *)((u8 *)r2 + 0x10) = r3;
        r0 = (s32)player;
        r1 = 1;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1));
        __Actor_SetAnim((struct Actor *)r0, r1);
    }
}
