// fakematch
#include "nonmatching.h"

void Func_808b2b0(int x);

extern int GetEncounterGroup();

INCLUDE_ASM("asm/field/map_load/InitMapSomething.s");
INCLUDE_ASM("asm/field/map_load/RespawnAtSanctum.s");

/* GetMapArea: signed byte at offset 2 of an 8-byte table entry. Thumb ldrsb has
 * no immediate form, so the byte is loaded with ldrb and sign-extended. */
extern unsigned char gMaps[] __asm__("gMaps");

int GetMapArea(int map) {
    signed char *p = (signed char *)(gMaps + map * 8);
    return p[2];
}

INCLUDE_ASM("asm/field/map_load/GameStart.s");

extern void LoadMapCode(int file, void *dst);
extern unsigned char gState[];
extern unsigned char __start_overlay[];

static inline short CurrentMapFile(unsigned char *state, unsigned char *maps)
{
    int index;
    short file;

    index = *(short *)(state + 0x1c0);
    file = *(short *)(maps + index * 8);
    return file;
}

void Func_808ab48(void)
{
    LoadMapCode(CurrentMapFile(gState, gMaps), __start_overlay);
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
struct WorldMapEncounter {
    short tile;
    short area;
    short flag;
    short group;
};
extern struct WorldMapEncounter gWorldMapEncounters[];
extern int _Func_80122c8(void *, int *);

int Func_808adf0(void *pos)
{
    struct WorldMapEncounter *p = gWorldMapEncounters;
    int result;
    int tile;
    int area = _Func_80122c8(pos, &tile);

    result = 0;

    for (; p->tile != -1; p++) {
        if (p->tile == tile && (p->area == -1 || p->area == area)
            && (p->flag == -1 || !_GetFlag(p->flag))) {
            result = p->group;
            break;
        }
    }
    Func_808b2b0(area);
    return result;
}
INCLUDE_ASM("asm/field/map_load/Func_808ae74.s");

#include "gba/types.h"
#include "field.h"

extern struct Respawn gRespawns[];
struct Respawn {
    unsigned short map;
    short sub;
    unsigned short x;
    unsigned short y;
};

extern struct MapState * iwram_3001ebc;

u32 Func_808b02c(s32 arg0) {
    u8 *unk = iwram_3001ebc->__unk1A0;
    Func_808ae74(unk[arg0]);
}

extern s32 Func_808ae74(s32, s32);

s32 Func_808b048(s32 *arg1, s32 arg2) {
    s32 foo = Func_808adf0(arg1);
    Func_808ae74(foo, arg2);
}

extern unsigned short gEncounterTables[] __asm__("gEncounterTables");

int GetEncounterGroup(int encounterID, int group)
{
    unsigned char *base;
    int idx;

    idx = (encounterID * 7) * 2 + group;
    base = (unsigned char *)gEncounterTables;
    idx = idx * 2 + 4;
    return *(unsigned short *)(base + idx);
}

extern unsigned char gDjinniEncounters[] __asm__("gDjinniEncounters");

unsigned int Func_808b074(int index)
{
    unsigned short *p = (unsigned short *)(gDjinniEncounters + (index << 2));
    return GetEncounterGroup(p[0], p[1]);
}

INCLUDE_ASM("asm/field/map_load/Func_808b090.s");
INCLUDE_ASM("asm/field/map_load/GetLocationName.s");

void UpdateRespawnMap(void) {
    short *gs = (short *)&gState;
    short map = gs[0xe0];
    short sub = gs[0xe1];
    struct Respawn *r = gRespawns;

    while ((short)r->map != -1) {
        if ((short)r->map == map && (r->sub == -1 || r->sub == sub)) {
            gs[0xe2] = r->x;
            gs[0xe3] = r->y;
            break;
        }
        r++;
    }
}

extern unsigned short gState__a2[] __asm__("gState");

short Func_808b248(void) {
    return gState__a2[235];
}

extern unsigned int gMapBattleBGs[];
extern short gState_s25c[] __asm__("gState");
void Func_808b25c(void)
{
    int cur = gState_s25c[0xe0];
    unsigned int *p = gMapBattleBGs;
    unsigned int e;
    int v;
    while ((e = *p++) != 0 && e != cur) {
        if (e & 0x80000000)
            v = e & 0xffff;
    }
    gState_s25c[0xeb] = v;
}
extern unsigned short gState_s2b0[] __asm__("gState");
extern unsigned char Lconst_36[] __asm__(".Lconst_36"), Lconst_37[] __asm__(".Lconst_37"), Lconst_38[] __asm__(".Lconst_38"), Lconst_39[] __asm__(".Lconst_39"), Lconst_3a[] __asm__(".Lconst_3a"), Lconst_3c[] __asm__(".Lconst_3c");
/* pooled literal (ldr rN, =0x36, =0x37, =0x38, =0x39, =0x3a, =0x3c in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_36, 0x36\n.equ .Lconst_37, 0x37\n.equ .Lconst_38, 0x38\n.equ .Lconst_39, 0x39\n.equ .Lconst_3a, 0x3a\n.equ .Lconst_3c, 0x3c");
void Func_808b2b0(int x)
{
    int v;
    switch (x) {
    case 1: v = (int)Lconst_38; break;
    case 2: v = (int)Lconst_3a; break;
    case 3: v = (int)Lconst_3c; break;
    case 4: case 7: v = (int)Lconst_36; break;
    case 5: case 6: v = (int)Lconst_37; break;
    default: v = (int)Lconst_39; break;
    }
    gState_s2b0[0xeb] = v;
}
extern int _GetFlag(int arg0);
extern short gEnemyBattleMusic[];
void Func_808b320(int a, int b)
{
    short key = a * 16 + b;
    short *p = gEnemyBattleMusic;
    unsigned short v;
    int music;

    if (_GetFlag(0x16c)) {
        music = 0x12;
    } else {
        for (;;) {
            v = *p;
            p++;
            if (v == 0 || v == (unsigned short)key)
                break;
            if (v & 0x8000)
                music = v & 0xfff;
        }
    }
    gState__a2[0xf7] = music;
}

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
