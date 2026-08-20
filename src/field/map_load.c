// fakematch
/* field/map_load.c -- consolidated TU. */
#include "nonmatching.h"

extern int GetEncounterGroup();

INCLUDE_ASM("asm/field/map_load/InitMapSomething.s");
INCLUDE_ASM("asm/field/map_load/RespawnAtSanctum.s");

/* GetMapArea (GetMapArea); signed byte at offset 2 of an 8-byte-stride table
 * element. Forming the element pointer (base + map*8) first keeps the +2 a
 * `ldrb [.,#2]` immediate (Thumb ldrsb has no immediate form, so gcc then
 * sign-extends via lsl#24/asr#24) instead of folding into a register-indexed
 * ldrsb. .L9f1a8 is a .global asm-label (§8). */
extern unsigned char L9f1a8[] __asm__(".L9f1a8");

int GetMapArea(int map) {
    signed char *p = (signed char *)(L9f1a8 + map * 8);
    return p[2];
}

INCLUDE_ASM("asm/field/map_load/GameStart.s");

extern short LoadMapCode();
extern unsigned char gState[];
extern unsigned char __start_overlay[];

void Func_808ab48(void)
{
    unsigned char *g = gState;
    short *sp;
    register int z0 __asm__("r1");
    int idx;

    sp = (short *)(g + 0xe0 * 2);
    z0 = 0;
    __asm__ volatile ("" : : "r" (z0));
    idx = *(short *)((unsigned char *)sp + z0);
    LoadMapCode(*(short *)(L9f1a8 + idx * 8), __start_overlay);
}

INCLUDE_ASM("asm/field/map_load/InitMapFlags.s");

extern void *_PlaySound(short arg0);
extern unsigned int gState__a1 __asm__("gState");

void PlayMapMusic(void) {
    unsigned int r3;
    unsigned int r2;
    short r0;

    r3 = (unsigned int)&gState__a1;
    r2 = 0xf8;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    r0 = *(short *)((char *)r3 + r2);
    r3 = (unsigned int)_PlaySound(r0);
    r3 = r3;
}

INCLUDE_ASM("asm/field/map_load/InitEncounters.s");
INCLUDE_ASM("asm/field/map_load/Func_808adf0.s");
INCLUDE_ASM("asm/field/map_load/Func_808ae74.s");

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

int GetEncounterGroup(int encounterID, int group)
{
    unsigned char *base;
    int idx;

    idx = (encounterID * 7) * 2 + group;
    base = (unsigned char *)L9c610;
    idx = idx * 2 + 4;
    return *(unsigned short *)(base + idx);
}

extern unsigned char L9d8b0[] __asm__(".L9d8b0");

unsigned int Func_808b074(int index)
{
    unsigned short *p = (unsigned short *)(L9d8b0 + (index << 2));
    return GetEncounterGroup(p[0], p[1]);
}

INCLUDE_ASM("asm/field/map_load/Func_808b090.s");
INCLUDE_ASM("asm/field/map_load/GetLocationName.s");
INCLUDE_ASM("asm/field/map_load/UpdateRespawnMap.s");

extern unsigned short gState__a2[] __asm__("gState");

short Func_808b248(void) {
    return gState__a2[235];
}

INCLUDE_ASM("asm/field/map_load/Func_808b25c.s");
INCLUDE_ASM("asm/field/map_load/Func_808b2b0.s");
INCLUDE_ASM("asm/field/map_load/Func_808b320.s");

extern int _GetFlag(int arg0);

int Func_808b398(int arg0)
{
	int r5 = arg0;
	if (r5 <= 8) {
		if (_GetFlag(0x20)) {
			if (r5 == 0)
				r5 = 0x12;
			if (r5 == 1)
				r5 = 0x13;
		} else if (_GetFlag(0x21)) {
			if (r5 == 0)
				r5 = 0x11;
		}
	}
	return r5;
}

int Func_808b3d0(int arg0, int arg1)
{
    if (arg0 <= 8 && arg1 != 0) {
        if (arg0 == 0)
            arg0 = 0x12;
        if (arg0 == 1)
            arg0 = 0x13;
    }
    return arg0;
}

INCLUDE_ASM("asm/field/map_load/LoadMapActors.s");

extern unsigned int iwram_3001ebc__a1 __asm__("iwram_3001ebc");
extern int GetFieldActor(int actor);
extern void _DeleteActor(void);

void DeleteMapActor(int actor)
{
    unsigned int base;
    int r3;

    base = iwram_3001ebc__a1;
    if (GetFieldActor(actor)) {
        _DeleteActor();
        r3 = (actor << 2) + 20;
        *(int *)((char *)base + r3) = 0;
    }
}
