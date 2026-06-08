/* Cluster GetEncounterGroup..GetEncounterGroup extracted from goldensun/asm/rom_8a000/rom_8ace0_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ace0_a_a_a.o and asm/rom_8a000/rom_8ace0_a_a_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "field.h"

extern struct MapState * iwram_3001ebc;

u32 Func_808b02c(s32 arg0) {
    u8 *unk = iwram_3001ebc->__unk1A0;
    Func_808ae74(unk[arg0]);
}

extern s32 Func_808adf0(void);
extern s32 Func_808ae74(s32, s32);

s32 Func_808b048(s32 *arg1, s32 arg2) {
    s32 foo = Func_808adf0();
    Func_808ae74(foo, arg2);
}

extern unsigned short L9c610[] __asm__(".L9c610");

unsigned short GetEncounterGroup(int encounterID, int group)
{
    unsigned char *base;
    int idx;

    idx = (encounterID * 7) * 2 + group;
    base = (unsigned char *)L9c610;
    idx = idx * 2 + 4;
    return *(unsigned short *)(base + idx);
}
