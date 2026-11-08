#include "rpg.h"

extern struct Unit gPartyStatus[8];
extern struct Unit *iwram_3001f28;

// Unit IDs 0..7 index gPartyStatus; 0x80..0x85 index the 6-slot active battle
// enemy array pointed to by iwram_3001f28 (BattleMain copies 0x7c8 = 6 * 332
// bytes there). Matches GetUnit.s except for the dead `mov r3, r14` emitted
// immediately after `push {lr}` (an unused incoming-LR capture in Camelot's TU
// that gcc 2.96 eliminates without an inline asm consumer).
struct Unit *GetUnit(unsigned int id) {
    struct Unit *ret;
    struct Unit *p = gPartyStatus;
    if (id <= 7) {
        ret = &p[id];
    } else if (id - 0x80 <= 5 && (p = iwram_3001f28) != 0) {
        ret = &p[id - 0x80];
    } else {
        ret = 0;
    }
    return ret;
}
