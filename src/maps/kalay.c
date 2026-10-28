/* rom_7c097c (overlay file 936): consolidated TU — kalay map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
void OvlFunc_936_200a008(void);

INCLUDE_ASM("asm/maps/kalay/exports.s");

/* Used as a function pointer before its definition. */
extern void OvlFunc_936_200b90c(void);

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_936_2008030(void) {
    __Func_80955b0(12, 2, 3);
}

extern unsigned int __Random();
int OvlFunc_936_2008040(struct Actor *a)
{
    extern void __Actor_SetAnim(void *, int);

    if (a->__unk66 == 0) {
        switch ((__Random() << 3) >> 16) {
        case 0:
            __Actor_SetAnim(a, 3);
            break;
        case 1:
            __Actor_SetAnim(a, 4);
            break;
        case 3:
        case 4:
            a->facing += (__Random() << 15) >> 16;
            break;
        }
        a->__unk66 = (__Random() * 80) >> 16;
    }
    if (a->__unk66 != 0)
        a->__unk66--;
    return 1;
}
int OvlFunc_936_20080ac(struct Actor *a)
{
    short *t = &a->__unk66;

    if (*t == 0) {
        a->facing += (__Random() << 15) >> 16;
        *t = (__Random() * 80) >> 16;
    }
    if (*t != 0)
        (*t)--;
    return 1;
}

#include "state/global_state.h"

struct Attr_OvlFunc_936_200ba3c {
    unsigned char pad[5];
    unsigned char low : 5;
    unsigned char flag : 1;
    unsigned char high : 2;
};
extern GlobalState gState;
extern unsigned char _EVENT_63[], _EVENT_66[], _EVENT_99[], _EVENT_9a[], _EVENT_9b[], _EVENT_9c[];
extern unsigned char Lm936_42c8[] __asm__(".Lm936_42c8");
extern unsigned char Lm936_4448[] __asm__(".Lm936_4448");
extern unsigned char Lm936_44a8[] __asm__(".Lm936_44a8");
extern unsigned char Lm936_4520[] __asm__(".Lm936_4520");
extern unsigned char Lm936_4580[] __asm__(".Lm936_4580");
extern unsigned char gScript_943__0200c628[];
extern unsigned char Lm936_4298[] __asm__(".Lm936_4298");


void *Kalay_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_63) return Lm936_42c8;
    if (ev == (int)_EVENT_66) return Lm936_4448;
    if (ev == (int)_EVENT_99) return Lm936_44a8;
    if (ev == (int)_EVENT_9a) return Lm936_4520;
    if (ev == (int)_EVENT_9b) return Lm936_4580;
    if (ev == (int)_EVENT_9c) return gScript_943__0200c628;
    return Lm936_4298;
}

int Kalay_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c6b8[];

void *Kalay_GetExits(void) {
    return (void *)gOvl_0200c6b8;
}

extern unsigned char Lm936_4768[] __asm__(".Lm936_4768");
extern unsigned char Lm936_4a20[] __asm__(".Lm936_4a20");
extern unsigned char Lm936_4a80[] __asm__(".Lm936_4a80");
extern unsigned char Lm936_4b58[] __asm__(".Lm936_4b58");
extern unsigned char gScript_926__0200c750[];

void *Kalay_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_63) return Lm936_4768;
    if (ev == (int)_EVENT_66) return Lm936_4a20;
    if (ev == (int)_EVENT_99) return Lm936_4a80;
    if (ev == (int)_EVENT_9c) return Lm936_4b58;
    return gScript_926__0200c750;
}

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_936_20081e4(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29df, 1);
    __CutsceneEnd();
}

void OvlFunc_936_200820c(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0xc;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd6);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

extern unsigned char _EVENT_63[], _EVENT_66[], _EVENT_99[], _EVENT_9a[], _EVENT_9b[], _EVENT_9c[];
extern unsigned char Lm936_4bf4[] __asm__(".Lm936_4bf4");
extern unsigned char gScript_882__0200ce88[];
extern unsigned char gScript_882__0200cedc[];
extern unsigned char Lm936_4f24[] __asm__(".Lm936_4f24");
extern unsigned char Lm936_4f54[] __asm__(".Lm936_4f54");
extern unsigned char Lm936_4f9c[] __asm__(".Lm936_4f9c");
extern unsigned char Lm936_4be8[] __asm__(".Lm936_4be8");

int Kalay_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_63) return (int)Lm936_4bf4;
    if (ev == (int)_EVENT_66) return (int)gScript_882__0200ce88;
    if (ev == (int)_EVENT_99) return (int)gScript_882__0200cedc;
    if (ev == (int)_EVENT_9a) return (int)Lm936_4f24;
    if (ev == (int)_EVENT_9b) return (int)Lm936_4f54;
    if (ev == (int)_EVENT_9c) return (int)Lm936_4f9c;
    return (int)Lm936_4be8;
}

void OvlFunc_936_20082c8(void) {
    __CutsceneStart();
    __MessageID(0x1a7c);
    __Func_8093054(0x13, 0);
    __CutsceneEnd();
}

extern void *__MapActor_GetActor(int);









extern unsigned int iwram_3001ebc;

void OvlFunc_936_20082e8(void)
{
    struct Actor *p;
    unsigned int v;

    p = (struct Actor *)__MapActor_GetActor(0);
    v = (p->facing + 0xfffff000) << 16;
    if (v > (0x60 << 24)) {
        API_CutsceneStart();
        API_MapActor_TurnToFaceActor(0, 8, 0);
        API_CutsceneWait(10);
        API_MessageID(0x2584);
        API_ShowActorMessage_NoWait(8, 0);
        if (API_Func_8091c7c(0, 0) == 0) {
            API_MapActor_DoAnim(8, 4);
            API_ActorMessage(8, 0);
        } else {
            unsigned short *p2 = (unsigned short *)(iwram_3001ebc + (0xec << 1));
            *p2 += 1;
            API_MapActor_DoAnim(8, 3);
            API_ActorMessage(8, 0);
        }
        API_CutsceneEnd();
    }
}

void OvlFunc_936_2008374(void) {
    __CutsceneStart();
    __MessageID(0x25b3);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

extern void *__MapActor_GetActor(int);
extern void __Func_80b0278(int, int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_936_2008394(void)
{
    unsigned char *p;
    unsigned int v;
    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0xffffe000) << 16;
    if (v > (0x80 << 24)) {
        __Func_80b0278(0x16, 0x16);
    } else {
        __CutsceneStart();
        __MessageID(0x1acf);
        __ActorMessage(0x16, 0);
        __CutsceneEnd();
    }
}

void OvlFunc_936_20083d8(void)
{
    unsigned char *p;
    unsigned int v;
    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0xffff9fff) << 16;
    if (v <= (0x7ffe << 16)) {
        __Func_80b0278(0x17, 0x17);
    } else {
        __CutsceneStart();
        __MessageID(0x1ad1);
        __Func_8093054(0x17, 0);
        __CutsceneEnd();
    }
}

