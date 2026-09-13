/* rom_7bc690 (overlay file 933): consolidated TU — lamakan_desert map overlay. */

#include "nonmatching.h"
#include "api.h"

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

extern int OvlFunc_933_2008344(int *);
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008344.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
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

INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_20084e4.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_200888c.s");
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
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008cd0.s");

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

INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008e2c.s");
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
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_20092fc.s");
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
extern void OvlFunc_933_20084e4(void);

INCLUDE_ASM("asm/maps/lamakan_desert/LamakanDesert_MapInit.s");
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
