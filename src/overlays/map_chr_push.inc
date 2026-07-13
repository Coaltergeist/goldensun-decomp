#include "actor.h"
#include "gba/types.h"

/*
 * マップ共通: 前方のマップキャラを押して移動する。
 * 各オーバレイでは関数名、座標検索、方向テーブルだけを差し替える。
 */
struct MapPosition {
    fx32 x;
    fx32 y;
    fx32 z;
};

extern const u32 MapDirectionOffsets[] __asm__(MAP_DIRECTION_TABLE);

extern struct Actor *__MapActor_GetActor(int actorId);
extern struct Actor *MAP_CHR_POS_SEARCH(
    const struct MapPosition *position,
    const struct Actor *excludedActor);
extern int __TestCollision(struct Actor *actor,
                           const struct MapPosition *position);
extern void __Actor_SetAnim(struct Actor *actor, int animation);
extern void __WaitFrames(int frames);
extern void __PlaySound(int soundId);
extern void __Actor_TravelTo(struct Actor *actor, fx32 x, fx32 y, fx32 z);
extern void __Actor_WaitMovement(struct Actor *actor);
extern void __Func_809202c(void);

void MAP_CHR_PUSH_FUNC(void)
{
    struct MapPosition nextPosition;
    register struct Actor *player __asm__("r8");
    register struct Actor *actor __asm__("r6");
    register const u32 *directionOffsets __asm__("r9");
    register u32 directionTableOffset __asm__("r5");
    register u32 tileMask __asm__("r10");
    register struct MapPosition *position __asm__("r7");
    struct Actor *blockingActor;

    {
        register struct Actor *result __asm__("r0");
        register u32 facing __asm__("r3");
        register const u32 *table __asm__("r0");
        register u32 working __asm__("r2");
        register u32 directionOffset __asm__("r1");
        register u32 maskLow __asm__("r3");
        register struct Actor *playerLow __asm__("r0");

        result = __MapActor_GetActor(0);
        facing = result->facing;
        asm volatile("" : "+r"(facing), "+r"(result));
        player = result;
        asm volatile("" : "+r"(facing), "+r"(player));
        facing >>= 12;
        table = MapDirectionOffsets;
        asm volatile("" : "+r"(table), "+r"(facing));
        directionTableOffset = facing << 2;
        asm volatile("" : "+r"(table), "+r"(directionTableOffset));
        working = 0xffff0000;
        directionOffset = *(const u32 *)
            ((const u8 *)table + directionTableOffset);
        tileMask = working;
        asm volatile("" : "+r"(tileMask), "+r"(working),
                              "+r"(directionOffset), "+r"(table));
        maskLow = tileMask;
        asm volatile("" : "+r"(maskLow), "+r"(directionOffset),
                              "+r"(table));
        working = directionOffset;
        asm volatile("" : "+r"(maskLow), "+r"(working),
                              "+r"(directionOffset), "+r"(table));
        directionOffsets = table;
        asm volatile("" : "+r"(maskLow), "+r"(working),
                              "+r"(directionOffset), "+r"(directionOffsets));
        playerLow = player;
        asm volatile("" : "+r"(maskLow), "+r"(working),
                              "+r"(directionOffset), "+r"(directionOffsets),
                              "+r"(playerLow));

        working &= maskLow;
        position = &nextPosition;
        position->x = playerLow->pos.x + working;
        position->y = playerLow->pos.y;
        position->z = playerLow->pos.z + (directionOffset << 16);
    }

    /* プレイヤーの前方にいるキャラを調べる。 */
    actor = MAP_CHR_POS_SEARCH(position, player);
    if (actor == 0)
        return;

    {
        register u32 working __asm__("r2") = (u32)directionOffsets;
        register u32 directionOffset __asm__("r1");
        register u32 maskLow __asm__("r3");

        asm volatile("" : "+r"(working), "+r"(directionTableOffset));
        directionOffset = *(const u32 *)
            ((const u8 *)working + directionTableOffset);
        maskLow = tileMask;
        working = directionOffset;
        asm volatile("" : "+r"(working), "+r"(directionOffset),
                              "+r"(maskLow));
        working &= maskLow;
        position->x = actor->pos.x + working;
        position->y = actor->pos.y;
        position->z = actor->pos.z + (directionOffset << 16);
    }
    blockingActor = MAP_CHR_POS_SEARCH(position, actor);
    if (blockingActor != 0 && (blockingActor->__unk59 & 1) != 0)
        return;

    {
        register u32 yOffset __asm__("r0") = 0x80;

        position->x = actor->pos.x;
        yOffset <<= 13;
        position->y = actor->pos.y + yOffset;
        position->z = actor->pos.z;
    }
    blockingActor = MAP_CHR_POS_SEARCH(position, actor);
    if (blockingActor != 0 && (blockingActor->__unk59 & 1) != 0)
        return;

    /* 移動先がふさがっている時は押さない。 */
    actor->layer = 2;
    {
        register u32 working __asm__("r2") = (u32)directionOffsets;
        register u32 directionOffset __asm__("r1");
        register u32 maskLow __asm__("r3");

        asm volatile("" : "+r"(working), "+r"(directionTableOffset));
        directionOffset = *(const u32 *)
            ((const u8 *)working + directionTableOffset);
        maskLow = tileMask;
        working = directionOffset;
        asm volatile("" : "+r"(working), "+r"(directionOffset),
                              "+r"(maskLow));
        working &= maskLow;
        position->x = actor->pos.x + working;
        position->y = actor->pos.y;
        position->z = actor->pos.z + (directionOffset << 16);
    }
    if (__TestCollision(actor, position) > 0)
        return;
    tileMask = ((u8 *)&actor->__unk60)[2];
    if (tileMask != 0)
        return;

    __Actor_SetAnim(player, 8);
    __WaitFrames(15);
    __PlaySound(0xb9);

    actor->speed = 0x3333;
    actor->bounce = 0x3333;
    {
        volatile struct MapPosition *orderedPosition = position;
        register fx32 x __asm__("r1");
        register fx32 y __asm__("r2");
        register fx32 z __asm__("r3");
        register struct Actor *actorLow __asm__("r0");

        x = orderedPosition->x;
        y = orderedPosition->y;
        z = orderedPosition->z;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z) : : "r0");
        actorLow = actor;
        __Actor_TravelTo(actorLow, x, y, z);
    }

    {
        volatile struct MapPosition *orderedPosition = position;
        register struct Actor *playerLow __asm__("r0") = player;
        register fx32 x __asm__("r1");
        register fx32 y __asm__("r2");
        register fx32 z __asm__("r3");

        asm volatile("" : "+r"(playerLow));
        playerLow->speed = 0x3333;
        playerLow->bounce = 0x3333;
        x = orderedPosition->x;
        y = orderedPosition->y;
        z = orderedPosition->z;
        __Actor_TravelTo(playerLow, x, y, z);
    }

    __Actor_WaitMovement(actor);
    __Func_809202c();

    /* 移動後の座標と速度を補正する。 */
    {
        register s32 value __asm__("r3");
        register u32 zero __asm__("r1");
        register struct Actor *playerLow __asm__("r2");
        register u32 fieldOffset __asm__("r0");

        value = position->x;
        actor->pos.x = value;
        value = position->z;
        asm volatile("" : "+r"(value));
        zero = tileMask;
        asm volatile("" : "+r"(value), "+r"(zero));
        actor->pos.z = value;
        actor->motion.x = zero;
        actor->motion.z = zero;

        value = 0x80;
        playerLow = player;
        asm volatile("" : "+r"(value), "+r"(playerLow), "+r"(zero));
        value <<= 24;
        playerLow->gravity = value;
        *(u32 *)&playerLow->__unk40[0] = value;

        fieldOffset = 10;
        value = *(s16 *)((u8 *)playerLow + fieldOffset);
        value <<= 16;
        playerLow->motion.x = zero;
        playerLow->motion.z = zero;
        playerLow->pos.x = value;

        fieldOffset = 18;
        value = *(s16 *)((u8 *)playerLow + fieldOffset);
        value <<= 16;
        playerLow->pos.z = value;
    }
    __Actor_SetAnim(player, 1);
}
