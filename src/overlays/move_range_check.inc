#include "gba/types.h"

/*
 * マップ共通: 移動方向へ当たり判定を行い、進めるマス数を求める。
 * 各オーバレイでは関数名、アクタ検索、形状表、方向表だけを差し替える。
 */
typedef struct {
    s32 shapeNo;
    s32 _unk04;
    s32 x;
    s32 y;
    s32 z;
    s32 _unk14;
} MoveCheck;

typedef struct {
    u8 _pad00[8];
    s32 x;
    s32 y;
    s32 z;
    u8 _pad14[0xe];
    u8 layer;
} MoveActor;

typedef struct {
    s32 x0;
    s32 z0;
    s32 x1;
    s32 z1;
} MoveShape;

typedef struct {
    s32 x;
    s32 y;
    s32 z;
} MovePosition;

extern s32 MoveDirectionTable[] __asm__(MOVE_DIRECTION_TABLE);
extern MoveShape MoveShapeTable[] __asm__(MOVE_SHAPE_TABLE);
extern MoveActor *FIND_MOVE_ACTOR_FUNC(s32 *, s32 *, MoveCheck *);
extern s32 __TestCollision(MoveActor *, MovePosition *);

s32 MOVE_RANGE_CHECK_FUNC(MoveCheck *work)
{
    register MoveCheck *move __asm__("r6") = work;
    register MoveActor *actor __asm__("r10");
    register s32 xCount __asm__("r9");
    register MovePosition *scanPos __asm__("r8");
    register MovePosition *advancePos __asm__("r11");
    s32 *testPos;
    s32 steps;
    s32 zCount;
    u8 *layerPtr;
    s32 directionNo;
    MovePosition position;
    s32 ix;
    s32 iz;

    {
        register MoveActor *r0 __asm__("r0") = (MoveActor *)&directionNo;
        register s32 *r1 __asm__("r1") = &move->_unk04;
        register MoveCheck *r2 __asm__("r2") = move;
        move->_unk14 = 0;
        r0 = FIND_MOVE_ACTOR_FUNC((s32 *)r0, r1, r2);
        actor = r0;
        __asm__ volatile ("" : "+r" (r0), "+r" (actor));
        if (r0 == 0) {
            r0 = 0;
            __asm__ volatile ("" : "+r" (r0));
            return (s32)r0;
        }
    }

    {
        register u8 *r0 __asm__("r0") = &actor->layer;
        register s32 r3 __asm__("r3") = 2;
        __asm__ volatile ("" : "+r" (r0), "+r" (r3));
        layerPtr = r0;
        *r0 = (u8)r3;
    }
    {
        register s32 r3 __asm__("r3");
        register s32 r1 __asm__("r1");
        register s32 r2 __asm__("r2");
        register s32 *r5 __asm__("r5");

        r3 = move->shapeNo;
        __asm__ volatile ("" : "+r" (r3));
        r1 = 0;
        steps = r1;
        __asm__ volatile ("" : "+r" (r1), "+r" (r3));
        r5 = (s32 *)MoveShapeTable;
        __asm__ volatile ("" : "+r" (r1), "+r" (r3), "+r" (r5));
        r1 = r3 << 4;
        r3 = r1 + 4;
        r2 = *(s32 *)((u8 *)r5 + r3);
        if (r2 < 0)
            r2 = -r2;
        r3 = r1;
        r3 += 12;
        r3 = *(s32 *)((u8 *)r5 + r3);
        if (r3 < 0)
            r3 = -r3;
        r3 = (r2 + r3) >> 4;
        zCount = r3;

        r2 = *(s32 *)((u8 *)r5 + r1);
        if (r2 < 0)
            r2 = -r2;
        r3 = r1;
        r3 += 8;
        r3 = *(s32 *)((u8 *)r5 + r3);
        if (r3 < 0)
            r3 = -r3;
        r3 = (r2 + r3) >> 4;
        xCount = r3;
    }

    {
        register s32 r0 __asm__("r0");
        register s32 *r1 __asm__("r1");
        register s32 r2 __asm__("r2");
        register s32 r3 __asm__("r3");
        register MoveActor *r4 __asm__("r4");

        r3 = directionNo;
        __asm__ volatile ("" : "+r" (r3));
        r1 = MoveDirectionTable;
        __asm__ volatile ("" : "+r" (r1), "+r" (r3));
        r2 = (s32)&position;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2), "+r" (r3));
        r3 <<= 2;
        scanPos = (MovePosition *)r2;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2), "+r" (r3),
                          "+r" (scanPos));
        r2 = *(s32 *)((u8 *)r1 + r3);
        r3 = 0xffff0000;
        __asm__ volatile ("" : "+r" (r3));
        r4 = actor;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2), "+r" (r3),
                          "+r" (r4), "+r" (scanPos));
        r2 &= r3;
        r3 = r4->x;
        __asm__ volatile ("" : "+r" (r3));
        r0 = (s32)scanPos;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1), "+r" (r2),
                          "+r" (r3));
        __asm__ volatile ("" : "+r" (r4), "+r" (scanPos));
        r3 += r2;
        *(s32 *)r0 = r3;
        r0 = r4->y;
        r2 = (s32)scanPos;
        *(s32 *)(r2 + 4) = r0;
        r3 = directionNo;
        r3 <<= 2;
        r2 = *(s32 *)((u8 *)r1 + r3);
        r3 = r4->z;
        r2 <<= 16;
        r4 = (MoveActor *)scanPos;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1), "+r" (r2),
                          "+r" (r3));
        __asm__ volatile ("" : "+r" (r4), "+r" (scanPos));
        r3 += r2;
        *(s32 *)((u8 *)r4 + 8) = r3;
        r4 = (MoveActor *)move;
        move->y = r0;
        r4 = (MoveActor *)((u8 *)r4 + 8);
        testPos = (s32 *)r4;
        advancePos = scanPos;
    }

