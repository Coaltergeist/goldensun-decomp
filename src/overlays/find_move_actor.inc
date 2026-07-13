#include "gba/types.h"

/*
 * マップ共通: プレイヤーの前方に接触している移動OBJを検索する。
 * 各オーバレイでは関数名、向き判定、当たり範囲、方向表だけを差し替える。
 */
typedef struct {
    u8 padding00[6];
    u16 direction;
    s32 x;
    s32 y;
    s32 z;
    u8 padding14[0x3c];
    u8 *animation;
} MoveMapActor;

typedef struct {
    u8 padding00[0xa];
    s16 x;
    u8 padding0c[6];
    s16 z;
} MoveMapActorTile;

extern u8 iwram_3001ebc[];
extern s32 MoveDirectionCodes[] __asm__(MOVE_DIRECTION_CODE_TABLE);
extern s32 MoveCollisionBounds[] __asm__(MOVE_COLLISION_BOUNDS_TABLE);
extern s32 MoveFacingOffsets[] __asm__(MOVE_FACING_OFFSET_TABLE);
extern MoveMapActor *__MapActor_GetActor(int actorId);

MoveMapActor *FIND_MOVE_ACTOR_FUNC(u32 *playerDirection, u32 *actorIndex,
                                  u32 *objectDirection)
{
    MoveMapActor **actorTable;
    MoveMapActor *player;
    MoveMapActor **actorEntry;
    u32 index;

    actorTable = *(MoveMapActor ***)iwram_3001ebc;
    player = __MapActor_GetActor(0);
    *playerDirection = player->direction >> 12;
    actorEntry = (MoveMapActor **)((u8 *)actorTable + 0x34);
    index = 8;

    do {
        MoveMapActor *actor;
        s16 directionCode;
        s32 *direction;
        register s32 *bounds __asm__("r0");
        u32 directionIndex;

        actor = *actorEntry;
        directionIndex = 0;
        directionCode = **(s16 **)(actor->animation + 0x28);
        bounds = MoveCollisionBounds;
        direction = MoveDirectionCodes;

        do {
            if (directionCode == *direction++) {
                register s32 *facingTable __asm__("r4");
                register s32 facing __asm__("r2");
                register s32 rawPosition __asm__("r1");
                register MoveMapActor *positionActor __asm__("r1");
                register u32 *directionPointer __asm__("r2");
                register u32 directionOffset __asm__("r3");
                register s32 facingHigh __asm__("r3");
                register s32 playerXRaw __asm__("lr");
                s32 playerZRaw;
                s32 playerX;
                s32 playerZ;
                s32 actorXBase;
                s32 actorZBase;
                s32 actorX0;
                s32 actorZ0;
                s32 actorX1;
                s32 actorZ1;

                *objectDirection = directionIndex;
                directionPointer = playerDirection;
                asm volatile("" : "+r"(directionPointer));
                directionOffset = *directionPointer;
                facingTable = MoveFacingOffsets;
                directionOffset <<= 2;
                positionActor = player;
                asm volatile("" : "+r"(directionOffset), "+r"(facingTable),
                             "+r"(positionActor));
                facing = *(s32 *)((u8 *)facingTable + directionOffset);
                rawPosition = positionActor->x;
                asm volatile("" : "+r"(rawPosition));
                facingHigh = facing >> 16;
                playerXRaw = rawPosition;
                rawPosition >>= 16;
                rawPosition += facingHigh;
                playerX = rawPosition >> 4;
                positionActor = player;
                asm volatile("" : "+r"(positionActor));
                rawPosition = positionActor->z;
                asm volatile("" : "+r"(rawPosition));
                playerZRaw = rawPosition;
                playerZ = ((playerZRaw >> 16) + (s16)facing) >> 4;
                actorXBase = ((MoveMapActorTile *)actor)->x;
                actorX0 = (actorXBase + bounds[0]) >> 4;
                actorZBase = ((MoveMapActorTile *)actor)->z;
                actorZ0 = (actorZBase + bounds[1]) >> 4;
                actorX1 = (actorXBase + bounds[2]) >> 4;
                actorZ1 = (actorZBase + bounds[3]) >> 4;

                if (actorX0 <= playerX && playerX < actorX1 &&
                    actorZ0 <= playerZ && playerZ < actorZ1) {
                    if ((directionIndex & 1) != 0) {
                        if (actorX0 != (playerXRaw >> 20)) {
                            *actorIndex = index;
                            return actor;
                        }
                    } else if (actorZ0 != (playerZRaw >> 20)) {
                        *actorIndex = index;
                        return actor;
                    }
                }
            }
            directionIndex++;
            bounds += 4;
        } while (directionIndex <= 5);

        {
            register u32 nextIndex __asm__("r3");
            register u32 actorEntrySize __asm__("r2");

            nextIndex = index;
            actorEntrySize = sizeof(*actorEntry);
            asm volatile("" : "+r"(nextIndex), "+r"(actorEntrySize));
            nextIndex++;
            actorEntry =
                (MoveMapActor **)((u8 *)actorEntry + actorEntrySize);
            asm volatile("" : : "r"(actorEntry), "r"(player));
            index = nextIndex;
        }
    } while (index < 0x42);

    return 0;
}