void OvlFunc_936_2008420(void)
{
  unsigned char *p;
  unsigned int v;
  p = (unsigned char *) __MapActor_GetActor(0);
  v = ((*((unsigned short *) (p + 6))) + 0xffffe000) << 16;
  if (v > (0xc0 << 24))
  {
    __Func_80b0278(0x18, 0x18);
  }
  else
  {
    __CutsceneStart();
    __MessageID(0x1ad5);
 do { __ActorMessage(0x18, 0); __CutsceneEnd(); } while (0);
  }
}

struct TableEntry {
    void *unk0;
    unsigned short unk4;
    unsigned short unk6;
};
extern struct TableEntry Lm936_50e0[] __asm__(".Lm936_50e0");

void OvlFunc_936_2008464(void) {
    /* This function needs the array view of iwram_3001ebc. */
    extern unsigned char iwram_3001ebc__arr[] __asm__("iwram_3001ebc");
    unsigned int map;
    unsigned int i;
    unsigned char *actor;
    short *p;
    int v;
    int arg1, arg2;
    int a = 0x8000;
    int b = 0x4000;
    int c = -8;



    map = *(unsigned int *)iwram_3001ebc__arr;
    __CutsceneStart();

    for (i = 8; i <= 0x41; i++) {
        actor = (unsigned char *)__MapActor_GetActor(i);
        if (actor != 0) {
            *(actor + 0x55) = 0;
        }
    }

    p = (short *)(map + (0xb6 << 1));
    v = *p - 1;
    __PlaySound(0x9e);

    arg1 = Lm936_50e0[v].unk4;
    arg2 = Lm936_50e0[v].unk6;
    __Func_8010560(Lm936_50e0[v].unk0, arg1, arg2);

    __MapActor_SetSpeed(0, a, b);

    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 0;

    __MapActor_SetAnim(0, 2);
    __Func_8092208(0, 2, c);
    __CutsceneWait(10);
    __Func_8091e9c(*p);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
void OvlFunc_936_2008504(void) {
    int size;
    unsigned char *actor;

    __CutsceneStart();
    __PlaySound(0xbc);
    size = 2;
    __CopyMapTiles(0x24, 0x17, 0x2b, 0xc, size, size);
    __WaitFrames(5);
    __CopyMapTiles(0x27, 0x17, 0x2b, 0xc, size, size);
    __WaitFrames(5);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    actor = (unsigned char *)__MapActor_GetActor(0);
    actor[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    API_MapActor_TravelBy(0, 0, -8);
    __CutsceneWait(10);
    __Func_8091e9c(2);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_2008590.s");
extern unsigned char iwram_3001ee0[];

void OvlFunc_936_200958c(void) {
    unsigned int *base;

    if (API_GetFlag(0x80 << 2)) {
        base = *(unsigned int **)iwram_3001ee0;
        base[6] = 0;
        API_ClearFlag(0x80 << 2);
    }
}

void OvlFunc_936_20095b4(void) {
    unsigned int *r5;

    if (!API_GetFlag(0x200)) {
        r5 = *(unsigned int **)iwram_3001ee0;
        r5[6] = (unsigned int)__MapActor_GetActor(0);
        API_SetFlag(0x200);
    }
}

void OvlFunc_936_20095e0(void)
{
    unsigned char *p;

    p = __MapActor_GetActor(0);
    {
        int flags = 1;
        flags |= p[0x23];
        p[0x23] = flags;
    }
}



void OvlFunc_936_20095f8(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0);
    p[0x23] = p[0x23] & 0xfe;
}


void OvlFunc_936_2009610(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __StopTask(OvlFunc_936_200b90c);
  __WaitFrames(1);
  new_var = 0;
  new_var2 = 0x1a;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0x916);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
}

extern unsigned char Lconst_63[] __asm__(".Lconst_63");
extern unsigned char Lconst_66[] __asm__(".Lconst_66");
extern unsigned char Lconst_99[] __asm__(".Lconst_99");
extern unsigned char Lconst_9b[] __asm__(".Lconst_9b");
extern unsigned char Lconst_9c[] __asm__(".Lconst_9c");
/* pooled literal (ldr rN, =0x63, =0x66, =0x99, =0x9b, =0x9c in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_63, 0x63\n.equ .Lconst_66, 0x66\n.equ .Lconst_99, 0x99\n.equ .Lconst_9b, 0x9b\n.equ .Lconst_9c, 0x9c");
int Kalay_MapInit(void)
{
    extern void OvlFunc_936_20096bc(void);
    extern void OvlFunc_936_20097e8(void);
    extern void OvlFunc_936_2009858(void);
    extern void OvlFunc_936_20098a4(void);
    extern void OvlFunc_936_2009930(void);
    int room;

    API_SetFlag(0x87a);
    {
        extern short gState_s936[] __asm__("gState");
        room = gState_s936[0xe0];
    }
    if (room == (int)Lconst_63)
        OvlFunc_936_20096bc();
    else if (room == (int)Lconst_66)
        OvlFunc_936_20097e8();
    else if (room == (int)Lconst_99)
        OvlFunc_936_2009858();
    else if (room == (int)Lconst_9b)
        OvlFunc_936_20098a4();
    else if (room == (int)Lconst_9c)
        OvlFunc_936_2009930();
    return 0;
}
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_20096bc.s");

void OvlFunc_936_20097e8(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    if (__GetFlag(0x941)) {
        __SetFlag(0x321);
        __SetFlag(0x913);
        __SetFlag(0x912);
        __SetFlag(0x915);
    }

    if (__GetFlag(0x94 << 4)) {
        __SetFlag(0x321);
    }

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);

    if (val != 0) {
        if (__GetFlag(0x912)) {
            return;
        }
    } else {
        return;
    }

    OvlFunc_936_200a008();
}

extern void OvlFunc_936_200ba3c(int);
extern void OvlFunc_936_200a6c0(void);

void OvlFunc_936_2009858(void) {
    GlobalState *p;

    if (!API_GetFlag(0xfd6)) {
        OvlFunc_936_200ba3c(0xc);
    }
    if (API_GetFlag(0x915)) {
        ((struct Actor *)__MapActor_GetActor(8))->facing = 0;
    }
    p = &gState;
    if (*(short *)((char *)p + 0x1c2) == 0xa) {
        OvlFunc_936_200a6c0();
    }
}

extern unsigned int iwram_3001ebc;
extern void __Func_800fe9c(void);
extern void __Func_8091ff0(int);

void OvlFunc_936_20098a4(void)
{
    unsigned int r3;
    unsigned int r2;
    short val;

    *(int *)((char *)iwram_3001ebc + 0x1c0) = 0x204;
    if (API_GetFlag(0x915)) {
        API_CopyMapTiles(0x3a, 5, 0x3a, 8, 2, 3);
        API_Func_8010704(8, 0xb, 2, 1, 8, 0xa);
        API_CopyMapTiles(8, 0xc, 8, 0xb, 2, 1);
        __Func_800fe9c();
        API_WaitFrames(1);
    }
    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);
    if (val <= 3) {
        __Func_8091ff0(0xaa);
    }
}
struct KalayInitGlobals { unsigned char *field; unsigned char gap[0x20]; unsigned char *camera; };
struct KalayInitState { unsigned char gap[0x1c2]; short room; };
static inline void KalayInitByte(unsigned char *p,int value) { *p=value; }
static inline void KalayInitHalf(unsigned short *p,int value) { *p=value; }

void OvlFunc_936_2009930(void)
{
    extern void OvlFunc_936_200b768(void);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void * __MapActor_GetActor(int);
    extern struct KalayInitGlobals KalayGlobals __asm__("iwram_3001ebc");
    extern struct KalayInitState KalayState __asm__("gState");
    extern void __Func_8091494(int);
    unsigned char *cameraState;
    int sceneFlag, target;
    int flagValue1;
    int flagValue2;
    int flagValue3;
    int flagValue4;
    int flagValue5;
    unsigned char *actor;

    *(int *)(KalayGlobals.field + 0x1c0) = 0x204;
    __Func_8091494(0);
    sceneFlag = API_GetFlag(0x109);
    if (sceneFlag != 0) {
        cameraState = KalayGlobals.camera;
        target = API_GetFlag(0x200);
        if (target != 0) target = (int)__MapActor_GetActor(0);
        *(int *)(cameraState + 0x18) = target;
    } else {
        API_SetFlag(0x200);
        if (KalayState.room == 4) {
            *(int *)(KalayGlobals.camera + 0x18) = sceneFlag;
            API_ClearFlag(0x200);
        }
    }
    flagValue1 = API_GetFlag(0x302);
    if (flagValue1 != 0) {
        API_MapActor_SetPos(11, 0x960000, 0x2d80000);
        flagValue2 = API_GetFlag(0x201);
        if (flagValue2 != 0) {
            actor = __MapActor_GetActor(11);
            API_MapActor_SetAnim(11, 5);
            API_Func_8010704(0, 0, 1, 1, 9, 14);
            API_Func_8010704(0, 0, 1, 1, 9, 0x2d);
            actor = __MapActor_GetActor(11);
            actor += 0x23;
            KalayInitByte(actor, 2 | *actor);
        }
    }
    actor = __MapActor_GetActor(8);
    __Actor_SetSpriteFlags(actor, 0);
    actor = __MapActor_GetActor(9);
    __Actor_SetSpriteFlags(actor, 0);
    API_StartTask(OvlFunc_936_200b768, 0xc80);
    flagValue3 = API_GetFlag(0x915);
    if (flagValue3 != 0) {
        API_MapActor_SetPos(10, 0x1aa0000, 0x2da0000);
        actor = __MapActor_GetActor(10);
        KalayInitHalf((unsigned short *)(actor + 6), 0x5000);
        API_CopyMapTiles(0x58, 0x30, 0x58, 0x2d, 2, 3);
        API_CopyMapTiles(24, 0x31, 24, 0x30, 2, 1);
        API_CopyMapTiles(25, 0x2a, 25, 0x2f, 1, 1);
        API_Func_8010704(22, 0x32, 2, 1, 24, 0x31);
    }
    flagValue4 = API_GetFlag(0x302);
    if (flagValue4 != 0) {
        API_MapActor_SetPos(8, 0xe80000, 0x2dc0000);
        API_Func_8010704(7, 0x2c, 1, 1, 0, 1);
        API_CopyMapTiles(0x4a, 0x3a, 0x4e, 0x29, 1, 5);
        API_CopyMapTiles(16, 0x6d, 13, 0x6d, 3, 2);
        API_CopyMapTiles(0x43, 0x40, 0x47, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x48, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x44, 0x49, 0x2b, 1, 2);
        API_CopyMapTiles(0x43, 0x44, 0x4a, 0x2b, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x4b, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x42, 0x4c, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x4d, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x4e, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x4f, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x42, 0x50, 0x2c, 1, 2);
        API_CopyMapTiles(2, 0, 9, 0x2a, 2, 2);
        API_CopyMapTiles(0x44, 0x40, 0x47, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x48, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x44, 0x49, 0x2b, 1, 2);
        API_CopyMapTiles(0x44, 0x44, 0x4a, 0x2b, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x4b, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x42, 0x4c, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x4d, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x4e, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x4f, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x42, 0x50, 0x2c, 1, 2);
        API_CopyMapTiles(4, 0, 9, 0x2a, 2, 2);
        API_CopyMapTiles(7, 11, 7, 0x2a, 10, 8);
        API_CopyMapTiles(0x47, 12, 0x47, 0x2b, 10, 13);
        API_Func_8010704(6, 13, 12, 12, 6, 0x2c);
        API_Func_8010704(0, 1, 1, 1, 7, 0x2c);
    } else {
        switch (KalayState.room) {
        case 1:
        case 2:
            __Func_8091ff0(0xaa);
            break;
        }
    }
    flagValue5 = API_GetFlag(0x303);
    if (flagValue5 != 0) {
        API_MapActor_SetPos(9, 0x2b80000, 0x2dc0000);
        API_CopyMapTiles(0x4a, 0x3a, 0x6b, 0x29, 1, 5);
        API_CopyMapTiles(0x2d, 0x6d, 0x2a, 0x6d, 3, 2);
        API_CopyMapTiles(0x43, 0x40, 0x66, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x67, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x68, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x42, 0x69, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x6a, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x6b, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x40, 0x6c, 0x2c, 1, 2);
        API_CopyMapTiles(0x43, 0x42, 0x6d, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x66, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x67, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x68, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x42, 0x69, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x6a, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x6b, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x40, 0x6c, 0x2c, 1, 2);
        API_CopyMapTiles(0x44, 0x42, 0x6d, 0x2c, 1, 2);
        API_CopyMapTiles(0x26, 14, 0x26, 0x2c, 8, 4);
        API_CopyMapTiles(0x66, 14, 0x66, 0x2c, 8, 12);
        API_Func_8010704(0x25, 13, 10, 12, 0x25, 0x2b);
    } else {
        switch (KalayState.room) {
        case 3:
        case 4:
            __Func_8091ff0(0xaa);
            break;
        }
    }
}

extern void OvlFunc_936_2009ea4(unsigned int);

void OvlFunc_936_2009e6c(void)
{
    OvlFunc_936_2009ea4(0x1b);
    OvlFunc_936_2009ea4(0x1c);
    OvlFunc_936_2009ea4(0x1d);
    OvlFunc_936_2009ea4(0x1e);
    OvlFunc_936_2009ea4(0x20);
    OvlFunc_936_2009ea4(0x1f);
    OvlFunc_936_2009ea4(0x21);
    OvlFunc_936_2009ea4(0x22);
}

extern void __Actor_SetScript(void *actor, void *script);
extern unsigned char gScript_936__0200beac[] __asm__("gScript_936__0200beac");

void OvlFunc_936_2009ea4(unsigned int arg0) {
    unsigned char *actor;
    unsigned int r;
    unsigned short val;

    actor = (unsigned char *)__MapActor_GetActor(arg0);
    *(unsigned short *)(actor + 0x64) = arg0;
    r = __Random();
    val = (r * 5) >> 12;
    *(unsigned short *)(actor + 0x66) = val;
    __Actor_SetScript(actor, gScript_936__0200beac);
}

extern int Lm936_5144 __asm__(".Lm936_5144");
extern void __MapActor_SetSpeed(unsigned int, int, int);
extern void __StartTask(void *, int);
extern void OvlFunc_936_2009f14(void);

void OvlFunc_936_2009ed8(void)
{
    int speed1 = 0x19999;
    int speed2 = 0xcccc;

    do {
        int zero = 0;
        Lm936_5144 = zero;
    } while (speed1 == 0);
    __MapActor_SetSpeed(0x14, speed1, speed2);
    __MapActor_SetSpeed(0x15, speed1, speed2);
    {
        int prio = 0xc8 << 4;
        __StartTask(OvlFunc_936_2009f14, prio);
    }
}

extern unsigned char gScript_936__0200bec0[];
extern unsigned char gScript_936__0200bfb0[];

void OvlFunc_936_2009f14(void)
{
    extern void __MapActor_SetBehavior(int, void *);

    switch (Lm936_5144) {
    case 0:
        ((struct Actor *)__MapActor_GetActor(0x15))->waveCounter = 0;
        __MapActor_SetBehavior(0x15, gScript_936__0200bec0);
        Lm936_5144++;
        break;

    case 1:
        if (((struct Actor *)__MapActor_GetActor(0x15))->waveCounter != 0) {
            ((struct Actor *)__MapActor_GetActor(0x14))->waveCounter = 0;
            __MapActor_SetBehavior(0x14, gScript_936__0200bfb0);
            Lm936_5144++;
        }
        break;

    case 2:
        if (((struct Actor *)__MapActor_GetActor(0x14))->waveCounter != 0) {
            ((struct Actor *)__MapActor_GetActor(0x14))->waveCounter = 0;
            __MapActor_SetBehavior(0x14, gScript_936__0200bec0);
            Lm936_5144++;
        }
        break;

    case 3:
        if (((struct Actor *)__MapActor_GetActor(0x14))->waveCounter != 0) {
            ((struct Actor *)__MapActor_GetActor(0x15))->waveCounter = 0;
            __MapActor_SetBehavior(0x15, gScript_936__0200bfb0);
            Lm936_5144++;
        }
        break;

    case 4:
        if (((struct Actor *)__MapActor_GetActor(0x15))->waveCounter != 0) {
            Lm936_5144 = 0;
        }
        break;
    }
}

static inline void KalayDoorByte(unsigned char *p, int value) { *p = value; }
static inline void KalayDoorHalf(unsigned short *p, int value) { *p = value; }

static inline void KalayDoorMessage(int actor, int message)
{
    extern int __Func_8093054(int, int);
    __Func_8093054(actor, message);
}

void OvlFunc_936_200a008(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern int __Func_8093054(int, int);
    extern int __ShowActorMessage_NoWait(int, int);
    unsigned char * fieldState;
    int choice1;
    unsigned char *actor;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0xc00000, 0x1560000);
    API_WaitFrames(1);
    API_Func_80933d4(0x3333, 0x666);
    API_Func_80933f8(0xc00000, -1, 0xfc0000, 1);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c8) = 0x28;
    API_MapTransitionIn();
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xc0, 0x116);
    API_MapActor_SetSpeed(8, 0x10000, 0x8000);
    API_MapActor_SetSpeed(9, 0x10000, 0x8000);
    actor = ((unsigned char *)__MapActor_GetActor(8));
    KalayDoorHalf((unsigned short *)(actor + 6), 0x3000);
    actor = ((unsigned char *)__MapActor_GetActor(9));
    KalayDoorHalf((unsigned short *)(actor + 6), 0x5000);
    API_WaitFrames(1);
    actor = ((unsigned char *)__MapActor_GetActor(8));
    actor += 0x5a;
    KalayDoorByte(actor, (0xfe & *actor));
    actor = ((unsigned char *)__MapActor_GetActor(9));
    actor += 0x5a;
    KalayDoorByte(actor, (0xfe & *actor));
    API_MapActor_TravelToAnim(8, 0xb8, 0xe8);
    API_MapActor_TravelToAnimWait(9, 0xc6, 0xe8);
    API_MapActor_SetAnim(8, 1);
    API_CutsceneWait(20);
    actor = ((unsigned char *)__MapActor_GetActor(8));
    actor += 0x5a;
    KalayDoorByte(actor, (*actor | 1));
    actor = ((unsigned char *)__MapActor_GetActor(9));
    actor += 0x5a;
    KalayDoorByte(actor, (1 | *actor));
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 4);
    API_MessageID(0x1b05);
    API_ActorMessage_Wait(8, 0, 10);
    API_Func_8092adc(9, 0x5000, 10);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage_Wait(9, 0, 10);
    API_MapActor_Surprise(0, 0x102);
    API_CutsceneWait(0x3c);
    actor = ((unsigned char *)__MapActor_GetActor(0));
    if (actor != 0) {
        API_MapActor_SetPos(2, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(2, 0xd4, 0x10c);
    API_Func_8092adc(0, 0xe000, 0);
    API_Func_8092adc(2, 0x6000, 20);
    API_ActorMessage_Wait(0x4002, 0, 20);
    API_Func_8092adc(0, 0xc000, 0);
    API_MapActor_TravelToAnimWait(2, 0xca, 0xfe);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(10);
    API_ActorMessage_Wait(2, 0, 10);
    API_MapActor_Emote(8, 0x101, 0);
    API_MapActor_Emote(9, 0x101, 0x28);
    API_Func_8092adc(8, 0, 0);
    API_Func_8092adc(9, 0x8000, 0x28);
    API_Func_8092adc(8, 0x3000, 0);
    API_Func_8092adc(9, 0x3000, 20);
    API_MapActor_Emote(2, 0x102, 0x3c);
    API_Func_80925cc(2, 1);
    API_ActorMessage_Wait(2, 0, 10);
    API_Func_80925cc(8, 2);
    API_ActorMessage_Wait(8, 0, 10);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(8, 0, 10);
    API_Func_80925cc(9, 2);
    API_ActorMessage_Wait(9, 0, 20);
    API_Func_80925cc(2, 1);
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0x6000, 10);
    KalayDoorMessage(0x4002, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(8, 1);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 10);
    API_MapActor_Emote(2, 0x101, 0x28);
    API_Func_8092adc(2, 0xa000, 20);
    API_Func_80925cc(9, 1);
    API_MapActor_DoAnim(9, 3);
    API_Func_8092adc(2, 0xc000, 0);
    API_ActorMessage_Wait(9, 0, 10);
    API_Func_8092adc(2, 0x6000, 0x3c);
    API_Func_8092adc(2, 0xc000, 10);
    API_ActorMessage_Wait(2, 0, 10);
    API_Func_8092adc(8, 0, 0);
    API_Func_8092adc(9, 0x8000, 0x28);
    API_Func_8092adc(8, 0x3000, 0);
    API_Func_8092adc(9, 0x3000, 10);
    API_Func_80925cc(8, 1);
    __ShowActorMessage_NoWait(8, 0);
    API_Func_8092adc(2, 0x6000, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_Func_80925cc(2, 2);
        API_ActorMessage_Wait(0x4002, 0, 10);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_MapActor_DoAnim(2, 4);
        API_ActorMessage_Wait(0x4002, 0, 10);
    }
    API_Func_80925cc(9, 2);
    API_ActorMessage_Wait(9, 0, 10);
    API_Func_8092adc(2, 0xc000, 10);
    API_MapActor_DoAnim(2, 4);
    API_ActorMessage_Wait(2, 0, 10);
    API_MapActor_Surprise(8, 0x102);
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(8, 0, 10);
    API_Func_8092adc(2, 0xa000, 10);
    API_MapActor_DoAnim(2, 3);
    API_ActorMessage_Wait(2, 0, 10);
    API_MapActor_Surprise(8, 0x102);
    API_MapActor_Surprise(9, 0x102);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(8, 2);
    API_ActorMessage_Wait(8, 0, 10);
    API_Func_80925cc(9, 2);
    API_Func_8092adc(9, 0x8000, 10);
    API_ActorMessage_Wait(9, 0, 10);
    API_Func_8092adc(8, 0, 10);
    API_MapActor_DoAnim(8, 3);
    API_Func_8092adc(8, 0x3000, 10);
    API_ActorMessage(8, 0);
    API_Func_8092adc(9, 0x3000, 10);
    API_MapActor_DoAnim(2, 3);
    API_Func_8092adc(2, 0x6000, 10);
    KalayDoorMessage(0x4002, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 1);
    API_ActorMessage_Wait(0x4002, 0, 10);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(2, 3);
    API_Func_8092adc(2, 0xc000, 10);
    API_MapActor_DoAnim(2, 3);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    actor = ((unsigned char *)__MapActor_GetActor(8));
    KalayDoorHalf((unsigned short *)(actor + 6), 0);
    actor = ((unsigned char *)__MapActor_GetActor(9));
    KalayDoorHalf((unsigned short *)(actor + 6), 0x8000);
    actor = ((unsigned char *)__MapActor_GetActor(8));
    actor += 0x5a;
    KalayDoorByte(actor, (0xfe & *actor));
    actor = ((unsigned char *)__MapActor_GetActor(9));
    actor += 0x5a;
    KalayDoorByte(actor, (0xfe & *actor));
    API_MapActor_TravelToAnim(8, 0xa8, 0xe8);
    API_MapActor_TravelToAnimWait(9, 0xd4, 0xe8);
    API_MapActor_SetAnim(8, 1);
    API_CutsceneWait(20);
    actor = ((unsigned char *)__MapActor_GetActor(8));
    actor += 0x5a;
    KalayDoorByte(actor, (*actor | 1));
    actor = ((unsigned char *)__MapActor_GetActor(9));
    actor += 0x5a;
    KalayDoorByte(actor, (1 | *actor));
    API_MapActor_TravelToAnimWait(2, 0xc0, 0xe8);
    API_Func_8092adc(2, 0xc000, 0);
    API_PlaySound(0xbc);
    API_CopyMapTiles(0x24, 23, 0x2b, 12, 2, 2);
    API_WaitFrames(5);
    API_CopyMapTiles(0x27, 23, 0x2b, 12, 2, 2);
    API_WaitFrames(5);
    API_MapActor_TravelToAnimWait(2, 0xc0, 0xde);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetSpeed(0, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(0, 0xc0, 0xde);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(9, 3);
    API_MapActor_TravelToAnim(8, 0xb8, 0xe8);
    API_MapActor_TravelToAnimWait(9, 0xc6, 0xe8);
    API_MapActor_TravelToAnim(8, 0xbc, 0xd4);
    API_MapActor_TravelToAnimWait(9, 0xc2, 0xd4);
    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_SetPos(9, 0, 0);
    fieldState = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    *(int *)(fieldState + 0x1c8) = 24;
    *(int *)(fieldState + 0x1c0) = 0x201;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(5);
    API_CutsceneEnd();
}

static inline void KalayFacing(unsigned char *p, int value)
{
    *(unsigned short *)(p + 6) = value;
}

void OvlFunc_936_200a6c0(void)
{
    extern unsigned char gScript_936__0200c21c[];
    extern unsigned char gScript_936__0200c230[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(struct Actor *, int);
    extern void __Func_800fe9c(void);
    extern int __Func_8091c7c(int, int);
    extern unsigned char * __Func_8093554(void);
    extern void * __MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, int);
    extern unsigned int __Random(void);
    extern int __ShowActorMessage_NoWait(int, int);
    unsigned int flagValue1;
    unsigned int flagValue2;
    unsigned int flagValue3;
    unsigned int flagValue4;
    int choice5;
    unsigned char * flagValue6;
    unsigned char *actor;
    struct Actor *player;
    unsigned char *departingActor;
    unsigned char *transitionState;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(9, 0x1b80000, 0x20a0000);
    actor = __MapActor_GetActor(9);
    __Actor_SetSpriteFlags((struct Actor *)actor, 0);
    API_Func_80933f8(0x1b80000, -1, 0x20a0000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_Func_80933d4(0x19999, 0x3333);
    API_Func_80933f8(0x1b80000, -1, 0x1900000, 1);
    API_PlaySound(0x8d);
    API_MapActor_SetSpeed(9, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(9, 0x1b8, 0x190);
    API_Func_80933d4(0xc000, 0x1800);
    API_Func_80933f8(0x1b80000, -1, 0x12c0000, 1);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(9, 0x1b8, 0x12c);
    API_MapActor_SetAnim(9, 0);
    API_PlaySound(0x121);
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(11, 0xcccc, 0x6666);
    API_MapActor_SetPos(11, 0x1b70000, 0x1320000);
    API_MapActor_Jump(11, 4, 0);
    API_MapActor_TravelToAnimWait(11, 0x1b7, 0x138);
    API_MapActor_TravelToAnimWait(11, 0x1a0, 0x138);
    API_MapActor_TravelToAnimWait(11, 0x190, 0x100);
    API_Func_8092adc(11, 0x3000, 0x28);
    API_Func_80933f8(0x19a0000, -1, 0x1180000, 1);
    API_MapActor_SetSpeed(10, 0x9999, 0x4ccc);
    API_MapActor_SetPos(10, 0x1b70000, 0x1320000);
    API_MapActor_Jump(10, 4, 0);
    API_MapActor_TravelToAnimWait(10, 0x1b7, 0x138);
    API_MapActor_TravelToAnimWait(10, 0x1a0, 0x138);
    API_MapActor_TravelToAnimWait(10, 0x184, 0x10e);
    API_Func_8092adc(10, 0xd000, 10);
    API_Func_8092adc(11, 0x5000, 10);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetPos(0, 0x1b70000, 0x1320000);
    API_MapActor_Jump(0, 4, 0);
    API_MapActor_TravelToAnimWait(0, 0x1b7, 0x138);
    API_MapActor_TravelToAnimWait(0, 0x1a0, 0x138);
    API_MapActor_TravelToAnimWait(0, 0x184, 0x12c);
    API_Func_8092adc(0, 0xc000, 0x28);
    actor = __MapActor_GetActor(0);
    flagValue1 = __Random();
    actor += 0x66;
    *(unsigned short *)actor = ((unsigned int)((flagValue1 * 4) + flagValue1) >> 12);
    API_MapActor_SetBehavior(0, (int)gScript_936__0200c21c);
    API_MapActor_Jump(11, 2, 20);
    API_MapActor_DoAnim(11, 3);
    API_MessageID(0x256f);
    API_ActorMessage_Wait(11, 0, 10);
    API_MapActor_DoAnim(10, 3);
    player = (struct Actor *)__MapActor_GetActor(0);
    if (player != 0) {
        API_MapActor_SetPos(1, player->pos.x, player->pos.z);
    }
    player = (struct Actor *)__MapActor_GetActor(0);
    if (player != 0) {
        API_MapActor_SetPos(2, player->pos.x, player->pos.z);
    }
    player = (struct Actor *)__MapActor_GetActor(0);
    if (player != 0) {
        API_MapActor_SetPos(3, player->pos.x, player->pos.z);
    }
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
    API_MapActor_TravelToAnim(1, 0x17a, 0x136);
    API_MapActor_TravelToAnim(2, 0x190, 0x120);
    API_MapActor_TravelToAnimWait(3, 0x19a, 0x134);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(2, 1);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0x28);
    actor = __MapActor_GetActor(1);
    flagValue2 = __Random();
    actor += 0x66;
    *(unsigned short *)actor = ((unsigned int)((flagValue2 * 4) + flagValue2) >> 12);
    actor = __MapActor_GetActor(2);
    flagValue3 = __Random();
    actor += 0x66;
    *(unsigned short *)actor = ((unsigned int)((flagValue3 * 4) + flagValue3) >> 12);
    actor = __MapActor_GetActor(3);
    flagValue4 = __Random();
    actor += 0x66;
    *(unsigned short *)actor = ((unsigned int)((flagValue4 * 4) + flagValue4) >> 12);
    API_MapActor_SetBehavior(1, (int)gScript_936__0200c21c);
    API_MapActor_SetBehavior(2, (int)gScript_936__0200c21c);
    API_MapActor_SetBehavior(3, (int)gScript_936__0200c21c);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_ActorMessage_Wait(0x2002, 0, 10);
    API_MapActor_Emote(10, 0x100, 0x28);
    API_Func_8092adc(10, 0x3000, 20);
    API_ActorMessage_Wait(10, 0, 10);
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_MapActor_SetIdle(2);
    API_MapActor_SetIdle(3);
    API_WaitFrames(1);
    API_Func_8092adc(2, 0xc000, 10);
    API_MapActor_DoAnim(2, 3);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 20);
    API_MapActor_DoAnim(10, 3);
    API_ActorMessage_Wait(10, 0, 10);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage_Wait(0x2003, 0, 10);
    API_MapActor_DoAnim(10, 3);
    API_ActorMessage_Wait(10, 0, 10);
    API_MapActor_Emote(1, 0x101, 0x3c);
    API_ActorMessage_Wait(1, 0, 10);
    API_Func_8092adc(10, 0x5000, 0);
    API_Func_80925cc(11, 2);
    API_ActorMessage_Wait(11, 0, 10);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0x2000, 0);
    API_Func_8092adc(3, 0xa000, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 10);
    API_Func_8092adc(10, 0xd000, 10);
    API_MapActor_DoAnim(10, 3);
    API_ActorMessage_Wait(10, 0, 10);
    API_MapActor_DoAnim(11, 3);
    API_MapActor_Surprise(2, 0x102);
    API_CutsceneWait(0x28);
    API_Func_809259c(2, 2);
    API_ActorMessage_Wait(0x2002, 0, 10);
    API_Func_8092adc(11, 0x3000, 10);
    API_MapActor_SetAnim(11, 4);
    API_ActorMessage_Wait(11, 0, 10);
    API_MapActor_Emote(3, 0x101, 0x28);
    API_ActorMessage_Wait(0x2003, 0, 10);
    API_Func_8092adc(10, 0x3000, 10);
    API_MapActor_Emote(10, 0x108, 20);
    API_ActorMessage_Wait(10, 0, 10);
    API_Func_80925cc(1, 2);
    API_ActorMessage_Wait(1, 0, 10);
    API_Func_8092adc(11, 0x5000, 0);
    API_Func_8092adc(10, 0x5000, 10);
    API_MapActor_SetAnim(11, 4);
    API_ActorMessage_Wait(11, 0, 10);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0xe000, 0x28);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 10);
    API_MapActor_DoAnim(11, 4);
    API_ActorMessage_Wait(11, 0, 10);
    API_MapActor_DoAnim(10, 4);
    API_ActorMessage_Wait(10, 0, 10);
    API_MapActor_Emote(0, 0x105, 0);
    API_MapActor_Emote(1, 0x105, 0);
    API_MapActor_Emote(2, 0x105, 0);
    API_MapActor_Emote(3, 0x105, 0x3c);
    API_Func_8092adc(10, 0x3000, 10);
    API_MapActor_SetAnim(10, 3);
    __ShowActorMessage_NoWait(10, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0x6000, 0);
    API_Func_8092adc(3, 0xa000, 0);
    choice5 = __Func_8091c7c(0, 0);
    if (choice5 == 0) {
        API_CutsceneWait(20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 3);
    } else {
        API_CutsceneWait(20);
        API_Func_80925cc(11, 2);
        API_ActorMessage_Wait(11, 0, 0x28);
        API_ActorMessage_Wait(11, 0, 10);
        API_MapActor_Emote(3, 0x106, 0x28);
        API_Func_8092adc(3, 0xc000, 20);
        API_ActorMessage_Wait(0x2003, 0, 10);
    }
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 10);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(8, 0x3000, 0);
    API_MapActor_DoAnim(10, 3);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x1180000, -1, 0xc80000, 1);
    API_MapActor_TravelToAnimWait(10, 0x14d, 0xde);
    API_MapActor_TravelToAnimWait(10, 0x11c, 0xc6);
    API_Func_8092adc(10, 0x8000, 10);
    API_MapActor_DoAnim(10, 3);
    API_Func_8092adc(8, 0, 10);
    API_MapActor_DoAnim(8, 3);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(8, 0x10c, 0xc6);
    API_Func_8092adc(8, 0xc000, 10);
    API_Func_80925cc(8, 2);
    API_PlaySound(0x7d);
    API_CopyMapTiles(0x47, 0x3c, 0x4c, 11, 2, 1);
    API_Func_8010704(0x47, 0x3c, 2, 1, 16, 11);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnimWait(8, 0xf6, 0xc6);
    API_Func_8092adc(8, 0, 20);
    flagValue6 = __Func_8093554();
    *(unsigned char *)(((unsigned char *)flagValue6) + 0x55) = 0;
    API_Func_80933d4(0x9999, 0x1333);
    API_Func_80933f8(0xf80000, -1, 0xaa0000, 1);
    API_MapActor_TravelToAnimWait(10, 0x10e, 0xc6);
    API_MapActor_TravelToAnimWait(10, 0x10e, 0xae);
    API_MapActor_TravelToAnimWait(10, 0xe0, 0xaa);
    API_MapActor_TravelToAnimWait(10, 0xd2, 0x9e);
    API_MapActor_TravelToAnimWait(10, 0xf6, 0x94);
    API_MapActor_TravelToAnimWait(10, 0xf6, 0x8e);
    API_MapActor_SetPos(10, 0, 0);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x202;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_MapActor_SetPos(9, 0x1b80000, 0x1540000);
    departingActor = __MapActor_GetActor(9);
    KalayFacing(departingActor, 0x4000);
    API_Func_80933f8(0x17c0000, -1, 0x1180000, 0);
    __Func_800fe9c();
    API_WaitFrames(10);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_MapActor_TravelToAnimWait(11, 0x1a4, 0x11a);
    API_MapActor_TravelToAnimWait(11, 0x1a4, 0x138);
    API_MapActor_TravelToAnimWait(11, 0x1b7, 0x138);
    API_MapActor_TravelToAnimWait(11, 0x1b7, 0x132);
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetBehavior(1, (int)gScript_936__0200c230);
    API_MapActor_SetBehavior(2, (int)gScript_936__0200c230);
    __MapActor_RunScript(3, (int)gScript_936__0200c230);
    API_Func_80933f8(0x19a0000, -1, 0x12c0000, 1);
    API_MapActor_TravelToAnimWait(0, 0x1a0, 0x138);
    API_MapActor_TravelToAnimWait(0, 0x1b7, 0x138);
    API_MapActor_TravelToAnimWait(0, 0x1b7, 0x132);
    API_MapActor_SetPos(0, 0, 0);
    API_PlaySound(0x8d);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x1b80000, -1, 0x1a40000, 1);
    API_MapActor_TravelToAnimWait(9, 0x1b8, 0x1a4);
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0x1b80000, -1, 0x2580000, 1);
    API_MapActor_SetSpeed(9, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(9, 0x1b8, 0x1f4);
    API_MapActor_TravelToAnim(9, 0x1b8, 0x258);
    API_PlaySound(0x121);
    transitionState = *(unsigned char **)CS_iwram_3001ebc;
    *(int *)(transitionState + 0x1c8) = 24;
    *(int *)(transitionState + 0x1c0) = 0x100;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(10);
    API_CutsceneEnd();
}

extern unsigned int iwram_3001ebc;

unsigned int OvlFunc_936_200b184(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned int *r2;
    unsigned int i;
    unsigned int *entry;

    base = (unsigned int *)iwram_3001ebc;
    i = 8;
    r2 = (unsigned int *)((char *)base + 0x34);
    do {
        entry = (unsigned int *)*r2++;
        if ((int)arg0 == (*(int *)((char *)entry + 8) >> 20)) {
            if ((int)arg1 == (*(int *)((char *)entry + 0x10) >> 20))
                return (unsigned int)entry;
        }
        i++;
    } while (i <= 0x41);
    return 0;
}

INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200b1b8.s");
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_936__0200c268[12];

struct Actor936 {
    unsigned char _pad[8];
    int pos_x;
    unsigned char _pad2[12];
    int field_18;
    int field_1c;
};

void OvlFunc_936_200b2a4(void)
{
    extern void *__MapActor_GetActor(int);
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    extern void __CutsceneStart(void);
    extern void __CutsceneEnd(void);
    extern void __CutsceneWait(int);
    extern void __CopyMapTiles(int, int, int, int, int, int);
    extern void __Func_8010704(int, int, int, int, int, int);
    extern void __MapActor_SetPos(int, int, int);
    extern void __MapActor_SetBehavior(int, void *);
    extern void OvlFunc_936_20095b4(void);

    struct Actor936 *actor8;
    struct Actor936 *actor9;
    struct Actor936 *actor11;
    int flag;
    unsigned int i;
    unsigned int five;
    unsigned int one;

    unsigned int a4;
    unsigned int a5;

    actor8 = (struct Actor936 *)__MapActor_GetActor(8);
    actor9 = (struct Actor936 *)__MapActor_GetActor(9);
    flag = __GetFlag(0x302);
    if (!flag) {
        if ((actor8->pos_x >> 19) <= 0x1d) {
            actor11 = (struct Actor936 *)__MapActor_GetActor(0xb);
            __CutsceneStart();
            __Func_8010704(7, 0x2c, 1, 1, flag, 1);
            for (i = 0x43, one = 1, five = 5; i <= 0x4a; i++) {
                __CopyMapTiles(i, 0x3a, 0x4e, 0x29, one, five);
                __CutsceneWait(4);
                if (i == 0x46) {
                    __SetFlag(0x302);
                }
            }
            i = 2;
            __CopyMapTiles(0x10, 0x6d, 0xd, 0x6d, 3, i);
            __CutsceneWait(0x28);
            actor11->field_18 = 0x1999;
            actor11->field_1c = 0x1999;
            API_MapActor_SetPos(0xb, 0x960000, 0x2d80000);
            __MapActor_SetBehavior(0xb, gScript_936__0200c268);
            five = 1;
            __CopyMapTiles(0x43, 0x40, 0x47, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x40, 0x48, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x44, 0x49, 0x2b, five, i);
            __CopyMapTiles(0x43, 0x44, 0x4a, 0x2b, five, i);
            __CopyMapTiles(0x43, 0x40, 0x4b, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x42, 0x4c, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x40, 0x4d, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x40, 0x4e, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x40, 0x4f, 0x2c, five, i);
            __CopyMapTiles(0x43, 0x42, 0x50, 0x2c, five, i);
            __CopyMapTiles(2, 0, 9, 0x2a, i, i);
            __CutsceneWait(0x28);
            __CopyMapTiles(0x44, 0x40, 0x47, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x40, 0x48, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x44, 0x49, 0x2b, five, i);
            __CopyMapTiles(0x44, 0x44, 0x4a, 0x2b, five, i);
            __CopyMapTiles(0x44, 0x40, 0x4b, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x42, 0x4c, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x40, 0x4d, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x40, 0x4e, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x40, 0x4f, 0x2c, five, i);
            __CopyMapTiles(0x44, 0x42, 0x50, 0x2c, five, i);
            __CopyMapTiles(4, 0, 9, 0x2a, i, i);
            __CutsceneWait(0x28);
            i = 10;
            __CopyMapTiles(7, 0xb, 7, 0x2a, i, 8);
            __CopyMapTiles(0x47, 0xc, 0x47, 0x2b, i, 13);
            i = 0x2c;
            __Func_8010704(6, 0xd, 0xc, 0xc, 6, i);
            __CutsceneWait(0x28);
            OvlFunc_936_20095b4();
            __Func_8010704(0, 1, 1, 1, 7, i);
            __CutsceneEnd();
        }
    }
    if (!__GetFlag(0x303)) {
        if ((actor9->pos_x >> 19) <= 0x57) {
            __CutsceneStart();
            for (i = 0x43, one = 1, five = 5; i <= 0x4a; i++) {
                __CopyMapTiles(i, 0x3a, 0x6b, 0x29, one, five);
                __CutsceneWait(4);
                if (i == 0x46) {
                    __SetFlag(0x303);
                }
            }
            five = 2;
            __CopyMapTiles(0x2d, 0x6d, 0x2a, 0x6d, 3, five);
            __CutsceneWait(0x28);
            i = 1;
            __CopyMapTiles(0x43, 0x40, 0x66, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x67, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x68, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x42, 0x69, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x6a, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x6b, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x40, 0x6c, 0x2c, i, five);
            __CopyMapTiles(0x43, 0x42, 0x6d, 0x2c, i, five);
            __CutsceneWait(0x28);
            __CopyMapTiles(0x44, 0x40, 0x66, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x67, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x68, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x42, 0x69, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x6a, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x6b, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x40, 0x6c, 0x2c, i, five);
            __CopyMapTiles(0x44, 0x42, 0x6d, 0x2c, i, five);
            __CutsceneWait(0x28);
            i = 8;
            __CopyMapTiles(0x26, 0xe, 0x26, 0x2c, i, 4);
            __CopyMapTiles(0x66, 0xe, 0x66, 0x2c, i, 12);
            a4 = 0x25;
            a5 = 0x2b;
            __Func_8010704(0x25, 0xd, 0xa, 0xc, a4, a5);
            __CutsceneWait(0x28);
            OvlFunc_936_20095b4();
            __CutsceneEnd();
        }
    }
}
void OvlFunc_936_200b6f8(struct Actor *actor)
{
    extern void __DeleteActor(int);

    if (actor->waveCounter == 0) {
        __DeleteActor((int)actor);
    } else if (actor->waveCounter == 1) {
        actor->motion.x = 0;
        actor->motion.y = 0;
        actor->pos.x = 0;
        actor->pos.y = 0;
    } else {
        actor->scale.x += 0x800;
        actor->scale.y += 0x800;
    }

    actor->pos.x += actor->motion.x;
    actor->pos.y += actor->motion.y;
    actor->motion.x -= actor->motion.x / 256;
    actor->motion.y -= actor->motion.y / 16;
    actor->waveCounter--;
}
extern unsigned int iwram_3001e40;
extern void __Func_8091ff0(int);
extern void OvlFunc_936_200b864(int, int, int);

void OvlFunc_936_200b768(void)
{
    struct Actor *actor8;
    struct Actor *actor9;

    actor8 = (struct Actor *)__MapActor_GetActor(8);
    actor9 = (struct Actor *)__MapActor_GetActor(9);

    if ((u32)(*(short *)((char *)actor8 + 0xa) - 0x17d) <= 12 && *(short *)((char *)actor8 + 0x12) > 0x309) {
        actor8->sprite->oam.priority = ((struct Actor *)__MapActor_GetActor(0))->sprite->oam.priority;
    } else if (!API_GetFlag(0x302) && *(short *)((char *)actor8 + 0xa) <= 0xf5 && !(iwram_3001e40 & 1)) {
        if (!API_GetFlag(0x202)) {
            __Func_8091ff0(-1);
            API_PlaySound(0xe6);
            API_SetFlag(0x202);
        }
        OvlFunc_936_200b864(actor8->pos.x, actor8->pos.y, actor8->pos.z);
    }

    if (!API_GetFlag(0x303) && *(short *)((char *)actor9 + 0xa) <= 0x2c5 && !(iwram_3001e40 & 1)) {
        if (!API_GetFlag(0x203)) {
            __Func_8091ff0(-1);
            API_PlaySound(0xe6);
            API_SetFlag(0x203);
        }
        OvlFunc_936_200b864(actor9->pos.x, actor9->pos.y, actor9->pos.z);
    }
}
INCLUDE_ASM("asm/maps/kalay/OvlFunc_936_200b864.s");

void OvlFunc_936_200b90c(void)
{
  int *actor;
  short *r7;
  int r5;
  int t;
  unsigned int a;
  unsigned int b;
  actor = (int *) __MapActor_GetActor(0x1a);
  r7 = *((short **) (((char *) actor) + 0x50));
  r5 = __sin(*((int *) (((char *) actor) + 0x30))) << 1;
  if (r5 > 0)
  {
    r5 = -r5;
  }
  ;
  *((int *) (((char *) actor) + 8)) = (*((int *) (((char *) actor) + 0x38))) + (__cos(*((int *) (((char *) actor) + 0x30))) << 1);
  *((int *) (((char *) actor) + 0xc)) = (*((int *) (((char *) actor) + 0x3c))) + r5;
  t = __cos((*((int *) (((char *) actor) + 0x30))) + 0x8000);
  r7[15] = t >> 3;
  a = __Random();
  b = __Random();
  *((int *) (((char *) actor) + 0x30)) = ((*((int *) (((char *) actor) + 0x30))) + (((a << 9) >> 16) + ((b << 9) >> 16))) + 0x400;
}


extern void OvlFunc_936_200b90c();
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern void __SetFlag(int);

void OvlFunc_936_200b970(void)
{
  struct Actor *actor;
  unsigned int a;

  actor = __MapActor_GetActor(0xb);
  a = 9;
  __Func_8010704(0, 0, 1, 1, a, 0xe);
  __Func_8010704(0, 0, 1, 1, a, 0x2d);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->pos.y += -0x200000;
    actor->flags = 2;
  }
  __SetFlag(0x201);
}

int OvlFunc_936_200b9d4(int *actor)
{
  short *r7;
  int r5;
  int t;
  unsigned int a;
  unsigned int b;
  r7 = *((short **) (((char *) actor) + 0x50));
  r5 = __sin(*((int *) (((char *) actor) + 0x30))) << 1;
  if (r5 > 0)
  {
    r5 = -r5;
  }
  ;
  *((int *) (((char *) actor) + 8)) = (*((int *) (((char *) actor) + 0x38))) + (__cos(*((int *) (((char *) actor) + 0x30))) << 1);
  *((int *) (((char *) actor) + 0xc)) = (*((int *) (((char *) actor) + 0x3c))) + r5;
  t = __cos((*((int *) (((char *) actor) + 0x30))) + 0x8000);
  if (t < 0)
  {
    t = t + 7;
  }
  r7[15] = t >> 3;
  a = __Random();
  b = __Random();
  *((int *) (((char *) actor) + 0x30)) = ((*((int *) (((char *) actor) + 0x30))) + (((a << 9) >> 16) + ((b << 9) >> 16))) + 0x400;
  return 0;
}

void OvlFunc_936_200ba3c(int id) {
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *buf;
    int zero;

    actor = __MapActor_GetActor(id);
    sprite = actor->sprite;
    sprite->oam.priority = 1;
    ((struct Attr_OvlFunc_936_200ba3c *)sprite)->flag = 0;
    sprite->oam.palette = 0;
    zero = 0;
    sprite->numLayers = zero;
    __Actor_SetSpriteFlags(actor, 0);
    actor->__unk5C = zero;
    actor->__unk55 = zero;
    if (API_GetFlag(0x109) == 0) {
        actor->pos.y += 0x80 << 14;
    }
    actor->flags &= 0xfe;
    actor->__unk61 = 1;
    buf = (unsigned char *)__galloc_iwram(0x11, 0x608);
    __LoadItemIcon(0xb5);
    buf += 0x400;
    __UploadSpriteGFX(sprite->slot, 0x80, buf);
    __gfree(0x11);
    actor->prevPos.x = actor->pos.x;
    actor->speed = zero;
    actor->prevPos.y = actor->pos.y;
    actor->__unk5C = 1;
    actor->update = (actorfun_t *)OvlFunc_936_200b9d4;
    actor->__unk56 = zero;
}

INCLUDE_ASM("asm/maps/kalay/kalay_data.s");

INCLUDE_ASM("asm/maps/kalay/imports.s");
