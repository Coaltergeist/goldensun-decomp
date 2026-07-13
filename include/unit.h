#ifndef _UNIT_H_
#define _UNIT_H_

#include "gba/types.h"

/*
 * Verified portions of Golden Sun's unit record. Unknown regions stay padded
 * so newly decompiled code can share durable field names without guessing at
 * the rest of the layout.
 */
struct UnitMove {
    u16 moveAndFlags;
    u16 unk02;
};

struct Unit {
    u8 unk00[0x0F];
    u8 level;                       /* 0x00F */
    u8 unk10[0x04];
    s16 displayHP;                  /* 0x014 */
    s16 displayPP;                  /* 0x016 */
    u8 unk18[0x1C];
    s16 maxHP;                      /* 0x034 */
    s16 maxPP;                      /* 0x036 */
    s16 hp;                         /* 0x038 */
    s16 pp;                         /* 0x03A */
    u8 unk3C[0x1C];
    struct UnitMove moves[32];      /* 0x058 */
    u16 inventory[15];              /* 0x0D8 */
    u16 unkF6;
    u8 elementData[0x2C];           /* 0x0F8, contents provisional */
    u32 experience;                 /* 0x124 */
    u8 unitType;                    /* 0x128: character/enemy table ID */
    u8 classId;                     /* 0x129; zero for enemy records */
    u8 battleSlotState;             /* 0x12A */
    u8 unk12B[0x0D];
    u8 statusTimers[8];             /* 0x138 */
    u8 unk140[0x06];
    u8 effectTimer;                 /* 0x146 */
    u8 effectState;                 /* 0x147 */
};

typedef char UnitMove_size_must_be_4[
    sizeof(struct UnitMove) == 0x04 ? 1 : -1
];
typedef char Unit_size_must_be_0x148[
    sizeof(struct Unit) == 0x148 ? 1 : -1
];

struct Unit *GetUnit(u32 unitId);
struct Unit *_GetUnit(int unitId);

int CheckItem(int unitId, int itemId);
int Func_8078af8(int unitId, u32 itemId);
u32 Func_8078b60(u32 itemId);
int Func_80bf574(int unitId);

/* Semantic source aliases; the linker-visible names remain unchanged. */
#define FindUnitItemSlot       CheckItem
#define CountUnitItemQuantity  Func_8078af8
#define CountPartyItemQuantity Func_8078b60
#define TickUnitEffectTimer    Func_80bf574

#endif /* _UNIT_H_ */
