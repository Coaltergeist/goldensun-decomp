/* rom_7bc690 (overlay file 933): consolidated TU — lamakan_desert map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_933_2008314(void) {
    __Func_80955b0(0xd, 3, 3);
}

extern void __WaitFrames(int);

void OvlFunc_933_2008324(unsigned int *arg0, int arg1)
{
    int i;

    i = 0x3c;
    while (i != 0) {
        __WaitFrames(1);
        i--;
        if ((int)arg0[3] <= arg1)
            break;
    }
}

extern unsigned int iwram_3001e40;
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

struct EffectData933 {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    int unk1c;
    short unk20;
    short unk22;
    int unk24;
};

extern void __PlaySound(int);
extern unsigned int __Random(void);

int OvlFunc_933_2008344(int *arg0) {
    extern volatile unsigned int iwram_3001e40;
    struct EffectData933 data;
    unsigned int flags;

    if ((iwram_3001e40 & 7) == 0) {
        __PlaySound(0x76);
    }
    flags = iwram_3001e40 & 0xf;
    if (flags != 0) {
        return 0;
    }
    data.unk8 = 0xcccc;
    data.unkc = 0xcccc;
    data.unk22 = (short)((((unsigned int)__Random() << 12) >> 16) + (0xf8 << 8));
    OvlFunc_common0_10c(arg0[2], arg0[3], arg0[4], 0, flags, flags, 0x880001, &data);
    return 0;
}

#include "state/global_state.h"

__asm__(".set __divsi3, _divsi3_RAM");
extern GlobalState gState;
extern unsigned char _EVENT_59[], _EVENT_5a[], _EVENT_5b[], _EVENT_5c[];
extern unsigned char Lm933_2174[] __asm__(".Lm933_2174");
extern unsigned char Lm933_21d4[] __asm__(".Lm933_21d4");
extern unsigned char Lm933_2234[] __asm__(".Lm933_2234");
extern unsigned char Lm933_22dc[] __asm__(".Lm933_22dc");
extern unsigned char Lm933_212c[] __asm__(".Lm933_212c");
extern unsigned char Lm933_23c8[] __asm__(".Lm933_23c8");
extern unsigned char Lm933_2410[] __asm__(".Lm933_2410");
extern unsigned char Lm933_24b8[] __asm__(".Lm933_24b8");
extern unsigned char Lm933_23b0[] __asm__(".Lm933_23b0");

void *LamakanDesert_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_59) return Lm933_2174;
    if (ev == (int)_EVENT_5a) return Lm933_21d4;
    if (ev == (int)_EVENT_5b) return Lm933_2234;
    if (ev == (int)_EVENT_5c) return Lm933_22dc;
    return Lm933_212c;
}

int LamakanDesert_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a36c[];

void *LamakanDesert_GetExits(void) {
    return (void *)gOvl_0200a36c;
}

extern unsigned char Const59[] __asm__(".Lconst_59");
__asm__(".equ .Lconst_59, 0x59");
extern unsigned char Const5A[] __asm__(".Lconst_5a");
__asm__(".equ .Lconst_5a, 0x5a");
extern unsigned char Const5B[] __asm__(".Lconst_5b");
__asm__(".equ .Lconst_5b, 0x5b");
extern unsigned char Const5C[] __asm__(".Lconst_5c");
__asm__(".equ .Lconst_5c, 0x5c");

void *LamakanDesert_GetActors(void) {
    GlobalState *p = &gState;
    int ev;

    if (*(short *)((char *)p + 0x1c0) == (int)Const5B && *(short *)((char *)p + 0x1c2) == 5) {
        API_SetFlag(0x90a);
    }
    ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)Const59) return Lm933_23c8;
    if (ev == (int)Const5A) return Lm933_2410;
    if (ev == (int)Const5B) return Lm933_24b8;
    return Lm933_23b0;
}
extern void __CutsceneStart(void);
extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_933_2008498(void) {
    __CutsceneStart();
    if (!API_GetFlag(0x8b2) && !API_GetFlag(0x8b3)) {
        API_SetFlag(0x8b3);
        API_SetFlag(0x8b2);
    }
    __PlaySound(0x7b);
    __Func_8091e9c(3);
    API_CutsceneEnd();
}

extern unsigned char gOvl_0200a500[];

void *LamakanDesert_GetEvents(void) {
    return (void *)gOvl_0200a500;
}

INCLUDE_ASM("asm/maps/lamakan_desert/lamakan_desert_data.s");

struct DesertTerrainState { unsigned char prefix[0x1c0]; short area; };
extern struct DesertTerrainState DesertTerrain __asm__("gState");
extern void __Func_8010788(int, int, int, int, int, int);
extern void __Func_8094730(int, int, int, int, int, int, int);
extern void __Func_808ee0c(void);
extern void __Func_80947e4(void);
static inline void API_Func_8010788(int a, int b, int c, int d, int e, int f) { __Func_8010788(a, b, c, d, e, f); }
static inline void API_Func_8094730(int a, int b, int c, int d, int e, int f, int g) { __Func_8094730(a, b, c, d, e, f, g); }

int OvlFunc_933_20084e4(void)
{
    int area;
    int actorID;
    API_ClearFlag(0x201);
    area = DesertTerrain.area;
    if (area == (int)Const59) {
        API_Func_80105d4(0x46, 0x44, 4, 2, 22, 7);
        API_Func_80105d4(0x46, 0x44, 4, 2, 8, 10);
        API_Func_80105d4(0x46, 0x44, 4, 2, 23, 21);
        API_Func_8010704(0x46, 0x44, 4, 1, 23, 23);
        API_Func_80105d4(0x46, 0x44, 4, 2, 16, 0x2a);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x24, 0x2c);
        API_Func_80105d4(0x46, 0x44, 4, 2, 14, 0x37);
    } else if (area == (int)Const5A) {
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x2a, 5);
        API_Func_80105d4(0x46, 0x44, 4, 2, 20, 11);
        API_Func_8010704(0x46, 0x44, 4, 1, 20, 13);
        API_Func_80105d4(0x46, 0x44, 4, 2, 14, 12);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x38, 18);
        API_Func_80105d4(0x46, 0x44, 4, 2, 7, 22);
        API_Func_8010704(0x46, 0x44, 4, 1, 7, 24);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x2c, 23);
        API_Func_8010704(0x46, 0x44, 4, 1, 0x2c, 25);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x26, 24);
        API_Func_80105d4(0x46, 0x44, 4, 2, 26, 28);
        API_Func_80105d4(0x46, 0x44, 4, 2, 17, 0x23);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x32, 0x24);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x22, 0x2b);
        API_Func_8010704(0x46, 0x44, 4, 1, 0x22, 0x2d);
        API_Func_80105d4(0x46, 0x44, 4, 2, 6, 0x2e);
        API_Func_80105d4(0x46, 0x44, 4, 2, 27, 0x37);
        API_Func_80105d4(0x46, 0x44, 4, 2, 0x2b, 0x38);
    } else if (area == (int)Const5B) {
        API_Func_8010788(0x45, 0x63, 4, 2, 8, 16);
        API_Func_8010788(0x45, 0x63, 4, 2, 6, 20);
        API_Func_8010788(0x45, 0x63, 4, 2, 10, 23);
        API_Func_8010704(0x45, 0x63, 4, 2, 8, 14);
        API_Func_8010704(0x45, 0x63, 4, 2, 6, 18);
        API_Func_8010704(0x45, 0x63, 4, 1, 6, 20);
        API_Func_8010704(0x45, 0x63, 4, 2, 10, 21);
        API_Func_80105d4(0, 0x79, 5, 7, 8, 0x20);
        API_Func_80105d4(0, 0x79, 5, 7, 0x2b, 0x20);
        API_Func_80105d4(6, 0x78, 3, 1, 9, 5);
        API_Func_80105d4(9, 0x78, 3, 1, 0x2c, 5);
        API_Func_8010704(9, 0, 3, 3, 9, 6);
    }
    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(13, 0, 0);
    for (actorID = 100; actorID <= 107; actorID++) {
        API_Func_808edac(actorID, 0, 0);
    }
    if (DesertTerrain.area != (int)Const5C) {
        API_Func_8094730(0, 0x40000, 0x10000, 0x2000, 0x10000, 0x8000, 0x4000);
    }
}

int OvlFunc_933_200888c(void)
{
    int area;
    int actorID;
    API_ClearFlag(0x200);
    API_SetFlag(0x201);
    area = DesertTerrain.area;
    if (area == (int)Const59) {
        API_Func_80105d4(0x40, 0x7e, 4, 2, 22, 7);
        API_Func_80105d4(0x44, 0x7e, 4, 2, 8, 10);
        API_Func_80105d4(0x48, 0x7e, 4, 2, 23, 21);
        API_Func_8010704(0x48, 0x7e, 4, 2, 23, 22);
        API_Func_80105d4(0x4c, 0x7e, 4, 2, 16, 0x2a);
        API_Func_80105d4(0x50, 0x7e, 4, 2, 0x24, 0x2c);
        API_Func_80105d4(0x54, 0x7e, 4, 2, 14, 0x37);
        API_MapActor_SetPos(9, 0x1900000, 0x16c0000);
    } else if (area == (int)Const5A) {
        API_Func_80105d4(0x40, 0x7e, 4, 2, 0x2a, 5);
        API_Func_80105d4(0x44, 0x7e, 4, 2, 20, 11);
        API_Func_8010704(0x44, 0x7e, 4, 2, 20, 12);
        API_Func_80105d4(0x48, 0x7e, 4, 2, 14, 12);
        API_Func_80105d4(0x4c, 0x7e, 4, 2, 0x38, 18);
        API_Func_80105d4(0x50, 0x7e, 4, 2, 7, 22);
        API_Func_8010704(0x50, 0x7e, 4, 2, 7, 23);
        API_Func_80105d4(0x54, 0x7e, 4, 2, 0x2c, 23);
        API_Func_8010704(0x54, 0x7e, 4, 2, 0x2c, 24);
        API_Func_80105d4(0x58, 0x7e, 4, 2, 0x26, 24);
        API_Func_80105d4(0x5c, 0x7e, 4, 2, 26, 28);
        API_Func_80105d4(0x60, 0x7e, 4, 2, 17, 0x23);
        API_Func_80105d4(0x64, 0x7e, 4, 2, 0x32, 0x24);
        API_Func_80105d4(0x68, 0x7e, 4, 2, 0x22, 0x2b);
        API_Func_8010704(0x68, 0x7e, 4, 2, 0x22, 0x2c);
        API_Func_80105d4(0x6c, 0x7e, 4, 2, 6, 0x2e);
        API_Func_80105d4(0x70, 0x7e, 4, 2, 27, 0x37);
        API_Func_80105d4(0x74, 0x7e, 4, 2, 0x2b, 0x38);
        API_MapActor_SetPos(9, 0x1600000, 0xcc0000);
        API_MapActor_SetPos(10, 0x2e00000, 0x18c0000);
        API_MapActor_SetPos(11, 0x900000, 0x17c0000);
        API_MapActor_SetPos(12, 0x2400000, 0x2cc0000);
        API_MapActor_SetPos(13, 0x2880000, 0x1980000);
    } else if (area == (int)Const5B) {
        API_Func_80105d4(0x40, 0x7c, 4, 4, 8, 14);
        API_Func_80105d4(0x44, 0x7c, 4, 4, 6, 18);
        API_Func_8010704(0x44, 0x7c, 4, 1, 6, 20);
        API_Func_80105d4(0x48, 0x7c, 4, 4, 10, 21);
        API_Func_80105d4(10, 0x79, 5, 7, 8, 0x20);
        API_Func_80105d4(5, 0x79, 5, 7, 0x2b, 0x20);
        API_Func_80105d4(0, 0x78, 3, 1, 9, 5);
        API_Func_80105d4(3, 0x78, 3, 1, 0x2c, 5);
        API_MapActor_SetPos(8, 0xa80000, 0x5c0000);
        API_MapActor_SetPos(9, 0x800000, 0x13c0000);
        API_Func_8010704(6, 0, 3, 3, 9, 6);
        if (!API_GetFlag(0x90a)) {
            API_Func_80105d4(0, 0x77, 3, 1, 9, 5);
        }
    }
    for (actorID = 100; actorID <= 107; actorID++) {
        API_Func_808edac(actorID, -1, -1);
    }
    __Func_808ee0c();
    if (DesertTerrain.area != (int)Const5C)
        __Func_80947e4();
}
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008c38.s");
extern unsigned int __Random(void);

void OvlFunc_933_2008c6c(int arg0) {
    int i;
    int r6;
    int flag;

    for (i = 0; i <= 2; i++) {
        r6 = ((unsigned int)__Random() * 3) >> 16;
        flag = r6 + 0x303;
        if (!API_GetFlag(flag)) {
            API_SetFlag(flag);
            break;
        }
    }
    __CutsceneStart();
    API_MessageID(arg0 * 3 + r6 + 0x1a10);
    API_ActorMessage(r6 + 1, 0);
    API_CutsceneEnd();
}
extern unsigned char iwram_3001ebc[];

struct CS933D_SceneView {
    unsigned char pad[0x182];
    short unk182;
};

struct CS933D_StateView {
    unsigned char pad[0x22c];
    short denominator;
    unsigned char gap[4];
    short numerator;
};
extern struct CS933D_StateView CS933D_State __asm__("gState");

void OvlFunc_933_2008cd0(void)
{
    struct CS933D_SceneView *base = *(struct CS933D_SceneView **)iwram_3001ebc;
    int ratio = (CS933D_State.numerator * 100) / CS933D_State.denominator;

    if (API_GetFlag(0x201)) {
        return;
    }

    if (API_GetFlag(0x302) && ratio <= 0x4a) {
        API_ClearFlag(0x302);
        API_ClearFlag(0x303);
        API_ClearFlag(0x304);
        API_ClearFlag(0x305);
    }
    if (API_GetFlag(0x301) && ratio <= 0x31) {
        API_ClearFlag(0x301);
        API_ClearFlag(0x303);
        API_ClearFlag(0x304);
        API_ClearFlag(0x305);
    }
    if (API_GetFlag(0x300) && ratio <= 0x18) {
        API_ClearFlag(0x300);
        API_ClearFlag(0x303);
        API_ClearFlag(0x304);
        API_ClearFlag(0x305);
    }

    if (!API_GetFlag(0x300) && ratio > 0x18) {
        API_SetFlag(0x300);
        base->unk182 = 1;
    }
    if (!API_GetFlag(0x301) && ratio > 0x31) {
        API_SetFlag(0x301);
        base->unk182 = 2;
    }
    if (!API_GetFlag(0x302) && ratio > 0x4a) {
        API_SetFlag(0x302);
        base->unk182 = 3;
    }
}


extern int Func_8000948(int);

int OvlFunc_933_2008e00(int *a, int *b)
{
  int r3;
  int r4;
  int r2;
  int new_var;
  int new_var2;
  int (*fp)(int);
  r3 = *(a++);
  r4 = *(b++);
  r2 = *((int *) (((char *) a) + 4));
  r4 -= r3;
  r3 = (new_var = *b);
  r3 -= r2;
  r4 >>= 16;
  r3 >>= 16;
  new_var2 = (r4 * r4) + (r3 * r3);
  fp = Func_8000948;
  r4 = fp(new_var2);
  return r4;
}

extern struct Actor *CS933R_Actor(int) __asm__("__MapActor_GetActor");
struct CS933R_SceneView { unsigned char beforeCBA[0xcba]; unsigned short unkCBA; };
extern struct CS933R_SceneView *CS933R_Scene __asm__("iwram_3001ebc");
extern short CS933R_Heat __asm__("ewram_2000472");
extern int CS933R_PointsA[6] __asm__("Events_TolbiSpring");
extern int CS933R_PointsB[10] __asm__(".Lm933_1f48");
extern int CS933R_PointsC[4] __asm__(".Lm933_1f70");
extern void CS933R_PauseHeat(unsigned short) __asm__("OvlFunc_933_2009c78");
struct CS933R_StateView { unsigned char beforeMap[0x1c0]; short map; };
extern struct CS933R_StateView CS933R_State __asm__("gState");
void OvlFunc_933_2008e2c(void)
{
    struct CS933R_SceneView *scene = CS933R_Scene;
    int frames = 60;
    int nearestDistance = 0xf00000;
    int *points;
    int count, remaining;
    int nearest;
    struct Actor *actor;
    struct EffectData933 enterEffect, exitEffect;
    API_SetFlag(0x200);
    CS933R_PauseHeat(1);
    if (CS933R_State.map == (int)Const59) {
        remaining = 3;
        points = CS933R_PointsA;
    } else if (CS933R_State.map == (int)Const5A) {
        remaining = 5;
        points = CS933R_PointsB;
    } else {
        remaining = 2;
        points = CS933R_PointsC;
    }
    {
        int *point;
        count = remaining;
        point = points;
        while (remaining != 0) {
            int distance = OvlFunc_933_2008e00((int *)&CS933R_Actor(0)->pos, point);
            if (distance <= nearestDistance) {
                nearestDistance = distance;
                nearest = count - remaining;
            }
            --remaining;
            point = points + (count - remaining) * 2;
        }
    }
    nearest *= 2;
    API_MapActor_SetSpeed(0, 0x20000, 0x10000);
    API_Actor_TravelTo(CS933R_Actor(0), points[nearest], 0, points[nearest + 1]);
    CS933R_Actor(0)->motion.y = 0x60000;
    API_PlaySound(0x98);
    actor = CS933R_Actor(0);
    OvlFunc_933_2008324((unsigned int *)actor, CS933R_Actor(0)->pos.y);
    API_PlaySound(0xf1);
    {
        struct Actor *effectActor = CS933R_Actor(0);
        enterEffect.unk18 = 0xd6;
        enterEffect.unk8 = 0x8000;
        enterEffect.unkc = 0xcccc;
        enterEffect.unk10 = 0x10000;
        enterEffect.unk14 = 0x13333;
        OvlFunc_common0_10c(effectActor->pos.x, effectActor->pos.y, effectActor->pos.z, 0, 0, 0, 0x1c0000, &enterEffect);
    }
    API_MapActor_Emote(0, 0x104, 0);
    API_MapActor_SetAnim(0, 18);
    do {
        scene->unkCBA = 600;
        --frames;
        if (CS933R_Heat != 0) {
            CS933R_Heat -= 5;
            if (CS933R_Heat <= 0) CS933R_Heat = 0;
            else if (frames == 0) frames = 1;
        }
        API_WaitFrames(1);
    } while (frames != 0);
    {
        struct Actor *effectActor = CS933R_Actor(0);
        exitEffect.unk18 = 0xd6;
        exitEffect.unk8 = 0x8000;
        exitEffect.unkc = 0xcccc;
        exitEffect.unk10 = 0x8000;
        exitEffect.unk14 = 0x13333;
        OvlFunc_common0_10c(effectActor->pos.x, effectActor->pos.y, effectActor->pos.z, 0, frames, frames, 0x1c0000, &exitEffect);
    }
    API_PlaySound(0x120);
    API_PlaySound(0x98);
    CS933R_Actor(0)->motion.y = 0x60000;
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(10);
    scene->unkCBA = frames;
    CS933R_PauseHeat(0);
}
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2009054.s");
extern void *__MapActor_GetActor(int);
extern void __MapActor_SetAnimSpeed(int, int);
extern void __StartMapBattle(int, int);

void OvlFunc_933_2009180(void) {
    GlobalState *p = &gState;
    char *actor;
    int closest_actor;
    int min_dist;
    int i;
    char *target;

    actor = (char *)__MapActor_GetActor(*(int *)((char *)p + (0xfa << 1)));
    closest_actor = 9;
    API_SetFlag(0x80 << 2);

    min_dist = 0x80 << 13;
    for (i = 9; i <= 12; i++) {
        char *other = (char *)__MapActor_GetActor(i);
        if (other != 0) {
            int dx = (*(int *)(actor + 8) - *(int *)(other + 8)) / 0x10000;
            int dz = (*(int *)(actor + 0x10) - *(int *)(other + 0x10)) / 0x10000;
            int r2 = dx;
            int dist;
            if (r2 < 0) r2 = -r2;
            if (dz < 0) dz = -dz;
            dist = r2 + dz;
            if (dist < min_dist) {
                closest_actor = i;
                min_dist = dist;
            }
        }
    }

    API_MapActor_SetAnim(0, 1);
    ((char *)__MapActor_GetActor(0))[0x5a] &= 0xfe;
    API_MapActor_Face(0, closest_actor, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Surprise(0, 0x81 << 1);
    API_Func_809259c(0, 2);
    API_CutsceneWait(0x3c);
    API_MapActor_Surprise(0, 0x101);

    {
        char *p0 = (char *)__MapActor_GetActor(0);
        char *p1 = (char *)__MapActor_GetActor(0);
        int add = 0x80;
        unsigned short facing = *(unsigned short *)(p1 + 6);
        add <<= 8;
        *(unsigned short *)(p0 + 6) = (facing + add) & (int)0xfffff000;
    }

    API_MapActor_SetAnim(0, 5);
    __MapActor_SetAnimSpeed(0, 0x18);
    API_MapActor_SetSpeed(0, 0x1999, 0xccc);
    *(void **)((char *)__MapActor_GetActor(0) + 0x6c) = (void *)OvlFunc_933_2008344;

    target = (char *)__MapActor_GetActor(closest_actor);
    if (target != 0) {
        API_MapActor_TravelTo(0, *(short *)(target + 0xa), *(short *)(target + 0x12));
    }

    API_CutsceneWait(0x3c);
    API_MapActor_Emote(closest_actor, 0x82 << 1, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Surprise(0, 0x80 << 1);
    ((char *)__MapActor_GetActor(0))[0x5a] |= 1;
    *(int *)((char *)__MapActor_GetActor(0) + 0x6c) = 0;
    __StartMapBattle(0x35, 4);
}
struct CS933M_State { unsigned char pad[0x1f4]; int actorId; };
extern struct CS933M_State CS933M_State __asm__("gState");
struct CS933M_Field { unsigned char pad[0x1e0]; struct Actor *camera; };
extern struct CS933M_Field *CS933M_Field __asm__("iwram_3001ebc");
extern void OvlFunc_933_2009054(void);
extern unsigned char iwram_3001ebc[];
extern int __TestCollision(void *, int *);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_WaitMovement(void *);

void OvlFunc_933_20092fc(void) {
    struct Actor *obj;
    struct CS933M_Field *field;
    int actorId;
    struct Actor *actor;
    int vec[3];
    int result;
    unsigned int bits;
    struct EffectData933 data;
    struct EffectData933 *dataPtr;
    int x;
    int y;

    OvlFunc_933_2009054();
    field = CS933M_Field;
    actorId = CS933M_State.actorId;
    obj = field->camera;
    actor = ((struct Actor *)__MapActor_GetActor(actorId));

    vec[0] = actor->pos.x;
    vec[1] = actor->pos.y;
    vec[2] = actor->pos.z + (0xc0 << 9);
    result = __TestCollision(actor, vec);

    bits = iwram_3001e40 & 4;
    if (bits == 0) {
        unsigned int rotation = __Random();
        dataPtr = &data;
        dataPtr->unk22 = (short)(((rotation << 12) >> 16) + (0xf8 << 8));
        x = actor->pos.x + (((__Random() * 12) >> 16) << 16) - 0x60000;
        y = ((__Random() * 5) >> 16) * 0x1999 + 0x7ffd;
        OvlFunc_common0_10c(x, actor->pos.y, actor->pos.z, 0,
                            bits, y, 0x800000, dataPtr);
    }

    if (result < 0) {
        API_MapActor_Surprise(actorId, 0x81 << 1);
        API_Actor_TravelTo(actor, actor->pos.x, actor->pos.y,
                           actor->pos.z + (0x80 << 12));
        __Actor_SetAnim(actor, 7);
        __Actor_WaitMovement(actor);
        do {
            __WaitFrames(1);
        } while (actor->pos.y != actor->floorPos);
        __Actor_SetAnim(actor, 6);
        __WaitFrames(3);
        return;
    }

    vec[0] = actor->pos.x;
    vec[1] = actor->pos.y;
    vec[2] = actor->pos.z + (0x80 << 12);
    result = __TestCollision(actor, vec);
    if (result > 0) return;

    vec[0] = actor->pos.x + 0x5b333;
    vec[1] = actor->pos.y;
    vec[2] = actor->pos.z + 0x5b333;
    result = __TestCollision(actor, vec);
    if (result > 0) return;

    vec[0] = actor->pos.x - 0x5b333;
    vec[1] = actor->pos.y;
    vec[2] = actor->pos.z + 0x5b333;
    result = __TestCollision(actor, vec);
    if (result > 0) return;

    obj->pos.z += (0xc0 << 9);
    actor->pos.z += (0xc0 << 9);
}
extern void OvlFunc_933_2009054(void);
extern void __vec3_translate(int, int, void *);
extern unsigned char iwram_3001ebc[];

void OvlFunc_933_20094b0(void) {
    char *base;
    short *ptr;
    int val;
    int zero;
    int vec[3];
    int sent;

    base = *(char **)iwram_3001ebc;
    OvlFunc_933_2009054();
    if (API_GetFlag(0x90a)) return;

    zero = API_GetFlag(0x80 << 2);
    if (zero != 0) return;

    API_SetFlag(0x80 << 2);
    OvlFunc_933_2009c78(1);

    ptr = (short *)(base + 0xcba);
    val = 0x96 << 2;
    *ptr = val;

    *(int *)((char *)__MapActor_GetActor(0) + 0x24) = zero;
    *(int *)((char *)__MapActor_GetActor(0) + 0x2c) = zero;
    sent = 0x80 << 24;
    *(int *)((char *)__MapActor_GetActor(0) + 0x38) = sent;
    *(int *)((char *)__MapActor_GetActor(0) + 0x40) = sent;

    API_MapActor_SetAnim(0, 1);
    API_MapActor_Face(0, 8, 0);
    API_CutsceneWait(0x28);
    API_Func_809259c(0, 2);
    API_MapActor_Surprise(0, 0x81 << 1);
    API_CutsceneWait(0x28);

    ((char *)__MapActor_GetActor(0))[0x5a] &= 0xfe;
    vec[0] = zero;
    vec[1] = zero;
    vec[2] = zero;

    __vec3_translate(0xfff00000, *(unsigned short *)((char *)__MapActor_GetActor(0) + 6), vec);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    API_MapActor_SetAnim(0, 2);
    API_MapActor_TravelBy(0, vec[0] / 0x10000, vec[2] / 0x10000);
    API_MapActor_WaitMovement(0);
    API_CutsceneWait(2);
    ((char *)__MapActor_GetActor(0))[0x5a] |= 1;
    API_CutsceneWait(0x1e);
    __PlaySound(0x94);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(8, 0xa0 << 10, 0xa0 << 9);
    API_MapActor_TravelToAnimWait(8, 0xa8, 0x68);
    API_MapActor_SetSpeed(8, 0x80 << 8, 0x80 << 7);
    API_MapActor_TravelToAnimWait(8, 0xa8, 0x5c);

    *ptr = val;
    OvlFunc_933_2009c78(0);
}
extern void OvlFunc_933_2009c1c(void);
extern void OvlFunc_933_2008cd0(void);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __Func_8091ff0(int);

struct CS933I_StateView {
    unsigned char beforeMap[0x1c0];
    short map;
    unsigned char beforeHeat[0x22c - 0x1c2];
    unsigned short heatLimit, heatStatus, heatParameter;
};
struct CS933I_SceneView { unsigned char beforeTransition[0x1c0]; int transition; };
extern struct CS933I_StateView CS933I_State __asm__("gState");
extern struct CS933I_SceneView *CS933I_Scene __asm__("iwram_3001ebc");
int LamakanDesert_MapInit(void)
{
    struct CS933I_StateView *state = &CS933I_State;
    int map;
    state->heatLimit = 600;
    state->heatStatus = 0;
    state->heatParameter = 0x119;
    if (state->map != (int)Const5C) {
        CS933I_Scene->transition = 0x100;
        OvlFunc_933_2009c1c();
        API_StartTask(OvlFunc_933_2008cd0, 0xc80);
        map = state->map;
        if (map == (int)Const59) {
            int atlasRow = 126;
            __Func_80105d4(22, 7, 4, 2, 64, atlasRow);
            __Func_80105d4(8, 10, 4, 2, 68, atlasRow);
            __Func_80105d4(23, 21, 4, 2, 72, atlasRow);
            __Func_80105d4(16, 42, 4, 2, 76, atlasRow);
            __Func_80105d4(36, 44, 4, 2, 80, atlasRow);
            __Func_80105d4(14, 55, 4, 2, 84, atlasRow);
        } else if (map == (int)Const5A) {
            int atlasRow = 126;
            __Func_80105d4(42, 5, 4, 2, 64, atlasRow);
            __Func_80105d4(20, 11, 4, 2, 68, atlasRow);
            __Func_80105d4(14, 12, 4, 2, 72, atlasRow);
            __Func_80105d4(56, 18, 4, 2, 76, atlasRow);
            __Func_80105d4(7, 22, 4, 2, 80, atlasRow);
            __Func_80105d4(44, 23, 4, 2, 84, atlasRow);
            __Func_80105d4(38, 24, 4, 2, 88, atlasRow);
            __Func_80105d4(26, 28, 4, 2, 92, atlasRow);
            __Func_80105d4(17, 35, 4, 2, 96, atlasRow);
            __Func_80105d4(50, 36, 4, 2, 100, atlasRow);
            __Func_80105d4(34, 43, 4, 2, 104, atlasRow);
            __Func_80105d4(6, 46, 4, 2, 108, atlasRow);
            __Func_80105d4(27, 55, 4, 2, 112, atlasRow);
            __Func_80105d4(43, 56, 4, 2, 116, atlasRow);
        } else if (map == (int)Const5B) {
            int atlasRow = 124;
            __Func_8091ff0(0xa9);
            __Func_80105d4(8, 14, 4, 4, 64, atlasRow);
            __Func_80105d4(6, 18, 4, 4, 68, atlasRow);
            __Func_80105d4(10, 21, 4, 4, 72, atlasRow);
        }
        OvlFunc_933_20084e4();
    }
    return 0;
}
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);

void OvlFunc_933_2009874(void) {
    API_MapActor_SetSpeed(8, 0x8000, 0x4000);
    __MapActor_SetAnim(8, 1);
    __MapActor_TravelToAnimWait(8, 0xa8, 0x60);
    __MapActor_SetAnim(8, 2);
}

INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_20098a4.s");

extern unsigned char L2730[] __asm__(".Lm933_2730");
extern unsigned char L26d0[] __asm__(".Lm933_26d0");
extern unsigned char L26be[] __asm__(".Lm933_26be");
extern unsigned char L3030[] __asm__(".Lm933_3030");
extern unsigned char OvlData_933_2009fa0[];
extern void OvlFunc_933_20098a4(void);

void OvlFunc_933_2009c1c(void)
{
    unsigned short *slotPtr;
    int slot;

    __DecompressLZ(OvlData_933_2009fa0, L2730);
    slotPtr = (unsigned short *)L26d0;
    slot = __AllocSpriteSlot();
    *slotPtr = slot;
    __UploadSpriteGFX((short)slot, 0x90 << 3, 0);
    *(unsigned short *)L26be = 0;
    *(unsigned short *)L3030 = 0;
    __StartTask(OvlFunc_933_20098a4, 0xc76);
}

extern unsigned short L3030__a1 __asm__(".Lm933_3030");

void OvlFunc_933_2009c78(unsigned short x) {
    L3030__a1 = x;
}


/* overlay-owned data blobs (no .text) */
