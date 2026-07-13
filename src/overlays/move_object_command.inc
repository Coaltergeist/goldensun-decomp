#include "actor.h"
#include "gba/types.h"

/* 移動OBJの矩形範囲。単位はマップ内部座標。 */
typedef struct {
    s32 x0;
    s32 z0;
    s32 x1;
    s32 z1;
} MoveShape;

/* スクリプトから渡される移動命令。 */
typedef struct {
    s32 shapeNo;
    s32 actorNo;
    s32 destinationX;
    s32 destinationY;
    s32 destinationZ;
    void (*callback)(void);
} MoveCommand;

extern s32 iwram_3001e70[];
extern MoveShape MoveShapeTable[] __asm__(MOVE_SHAPE_TABLE);
extern s32 MoveDirectionTable[] __asm__(MOVE_DIRECTION_TABLE);

extern struct Actor *__MapActor_GetActor(s32 actorNo);
extern void __MapActor_SetSpeed(s32 actorNo, s32 speed, s32 acceleration);
extern void __MapActor_SetAnim(s32 actorNo, s32 animationNo);
extern void __MapActor_WaitMovement(s32 actorNo);
extern void __Actor_SetAnim(struct Actor *actor, s32 animationNo);
extern void __Actor_TravelTo(struct Actor *actor, s32 x, s32 y, s32 z);
extern void __Actor_WaitMovement(struct Actor *actor);
extern void __CutsceneWait(s32 frames);
extern void __PlaySound(s32 soundNo);
extern void __Func_809228c(s32 actorNo, s32 x, s32 z);
extern void __Func_8010704(s32 sourceX, s32 sourceZ, s32 width, s32 height,
                           s32 destinationX, s32 destinationZ);
extern void MAP_WRITE_FUNC(s32 bufferNo, s32 x, s32 z, s32 width,
                           s32 height, s32 attribute);
extern void MOVE_UPDATE_FUNC(struct Actor *actor);
extern void __Func_809202c(void);

