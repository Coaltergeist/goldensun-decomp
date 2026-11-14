/* rom_79e5c0 (overlay file 911): consolidated TU — kolima map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

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

unsigned int OvlFunc_911_2008050(unsigned int arg0)
{
    extern unsigned int __Random(void);
    extern void __Func_80929d8(int a, int b);
    short *counter = (short *)(arg0 + 0x64);
    int zero;

    *counter += (__Random() * 100) >> 16;
    zero = 0;
    if (*counter > 1000) {
        __Func_80929d8(arg0, 7);
    } else {
        __Func_80929d8(arg0, 0xa);
    }
    if (*counter > 1200) {
        *counter = zero;
    }
    return 1;
}
void OvlFunc_911_20080a0(void *arg0)
{
    unsigned char *p = (unsigned char *)arg0 + 0x48;
    unsigned int i;

    for (i = 0; i <= 8; i++) {
        int v69 = 0x69;
        *(short *)p = v69;
        if ((unsigned int)(i - 6) <= 1) {
            int v6e = 0x6e;
            *(short *)p = v6e;
        }
        *(unsigned char *)(p + 0x16) = 2;
        *(unsigned int *)(p + 4) = 1;
        p += 0x18;
    }
}
int OvlFunc_911_20080cc(struct Actor *actor)
{
    actor->pos.x += actor->motion.x;
    actor->pos.z += actor->motion.z;
    actor->motion.z += -2621;
    actor->scale.x += 0x600;
    actor->scale.y += 0x600;
    actor->waveCounter -= 1;
    if (actor->waveCounter == 0) {
        API_DeleteActor((int)actor);
    }
    return 1;
}
extern int __atan2(int, int);

u32 OvlFunc_911_2008114(struct Actor *actor)
{
    struct Actor *target = actor->linkedActor;

    if (target != NULL) {
        u16 angle;
        int diff;

        actor->__unk5A &= 0xfe;
        angle = __atan2(target->pos.z - actor->pos.z, target->pos.x - actor->pos.x);
        diff = (s16)(angle - actor->facing);
        if (diff != 0) {
            if (diff > 0x1000) {
                diff = 0x1000;
            }
            if (diff < -0x1000) {
                diff = -0x1000;
            }
            actor->facing += diff;
        }
    }
    return 1;
}

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char _EVENT_27[], _EVENT_26[];
extern unsigned char Lm911_2f80[] __asm__(".Lm911_2f80");
extern unsigned char gScript_913__0200afc8[];
extern unsigned char Lm911_2e60[] __asm__(".Lm911_2e60");

void *Kolima_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_27) return Lm911_2f80;
    if (ev == (int)_EVENT_26) return gScript_913__0200afc8;
    return Lm911_2e60;
}

extern unsigned char Lm911_3010[] __asm__(".Lm911_3010");

void *Kolima_GetSpecialExits(void)
{
    GlobalState *p = &gState;
    int room = *(short *)((char *)p + 0x1c0);
    void *result = 0;

    if (room == (int)_EVENT_26) {
        result = Lm911_3010;
    }
    return result;
}

extern unsigned char gOvl_0200b040[];

void *Kolima_GetExits(void) {
    return (void *)gOvl_0200b040;
}

extern unsigned char _EVENT_24[];
extern unsigned char Lm911_3098[] __asm__(".Lm911_3098");
extern unsigned char Lm911_3368[] __asm__(".Lm911_3368");
extern unsigned char Lm911_3080[] __asm__(".Lm911_3080");
extern void OvlFunc_911_20080a0(void *);

void *Kolima_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_24) {
        if (!API_GetFlag(0x845)) {
            OvlFunc_911_20080a0(Lm911_3098);
        }
        return Lm911_3098;
    }
    if (ev == (int)_EVENT_27) return Lm911_3368;
    return Lm911_3080;
}
void __CutsceneEnd(void);
void __CutsceneStart(void);
void *__MapActor_GetActor(int);

void OvlFunc_911_2008230(void)
{
    struct Actor *p;
    unsigned int r5;

    p = __MapActor_GetActor(0);
    r5 = p->facing;
    __CutsceneStart();
    if ((unsigned int)(r5 + 0xffff5fff) <= 0x3ffe) {
        __UI_Sanctum(0x10);
    } else {
        __MessageID(0x16b3);
        __Func_8093054(0x10, 0);
    }
    __CutsceneEnd();
}

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_911_2008274(void) {
    __Func_80955b0(0x1b, 0, 1);
}

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
void __CutsceneStart(void);
void __PlaySound(int);
void *__MapActor_GetActor(int);
void __MapActor_SetSpeed(int, int, int);
void __MapActor_TravelBy(int, int, int);
void __Func_8091e9c(int);
void __CutsceneEnd(void);
void __Func_8010560(void *, int, int);

extern unsigned char iwram_3001ebc[];
extern unsigned char Lm911_2e48[] __asm__(".Lm911_2e48");

static inline void MapActor_SetSpeed(int actor, int x, int y)
{
    __MapActor_SetSpeed(actor, x << 8, y << 7);
}

void OvlFunc_911_20082b4(int arg0){
    unsigned char *a;

    a = (unsigned char *)__MapActor_GetActor(0);
    a[0x55] = 0;
    MapActor_SetSpeed(0, 0x80, 0x80);
    API_MapActor_SetAnim(0, 2);
    API_MapActor_TravelBy(0, 0, -8);
    *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
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
void OvlFunc_911_20083c8(void)
{
    extern unsigned char gScript_884__0200ae34[];
    extern struct Actor *CS911_GetActor(unsigned int) __asm__("__MapActor_GetActor");
    extern void CS911_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
    extern void CS911_Anim(struct Actor *, int) __asm__("__Actor_SetAnim");
    extern void CS911_Script(struct Actor *, void *) __asm__("__Actor_SetScript");
    extern unsigned int CS911_Random(void) __asm__("__Random");
    extern unsigned char gScript_911__0200ae20[];
    unsigned char *actor;
    struct Actor *debris;
    unsigned int i;

    API_CutsceneStart();
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0xa80000, 0, 0xf60000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_MapActor_Emote(8, 0x100, 0x28);
    API_Func_80925cc(8, 2);
    API_MessageID(0x1786);
    API_ActorMessage(8, 0);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0xa80000, 0, 0xea0000, 1);
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0, 0xae, 0x116);
    API_Func_8092adc(0, 0xe000, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(8, 3);
    API_ActorMessage(8, 0);
    API_Func_8092adc(8, 0x9000, 20);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    actor = (unsigned char *)CS911_GetActor(8);
    actor += 0x5a;
    *actor = (0xfe & *actor);
    API_MapActor_SetSpeed(8, 0x20000, 0x10000);
    API_MapActor_Jump(8, 2, 0);
    API_MapActor_TravelToWait(8, 0xe0, 0xc5);
    API_PlaySound(0xb0);
    API_CutsceneWait(10);
    API_MapActor_TravelToWait(8, 0xea, 0xc8);
    API_CutsceneWait(10);
    API_PlaySound(0xc6);
    API_CutsceneWait(30);
    API_CopyMapTiles(0x5b, 0, 0x48, 9, 5, 4);
    API_CutsceneWait(12);
    API_CopyMapTiles(0x5b, 4, 0x48, 9, 5, 4);
    API_CutsceneWait(9);
    API_Func_8092adc(0, 0xc000, 0);
    API_CopyMapTiles(0x5b, 8, 0x48, 9, 5, 5);
    API_CutsceneWait(6);
    API_CopyMapTiles(0x5b, 13, 0x48, 9, 5, 6);
    API_CutsceneWait(3);
    API_PlaySound(0xbc);
    for (i = 0; i < 10; ++i) {
        debris = API_CreateActor(0xde, 0x940000 + (i << 18), 0, 0x1020000);
        if (debris != 0) {
            debris->__unk55 = 0;
            CS911_SpriteFlags(debris, 0);
            debris->sprite->oam.priority = 0;
            debris->waveCounter = ((CS911_Random() * 40) >> 16) + 40;
            debris->motion.x = (int)(((i & 3) << 16) + 0x10000) >> 1;
            debris->motion.z = 0x10000;
            if (i & 1) debris->motion.x = -debris->motion.x;
            CS911_Anim(debris, 1);
            CS911_Script(debris, gScript_911__0200ae20);
        }
    }
    API_CopyMapTiles(0x5b, 19, 0x48, 9, 5, 7);
    API_Func_8010704(23, 11, 5, 7, 8, 11);
    API_Func_8012330(0, 0x40000, 0x10000);
    API_CutsceneWait(10);
    API_MapActor_Jump(0, 6, 0);
    API_CutsceneWait(20);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8092a1c(8, 0x10000, gScript_884__0200ae34);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(0, 0x102, 0x3c);
    API_SetFlag(0x847);
    API_CutsceneEnd();
}
void OvlFunc_911_200a910(void);
void OvlFunc_911_20088ec(void);
void __Actor_SetSpriteFlags(void *, int);
void __DeleteFieldActor(int);
void __LoadFieldActors(void *);
extern unsigned char gScript_911__0200add8[];
extern unsigned char Lm911_32d8[] __asm__(".Lm911_32d8");

int Kolima_MapInit(void)
{
    unsigned int i;
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);

    if (ev == (int)_EVENT_27) {
        OvlFunc_911_200a910();
        return 0;
    }

    if (ev == (int)_EVENT_26) {
        *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c0) = 0x204;
        return 0;
    }

    __Actor_SetSpriteFlags(__MapActor_GetActor(0x17), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x19), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x1a), 0);

    API_MapActor_SetBehavior(0x17, (int)gScript_911__0200add8);
    API_MapActor_SetBehavior(0x18, (int)gScript_911__0200add8);
    API_MapActor_SetBehavior(0x19, (int)gScript_911__0200add8);
    API_MapActor_SetBehavior(0x1a, (int)gScript_911__0200add8);

    if (!API_GetFlag(0x845)) {
        for (i = 8; i <= 0x10; i++) {
            __Actor_SetSpriteFlags(__MapActor_GetActor(i), 0);
        }
        API_Func_8010704(0xd, 9, 1, 1, 0xd, 8);
        API_Func_8010704(0xd, 9, 1, 1, 0xf, 8);
        API_Func_8010704(0xd, 9, 1, 1, 0xe, 9);
    }

    if (!API_GetFlag(0x843)) {
        GlobalState *p2 = &gState;
        if (*(short *)((char *)p2 + 0x1c2) == 1) {
            OvlFunc_911_20088ec();
        }
    }

    if (API_GetFlag(0x843)) {
        __DeleteFieldActor(1);
        __DeleteFieldActor(2);
        __DeleteFieldActor(3);
        __DeleteFieldActor(0x11);
        __DeleteFieldActor(0x12);
        __DeleteFieldActor(0x13);
        __DeleteFieldActor(0x14);
        __DeleteFieldActor(0x15);
        __DeleteFieldActor(0x16);
        __LoadFieldActors(Lm911_32d8);
    }

    return 0;
}


extern unsigned int iwram_3001e40;

void OvlFunc_911_2008800(void) {
    void *__MapActor_GetActor(int);
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(0x13);
    if (actor != 0) {
        actor->__unk55 = 0;
        if ((iwram_3001e40 & 1) == 0) {
            actor->pos.y = 0;
        } else {
            actor->pos.y = 0xfa << 17;
        }
    }

    actor = (struct Actor *)__MapActor_GetActor(0x14);
    if (actor != 0) {
        int zero = 0;
        actor->__unk55 = zero;
        if ((iwram_3001e40 & 1) != 0) {
            actor->pos.y = zero;
        } else {
            actor->pos.y = 0xfa << 17;
        }
    }

    actor = (struct Actor *)__MapActor_GetActor(0x15);
    if (actor != 0) {
        actor->__unk55 = 0;
        if ((iwram_3001e40 & 1) == 0) {
            actor->pos.y = 0;
        } else {
            actor->pos.y = 0xfa << 17;
        }
    }

    actor = (struct Actor *)__MapActor_GetActor(0x16);
    if (actor != 0) {
        int zero = 0;
        actor->__unk55 = zero;
        if ((iwram_3001e40 & 1) != 0) {
            actor->pos.y = zero;
        } else {
            actor->pos.y = 0xfa << 17;
        }
    }
}

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

void OvlFunc_911_200a608(void)
{
  extern unsigned char iwram_3001e40__arr[] asm("iwram_3001e40");
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

  r6 = (*((unsigned int *) iwram_3001e40__arr)) & 7;
  if (r6 == 0)
  {
    if ((*((unsigned int *) Lm911_36a0)) != 0)
    {
      __PlaySound(0xc8);
    }
    actor = __CreateActor(0x1a, a, 0, b);
    if (actor != 0)
    {
      sprite = actor->sprite;
      {
        unsigned char flags[1] = {actor->flags};
        sprite->flags = r6;
        actor->flags = flags[0] & 0xfe;
      }
      do {
        *((unsigned char *)sprite + 9) = (*((unsigned char *)sprite + 9) & c) | 4;
        actor->scale.x = 0x1999;
        actor->speed = 0x80000;
        actor->accel = 0x80000;
      } while (0);
      actor->__unk55 = r6;
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

extern unsigned char Lm911_369c[] __asm__(".Lm911_369c");
extern ActorCmd gScript_911__0200b5ec[];
extern void __PlaySound(int);
extern void __Actor_SetScript(struct Actor *, ActorCmd *);

u32 OvlFunc_911_200a6cc(struct Actor *actor)
{
    if (*(int *)Lm911_369c != 0) {
        if ((u32)(actor->pos.x - 0x3b0001) <= 0x51fffe && actor->pos.z > 0xd30000 && actor->pos.z <= 0x100ffff) {
            goto match;
        }
        if ((u32)(actor->pos.x - 0x450001) <= 0x34fffe && actor->pos.z > 0xc20000 && actor->pos.z <= 0x114ffff) {
            goto match;
        }
    } else {
        if ((u32)(actor->pos.x - 0x3b0001) <= 0x33fffe && actor->pos.z > 0xc20000 && actor->pos.z < 0xe60000) {
            goto match;
        }
        if ((u32)(actor->pos.x - 0x6f0001) <= 0x1dfffe && actor->pos.z > 0xd80000 && actor->pos.z < 0xfa0000) {
            goto match;
        }
        if ((u32)(actor->pos.x - 0x4e0001) <= 0x2bfffe && actor->pos.z > 0xf10000 && actor->pos.z <= 0x114ffff) {
        match:
            __PlaySound(0x6a);
            __Actor_SetScript(actor, gScript_911__0200b5ec);
            *(int *)L3698 = 1;
        }
    }
    return 0;
}
extern unsigned int Lm911_3694 __asm__(".Lm911_3694");
extern int Lm911_3690 __asm__(".Lm911_3690");
extern int Lm911_368c __asm__(".Lm911_368c");
extern vec3_t **iwram_3001e70;
extern ActorCmd gScript_911__0200b610[];

void OvlFunc_911_200a7ac(void)
{
    int __Random(void);
    void __PlaySound(int);
    struct Actor *__CreateActor(int, int, int, int);
    void __Actor_SetAnim(struct Actor *, int);
    void __Actor_SetScript(struct Actor *, ActorCmd *);

    struct Actor *actor = 0;
    struct Sprite *sprite;
    vec3_t *pos;
    int x;
    int z;

    switch (Lm911_3694) {
    case 1:
        if (Lm911_3690 <= 0x3a97) {
            Lm911_3690 += 0x32;
        }
        if (Lm911_368c > 0xf0 << 14) {
            Lm911_368c -= 0x4000;
        }
        break;
    case 2:
        if (Lm911_3690 <= 0x752f) {
            Lm911_3690 += 0x32;
        }
        if (Lm911_368c > 0xc0 << 13) {
            Lm911_368c -= 0x4000;
        }
        break;
    case 3:
        if (Lm911_368c < -0x800000) {
            Lm911_3694 = 0;
        } else {
            Lm911_3690 += 0x32;
            Lm911_368c -= 0x4000;
        }
        break;
    }

    if ((iwram_3001e40 & 7) != 0) {
        return;
    }

    actor = __CreateActor(0x11d, 0, 0, 0);
    if (actor == 0) {
        return;
    }

    pos = *iwram_3001e70;
    if ((iwram_3001e40 & 0x3f) == 0) {
        __PlaySound(0xf6);
    }

    if (Lm911_3694 != 0) {
        x = pos->x + (((u32)(__Random() * Lm911_3690) >> 16) << 8) + Lm911_368c;
    } else {
        x = pos->x + (__Random() << 8) - 0x800000;
    }
    z = pos->z + (__Random() << 8) - 0x800000;

    actor->__unk55 = 0;
    actor->pos.y = 0xa0 << 16;
    sprite = actor->sprite;
    actor->scale.x = 0xe666;
    actor->scale.y = 0xe666;
    actor->pos.x = x;
    actor->pos.z = z;
    sprite->flags = 0;
    actor->flags &= 0xfe;
    sprite->oam.priority = 1;
    __Actor_SetAnim(actor, 1);
    __Actor_SetScript(actor, gScript_911__0200b610);
}


extern void __Func_800fe9c(void);

void OvlFunc_911_200a910(void) {
    if (!API_GetFlag(0x845)) {
        API_MapActor_SetPos(8, 0, 0);
        API_Func_8010704(9, 0x11, 5, 1, 9, 0x12);
        __Func_800fe9c();
        __WaitFrames(1);
    } else {
        API_MapActor_SetPos(9, 0, 0);
    }

    if (API_GetFlag(0x847)) {
        API_CopyMapTiles(0x5b, 0x13, 0x48, 9, 5, 7);
        API_Func_8010704(0x17, 0xb, 5, 7, 8, 0xb);
        __Func_800fe9c();
        __WaitFrames(1);
    }
}

INCLUDE_ASM("asm/maps/kolima/kolima_data.s");

INCLUDE_ASM("asm/maps/kolima/imports.s");