scan_next_tile:
    {
        register s32 *r0 __asm__("r0") = (s32 *)MoveShapeTable;
        register MovePosition *r1 __asm__("r1") = scanPos;
        register s32 r2 __asm__("r2");
        register s32 r3 __asm__("r3") = move->shapeNo;

        r3 <<= 4;
        r3 += 4;
        r2 = *(s32 *)((u8 *)r0 + r3);
        r3 = r1->z;
        r2 <<= 16;
        r3 += r2;
        r2 = zCount;
        __asm__ volatile ("" : "+r" (r2), "+r" (r3));
        iz = 0;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1), "+r" (r2),
                          "+r" (r3), "+r" (iz));
        move->z = r3;
        if (iz >= r2)
            goto advance_tile;
    }

scan_next_row:
    {
        register s32 *r0 __asm__("r0") = (s32 *)MoveShapeTable;
        register MovePosition *r1 __asm__("r1") = scanPos;
        register s32 r2 __asm__("r2");
        register s32 r3 __asm__("r3") = move->shapeNo;

        r3 <<= 4;
        r2 = *(s32 *)((u8 *)r0 + r3);
        r3 = r1->x;
        r2 <<= 16;
        r3 += r2;
        ix = 0;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1), "+r" (r2),
                          "+r" (r3), "+r" (ix));
        move->x = r3;
        if (ix >= xCount)
            goto advance_row;
    }

test_next_position:
    if (__TestCollision(actor, (MovePosition *)testPos) == 2)
        goto blocked;
    {
        register s32 r2 __asm__("r2");
        register s32 r3 __asm__("r3") = *testPos;
        __asm__ volatile ("" : "+r" (r3));
        r2 = 0x100000;
        r3 += r2;
        ix++;
        *testPos = r3;
        __asm__ volatile ("" : "+r" (r2), "+r" (r3), "+r" (ix));
    }
    if (ix < xCount)
        goto test_next_position;

advance_row:
    {
        register s32 r0 __asm__("r0");
        register s32 r1 __asm__("r1");
        register s32 r3 __asm__("r3");

        r3 = move->z;
        __asm__ volatile ("" : "+r" (r3));
        r0 = 0x100000;
        __asm__ volatile ("" : "+r" (r0), "+r" (r3));
        r1 = zCount;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1), "+r" (r3));
        r3 += r0;
        iz++;
        move->z = r3;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1), "+r" (r3),
                          "+r" (iz));
        if (iz < r1)
            goto scan_next_row;
    }

advance_tile:
    {
        register s32 *r0 __asm__("r0");
        register MovePosition *r1 __asm__("r1");
        register s32 r2 __asm__("r2") = steps;
        register s32 r3 __asm__("r3") = directionNo;

        r2++;
        steps = r2;
        r0 = MoveDirectionTable;
        r3 <<= 2;
        r2 = *(s32 *)((u8 *)r0 + r3);
        r3 = 0xffff0000;
        r1 = advancePos;
        r2 &= r3;
        r3 = r1->x;
        r3 += r2;
        r1->x = r3;
        r3 = directionNo;
        r3 <<= 2;
        r2 = *(s32 *)((u8 *)r0 + r3);
        r3 = r1->z;
        r2 <<= 16;
        r3 += r2;
        r1->z = r3;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1),
                          "+r" (r2), "+r" (r3));
    }
    goto scan_next_tile;

blocked:
    {
        register u8 *r2 __asm__("r2") = layerPtr;
        register s32 r3 __asm__("r3") = 0;

        *r2 = (u8)r3;
        r3 = steps;
        __asm__ volatile ("" : "+r" (r2), "+r" (r3));
        if (r3 == 0)
            return 0;
    }
    {
        register MoveActor *r0 __asm__("r0");
        register s32 r1 __asm__("r1");
        register s32 r2 __asm__("r2");
        register s32 r3 __asm__("r3");
        register s32 r4 __asm__("r4");

        r3 = directionNo;
        r2 = (s32)MoveDirectionTable;
        __asm__ volatile ("" : "+r" (r2), "+r" (r3));
        r3 <<= 2;
        r2 = *(s32 *)((u8 *)r2 + r3);
        r3 = 0xffff0000;
        __asm__ volatile ("" : "+r" (r2), "+r" (r3));
        r4 = steps;
        r3 &= r2;
        __asm__ volatile ("" : "+r" (r2), "+r" (r3), "+r" (r4));
        r1 = r4;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2), "+r" (r3),
                          "+r" (r4));
        r1 *= r3;
        __asm__ volatile ("" : "+r" (r1), "+r" (r2));
        r2 <<= 16;
        r2 *= r4;
        r0 = actor;
        __asm__ volatile ("" : "+r" (r0), "+r" (r1), "+r" (r2),
                          "+r" (r3), "+r" (r4));
        r3 = r0->x;
        r3 += r1;
        move->x = r3;
        r3 = r0->y;
        move->y = r3;
        r3 = r0->z;
        r3 += r2;
        move->z = r3;
    }
    return 1;
}
