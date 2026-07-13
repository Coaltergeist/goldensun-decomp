#include "actor.h"
#include "gba/types.h"

extern void __Func_8010704(s32 sourceX, s32 sourceZ, s32 width, s32 height,
                           s32 destinationX, s32 destinationZ);
extern void ACTOR_PAIR_SWAP_FUNC(u32 firstActorNo, u32 secondActorNo);
extern struct Actor *__MapActor_GetActor(s32 actorNo);

/* 必要なら二人の立ち位置を入れ替え、マップ上の占有範囲を更新する。 */
void ACTOR_PAIR_MAP_FUNC(void)
{
    register s32 destinationX __asm__("r3") = MAP_DESTINATION_X;
    register s32 destinationZ __asm__("r2") = MAP_DESTINATION_Z;
    register s32 actorX __asm__("r5");
    register s32 actorZ __asm__("r3");

    /* 引数の組み立て順を元のコンパイラ出力に合わせる。 */
    __asm__ volatile ("" : "+r" (destinationX), "+r" (destinationZ));
    __Func_8010704(MAP_SOURCE_X, MAP_SOURCE_Z, MAP_WIDTH, MAP_HEIGHT,
                   destinationX, destinationZ);

    ACTOR_PAIR_SWAP_FUNC(FIRST_ACTOR, SECOND_ACTOR);

    actorX = __MapActor_GetActor(SECOND_ACTOR)->pos.x;
    actorZ = __MapActor_GetActor(SECOND_ACTOR)->pos.z;
    actorZ >>= 20;
    __asm__ volatile ("" : "+r" (actorZ));
    __Func_8010704(2, 0x24, 1, 1, (actorX >>= 20, actorX), actorZ);

    actorX = __MapActor_GetActor(FIRST_ACTOR)->pos.x;
    actorZ = __MapActor_GetActor(FIRST_ACTOR)->pos.z;
    actorZ >>= 20;
    __asm__ volatile ("" : "+r" (actorZ));
    __Func_8010704(2, 0x24, 1, 1, (actorX >>= 20, actorX), actorZ);
}