/* 移動OBJを指定位置へ移し、移動前後のマップ属性を更新する。 */
void MOVE_OBJECT_FUNC(MoveCommand command)
{
#define shapeNo command.shapeNo
#define actorNo command.actorNo
#define destinationX command.destinationX
#define destinationY command.destinationY
#define destinationZ command.destinationZ
#define callback command.callback
    s32 *mapState;
    struct Actor *actor;
    vec3_t oldPosition;
    vec3_t *oldPositionPtr;
    vec3_t tilePosition;
    register s32 direction __asm__("r8");
    register s32 width __asm__("r9");
    s32 height;
    s32 x;
    s32 z;
    s32 mapX;
    s32 mapZ;

    /* 引数ホームの格納順を元のコンパイラ出力に合わせる。 */
    __asm__ volatile ("" : : : "memory");
    mapState = *(s32 **)iwram_3001e70;

    direction = __MapActor_GetActor(0)->facing >> 12;
    actor = __MapActor_GetActor(actorNo);
    height = ((MoveShapeTable[shapeNo].z0 < 0
                   ? -MoveShapeTable[shapeNo].z0
                   : MoveShapeTable[shapeNo].z0) +
              (MoveShapeTable[shapeNo].z1 < 0
                   ? -MoveShapeTable[shapeNo].z1
                   : MoveShapeTable[shapeNo].z1)) >> 4;
    width = ((MoveShapeTable[shapeNo].x0 < 0
                  ? -MoveShapeTable[shapeNo].x0
                  : MoveShapeTable[shapeNo].x0) +
             (MoveShapeTable[shapeNo].x1 < 0
                  ? -MoveShapeTable[shapeNo].x1
                  : MoveShapeTable[shapeNo].x1)) >> 4;

    {
        register s32 speed __asm__("r6") = 0x8000;
        register s32 acceleration __asm__("r5") = 0x1999;

        actor->speed = speed;
        actor->bounce = acceleration;
        oldPositionPtr = &oldPosition;
        oldPositionPtr->x = actor->pos.x;
        oldPositionPtr->z = actor->pos.z;

        tilePosition.x =
            actor->pos.x + (MoveShapeTable[shapeNo].x0 << 16);
        tilePosition.z =
            actor->pos.z + (MoveShapeTable[shapeNo].z0 << 16);
        tilePosition.x >>= 20;
        tilePosition.z >>= 20;
        MAP_WRITE_FUNC(0, tilePosition.x, tilePosition.z,
                       width, height, 0);
        __MapActor_SetSpeed(0, speed, acceleration);
    }
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);

    {
        register vec3_t *savedPosition __asm__("r4");
        register s32 deltaX __asm__("r1");
        register s32 deltaZ __asm__("r2");
        register s32 oldZ __asm__("r3");

        savedPosition = oldPositionPtr;
        __asm__ ("" : "+r"(savedPosition));
        deltaZ = destinationX;
        __asm__ ("" : "+r"(deltaZ));
        oldZ = savedPosition->x;
        __asm__ ("" : "+r"(oldZ));
        deltaX = deltaZ - oldZ;
        if (deltaX < 0) {
            register s32 adjustment __asm__("r0") = 0x1ffff;
            __asm__ ("" : "+r"(adjustment));
            deltaX += adjustment;
        }
        savedPosition = oldPositionPtr;
        __asm__ ("" : "+r"(savedPosition));
        deltaZ = destinationZ;
        __asm__ ("" : "+r"(deltaZ));
        oldZ = savedPosition->z;
        __asm__ ("" : "+r"(oldZ));
        deltaZ -= oldZ;
        deltaX >>= 17;
        if (deltaZ < 0) {
            register s32 adjustment __asm__("r0") = 0x1ffff;
            __asm__ ("" : "+r"(adjustment));
            deltaZ += adjustment;
        }
        deltaZ >>= 17;
        __Func_809228c(0, deltaX, deltaZ);
    }
    __MapActor_GetActor(0)->update = MOVE_UPDATE_FUNC;
    __CutsceneWait(4);

    if ((u32)(direction - 6) <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);

    __PlaySound(0xef);
    __Actor_TravelTo(actor, destinationX, destinationY, destinationZ);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    {
        register s32 mapActorNo __asm__("r0") = 0;
        register s32 moveSpeed __asm__("r1");
        register s32 moveAcceleration __asm__("r2");
        __asm__ volatile ("" : "+r"(mapActorNo) : : "memory");
        moveSpeed = 0x4ccc;
        __asm__ volatile ("" : "+r"(moveSpeed) : : "memory");
        moveAcceleration = 0x1999;
        __asm__ volatile ("" : "+r"(moveAcceleration) : : "memory");
        __MapActor_SetSpeed(mapActorNo, moveSpeed, moveAcceleration);
    }

    {
        register s32 packed __asm__("r0");
        register s32 *directionTable __asm__("r2");
        register s32 directionIndex __asm__("r1");
        register s32 directionOffset __asm__("r3");

        directionTable = MoveDirectionTable;
        __asm__ volatile ("" : "+r"(directionTable) : : "memory");
        directionIndex = direction;
        __asm__ ("" : "+r"(directionIndex));
        directionOffset = directionIndex << 2;
        __asm__ ("" : "+r"(directionOffset));
        packed = *(s32 *)((u8 *)directionTable + directionOffset);
        __asm__ ("" : "+r"(packed));
        x = (s16)(packed >> 16);
        z = (s16)packed;
        __Func_809228c(0, x / 2, z / 2);
    }
    if (callback != 0)
        callback();

    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 1);
    {
        struct Actor *mapActor;
        register s32 noUpdate __asm__("r2");

        mapActor = __MapActor_GetActor(0);
        noUpdate = 0;
        __asm__ ("" : "+r"(noUpdate));
        mapActor->update = (actorfun_t)noUpdate;
    }
    __Actor_WaitMovement(actor);
    __PlaySound(0x120);
    __PlaySound(0xd5);

    actor->pos.x = destinationX;
    actor->pos.z = destinationZ;
    {
        register s32 noMotion __asm__("r3") = 0;

        __asm__ ("" : "+r"(noMotion));
        actor->motion.x = noMotion;
        actor->motion.z = noMotion;
    }
    __Actor_SetAnim(actor, 1);

    {
        register s32 tileX __asm__("r0");
        register s32 tileZ __asm__("r1");
        register s32 mappedTileZ __asm__("r2");

        tileX =
            (destinationX + (MoveShapeTable[shapeNo].x0 << 16)) >> 20;
        tileZ =
            (destinationZ + (MoveShapeTable[shapeNo].z0 << 16)) >> 20;
        destinationX = tileX;
        destinationZ = tileZ;
        mapX = mapState[0x13c / 4] >> 20;
        mapZ = mapState[0x140 / 4] >> 20;
        mappedTileZ = mapZ + tileZ;
        __asm__ ("" : "+r"(mappedTileZ));
        __Func_8010704(tileX, tileZ, width, height,
                       mapX + tileX, mappedTileZ);
    }
    MAP_WRITE_FUNC(0, destinationX, destinationZ,
                   width, height, 0xff);
    MAP_WRITE_FUNC(2, destinationX, destinationZ,
                   width, height, 0xff);

    {
        register s32 tileX __asm__("r1");
        register s32 tileZ __asm__("r2");

        tileX =
            (oldPositionPtr->x +
             (MoveShapeTable[shapeNo].x0 << 16)) >> 20;
        tileZ =
            (oldPositionPtr->z +
             (MoveShapeTable[shapeNo].z0 << 16)) >> 20;
        oldPositionPtr->x = tileX;
        oldPositionPtr->z = tileZ;
        mapX += tileX;
        mapZ += tileZ;
        __Func_8010704(mapX, mapZ,
                       width, height, tileX, tileZ);
    }
    {
        register s32 bufferNo __asm__("r0");
        register s32 oldTileX __asm__("r1");
        register vec3_t *finalPosition __asm__("r2");
        s32 oldTileZ;
        register s32 callHeight __asm__("r3");
        register s32 noAttribute __asm__("r4");

        callHeight = height;
        __asm__ volatile ("" : "+r"(callHeight) : : "memory");
        finalPosition = oldPositionPtr;
        __asm__ ("" : "+r"(finalPosition));
        oldTileX = finalPosition->x;
        __asm__ volatile ("" : "+r"(oldTileX) : : "memory");
        noAttribute = 0;
        __asm__ volatile ("" : "+r"(noAttribute)
                          : "r"(oldTileX), "r"(finalPosition) : "memory");
        oldTileZ = finalPosition->z;
        __asm__ volatile ("" : "+r"(oldTileZ) : "r"(noAttribute) : "memory");
        bufferNo = 2;
        __asm__ volatile ("" : "+r"(bufferNo) : "r"(oldTileZ) : "memory");
        MAP_WRITE_FUNC(bufferNo, oldTileX, oldTileZ,
                       width, callHeight, noAttribute);
    }
    __Func_809202c();
#undef callback
#undef destinationZ
#undef destinationY
#undef destinationX
#undef actorNo
#undef shapeNo
}
