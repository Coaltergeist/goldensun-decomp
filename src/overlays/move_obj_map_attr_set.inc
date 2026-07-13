#include "gba/types.h"

typedef struct {
    s32 direction;
    s32 unused;
    s32 x;
    s32 y;
    s32 z;
    s32 padding;
} MoveObjMapWork;

extern u8 iwram_3001e70[];
extern s32 gMoveObjShapeTable[] __asm__(MOVE_OBJ_SHAPE_ASM);
extern s32 gMoveObjDirections[] __asm__(MOVE_OBJ_DIRECTIONS_ASM);

extern u8 *__MapActor_GetActor(int actorId);
extern void __Func_8010704(int sourceX, int sourceY, int width, int height,
                           int destinationX, int destinationY);
extern int MOVE_OBJ_MAP_ATTR_FUNCTION(int bufferIndex, int tileX, int tileY,
                                      int width, int height, int attribute);

/* 移動OBJ位置のマップ属性を設定 */
int MOVE_OBJ_FUNCTION(int actorId)
{
    MoveObjMapWork work;
    u8 *actor;
    s32 index;
    register s32 width __asm__("r6");
    register s32 height __asm__("r8");
    s32 heightRaw;
    s32 sourceX;
    s32 sourceY;
    register s32 mapOffsetX __asm__("r5");
    register s32 mapValue __asm__("r3");
    register s32 destinationX __asm__("r2");
    s32 shapeX;
    register s32 *mapState __asm__("r10");

    mapState = *(s32 **)iwram_3001e70;
    actor = __MapActor_GetActor(actorId);

    index = 0;
    if (**(s16 **)(*(u8 **)(actor + 0x50) + 0x28) ==
        gMoveObjDirections[index]) {
        work.direction = index;
    }
    else {
        do {
            index++;
            work.direction = 7;
            if ((u32)index > 5)
                goto direction_ready;
        } while (**(s16 **)(*(u8 **)(actor + 0x50) + 0x28) !=
                 gMoveObjDirections[index]);
        work.direction = index;
    }

direction_ready:
    if ((u32)work.direction > 6)
        return 0;

    work.x = *(s32 *)(actor + 8);
    work.y = *(s32 *)(actor + 0xc);
    work.z = *(s32 *)(actor + 0x10);
    heightRaw =
        (gMoveObjShapeTable[work.direction * 4 + 1] < 0
             ? -gMoveObjShapeTable[work.direction * 4 + 1]
             : gMoveObjShapeTable[work.direction * 4 + 1]) +
        (gMoveObjShapeTable[work.direction * 4 + 3] < 0
             ? -gMoveObjShapeTable[work.direction * 4 + 3]
             : gMoveObjShapeTable[work.direction * 4 + 3]);
    height = heightRaw >> 4;
    shapeX = gMoveObjShapeTable[work.direction * 4];
    width = shapeX < 0 ? -shapeX : shapeX;
    width += (gMoveObjShapeTable[work.direction * 4 + 2] < 0
                  ? -gMoveObjShapeTable[work.direction * 4 + 2]
                  : gMoveObjShapeTable[work.direction * 4 + 2]);

    work.x += shapeX << 16;
    sourceX = work.x >> 20;
    sourceY = (work.z +
               (gMoveObjShapeTable[work.direction * 4 + 1] << 16)) >> 20;
    work.x = sourceX;
    work.z = sourceY;
    width >>= 4;

    mapValue = mapState[0x13c / 4];
    mapOffsetX = mapValue >> 20;
    mapValue = mapState[0x140 / 4];
    mapValue >>= 20;
    destinationX = mapOffsetX + sourceX;
    mapValue += sourceY;
    __Func_8010704(sourceX, sourceY, width, height,
                   destinationX, mapValue);
    MOVE_OBJ_MAP_ATTR_FUNCTION(0, work.x, work.z, width, height, 0xff);
    MOVE_OBJ_MAP_ATTR_FUNCTION(2, work.x, work.z, width, height, 0xff);
    return 1;
}
