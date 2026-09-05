/* rom_79e5c0 (overlay file 911): consolidated TU — kolima map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima/exports.s");

extern unsigned char L3698[] __asm__(".Lm911_3698");

unsigned int OvlFunc_911_2008030(unsigned int arg0)
{
    int r3;
    r3 = *(int *)L3698;
    if (r3 != 0) {
        __Actor_SetAnim(arg0, 2);
        *(int *)L3698 = 0;
    }
    return 1;
}

INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008050.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20080a0.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20080cc.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008114.s");
INCLUDE_ASM("asm/maps/kolima/Kolima_GetEntrances.s");
INCLUDE_ASM("asm/maps/kolima/Kolima_GetSpecialExits.s");

extern unsigned char gOvl_0200b040[];

void *Kolima_GetExits(void) {
    return (void *)gOvl_0200b040;
}

INCLUDE_ASM("asm/maps/kolima/Kolima_GetActors.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008230.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_911_2008274(void) {
    __Func_80955b0(0x1b, 0, 1);
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_27[];
extern unsigned char Lm911_3590[] __asm__(".Lm911_3590");
extern unsigned char Lm911_33b0[] __asm__(".Lm911_33b0");

int Kolima_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_27) return (int)Lm911_3590;
    return (int)Lm911_33b0;
}
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20082b4.s");
void __CutsceneStart(void);
void __PlaySound(int);
void *__MapActor_GetActor(int);
void __MapActor_SetSpeed(int, int, int);
void __MapActor_TravelBy(int, int, int);
void __Func_8091e9c(int);
void __CutsceneEnd(void);
void __Func_8010560(void *, int, int);
void OvlFunc_911_20082b4(int);

extern unsigned char iwram_3001ebc[];
extern unsigned char Lm911_2e48[] __asm__(".Lm911_2e48");

static inline void MapActor_SetSpeed(int actor, int x, int y)
{
    __MapActor_SetSpeed(actor, x << 8, y << 7);
}

void OvlFunc_911_2008304(void)
{
    unsigned char *map;
    unsigned char *actor;
    int a = 0;
    int b = 0;

    map = *(unsigned char **)iwram_3001ebc;
    __CutsceneStart();
    __PlaySound(0x9e);
    switch (*(short *)(map + 0x16c)) {
    case 5:
        a = 0x47;
        b = 9;
        break;
    case 6:
        a = 0x49;
        b = 0x11;
        break;
    case 7:
        a = 0x50;
        b = 0x15;
        break;
    case 8:
        a = 0x54;
        b = 0xc;
        break;
    case 9:
        actor = (unsigned char *)__MapActor_GetActor(0);
        actor[0x55] = 0;
        MapActor_SetSpeed(0, 0x80, 0x80);
        __MapActor_TravelBy(0, 0, 8);
        *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c8) = 0x10;
        __Func_8091e9c(9);
        __CutsceneEnd();
        return;
    }
    __Func_8010560(Lm911_2e48, a, b);
    OvlFunc_911_20082b4(*(short *)(map + 0x16c));
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20083c8.s");
INCLUDE_ASM("asm/maps/kolima/Kolima_MapInit.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_2008800.s");

void OvlFunc_911_20088ac(unsigned int arg0, unsigned int arg1)
{
  __Func_8096fb0(0x8d, 1);
  __Func_80970f8(arg0, arg1);
 do { } while (0);
  __Func_809728c();
  __FieldMove(1);
  __WaitFrames(1);
}

void OvlFunc_911_20088d8(void)
{
	__FieldMove(2);
	__Func_8097174();
	__Func_8097194();
}

INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_20088ec.s");

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_911_200a5a8(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern void __Func_8092adc(unsigned int arg0, unsigned int arg1, unsigned int arg2);

void OvlFunc_911_200a5c0(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__Func_8092adc(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

extern void __DeleteActor(void);

unsigned int OvlFunc_911_200a5d8(int *p) {
    int v;
    *(int *)((char *)p + 0x18) = *(int *)((char *)p + 0x18) + 0x1eb8;
    v = *(int *)((char *)p + 0x38);
    if (v == (0x80 << 24)) {
        if (*(int *)((char *)p + 0x3c) == v) {
            if (*(int *)((char *)p + 0x40) == v) {
                __DeleteActor();
            }
        }
    }
    return 1;
}

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_911__0200b5d8[5];
extern unsigned char Lm911_36a0[] __asm__(".Lm911_36a0");

struct Sprite {
    unsigned char _pad0[9];
    unsigned char attr;
    unsigned char _pad1[0x26 - 10];
    unsigned char flags;
};

struct Actor {
    unsigned char _pad0[0x18];
    unsigned int scaleX;
    unsigned char _pad1[0x23 - 0x1c];
    unsigned char unk23;
    unsigned char _pad2[0x30 - 0x24];
    unsigned int speed;
    unsigned int accel;
    unsigned char _pad3[0x50 - 0x38];
    struct Sprite *sprite;
    unsigned char _pad4[0x55 - 0x54];
    unsigned char unk55;
};

void OvlFunc_911_200a608(void)
{
    /* iwram_3001e40 is a file-scope unsigned int scalar (:174); this fn needs the
       array view of the same symbol. */
    extern unsigned char iwram_3001e40__arr[] __asm__("iwram_3001e40");
    void __PlaySound(int);
    struct Actor *__CreateActor(int, int, int, int);
    void __Actor_SetAnim(struct Actor *, int);
    void __Actor_TravelTo(struct Actor *, int, int, int);
    void __Actor_SetScript(struct Actor *, ActorCmd *);

    unsigned int r6;
    struct Actor *actor;
    struct Sprite *sprite;
    int a = 0x620000;
    int b = 0x690000;
    int c = ~0xc;
    int d = 0x10d0000;

    do { } while (a == 0);

    r6 = *(unsigned int *)iwram_3001e40__arr & 7;
    if (r6 == 0) {
        if (*(unsigned int *)Lm911_36a0 != 0) {
            __PlaySound(0xc8);
        }
        actor = __CreateActor(0x1a, a, 0, b);
        if (actor != 0) {
            sprite = actor->sprite;
            sprite->flags = r6;
            actor->unk23 &= 0xfe;
            sprite->attr = (sprite->attr & c) | 4;
            actor->scaleX = 0x1999;
            actor->speed = 0x80000;
            actor->accel = 0x80000;
            actor->unk55 = r6;
            __Actor_SetAnim(actor, 2);
            __Actor_TravelTo(actor, a, 0, d);
            __Actor_SetScript(actor, gScript_911__0200b5d8);
        }
    }
}

extern int __Func_80929d8(int a, int b);
extern unsigned int iwram_3001e40;

unsigned int OvlFunc_911_200a6a4(int a)
{
    if ((iwram_3001e40 >> 1) & 1) {
        __Func_80929d8(a, 0xa);
    } else {
        __Func_80929d8(a, 7);
    }
    return 0;
}

INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_200a6cc.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_200a7ac.s");
INCLUDE_ASM("asm/maps/kolima/OvlFunc_911_200a910.s");
INCLUDE_ASM("asm/maps/kolima/kolima_data.s");

INCLUDE_ASM("asm/maps/kolima/imports.s");
