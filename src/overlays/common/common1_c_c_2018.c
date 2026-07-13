#include "actor.h"
#include "gba/types.h"

extern u8 iwram_3001ebc[];

/* 指定座標にいるマップアクターを検索する。 */
struct Actor *OvlFunc_common1_2018(const vec3_t *position)
{
    register const vec3_t *positionReg asm("r4");
    register u8 **tableAddress asm("r3");
    register u8 *actorTable asm("r2");
    register s32 rawX asm("r3");
    register struct Actor **actorEntry asm("r1");
    register u32 actorIndex asm("r5");
    register s32 positionX asm("r6");

    tableAddress = (u8 **)iwram_3001ebc;
    asm volatile("" : "+r"(tableAddress));
    positionReg = position;
    asm volatile("" : "+r"(positionReg), "+r"(tableAddress));
    actorTable = *tableAddress;
    rawX = positionReg->x;
    asm volatile("" : "+r"(actorTable), "+r"(rawX));
    actorEntry = (struct Actor **)actorTable;
    asm volatile("" : "+r"(actorEntry), "+r"(rawX));
    actorIndex = 8;
    asm volatile("" : "+r"(positionReg), "+r"(actorTable), "+r"(rawX));
    asm volatile("" : "+r"(actorEntry), "+r"(actorIndex));
    positionX = rawX >> 20;
    actorEntry = (struct Actor **)((u8 *)actorEntry + 0x34);

    do {
        struct Actor *actor;

        actor = *actorEntry++;
        if (positionX == actor->pos.x >> 20 &&
            positionReg->y >> 20 == actor->pos.y >> 20 &&
            positionReg->z >> 20 == actor->pos.z >> 20)
            return actor;
        actorIndex++;
    } while (actorIndex <= 0x41);
    return 0;
}
