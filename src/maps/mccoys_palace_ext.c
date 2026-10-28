/* rom_79dd90 (overlay file 910): consolidated TU — mccoys_palace_ext map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/mccoys_palace_ext/exports.s");

int OvlFunc_910_2008030(struct Actor *actor) {
    extern int __atan2(int, int);
    struct Actor *target;
    unsigned short angle;
    int diff;

    target = actor->linkedActor;
    if (target != 0) {
        actor->__unk5A &= 0xfe;
        angle = __atan2(target->pos.z - actor->pos.z, target->pos.x - actor->pos.x);
        diff = (short)(angle - actor->facing);
        if (diff != 0) {
            if (diff > 0x80 << 5) {
                diff = 0x80 << 5;
            }
            if (diff < -0x1000) {
                diff = -0x1000;
            }
            actor->facing += diff;
        }
    }
    return 1;
}

extern unsigned char gOvl_02008c08[];

unsigned int MccoysPalaceExt_GetEntrances(void) {
    return (unsigned int)gOvl_02008c08;
}

int MccoysPalaceExt_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008c50[];

void *MccoysPalaceExt_GetExits(void) {
    return (void *)gOvl_02008c50;
}

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char _EVENT_22[];
extern int __GetFlag(int);
extern unsigned char gScript_889__02008c64[];
extern unsigned char Lm910_c7c[] __asm__(".Lm910_c7c");
extern unsigned char Lm910_actorsevent22[] __asm__(".Lm910_actorsevent22");
__asm__(".equ .Lm910_actorsevent22, 0x22");

int MccoysPalaceExt_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)Lm910_actorsevent22) {
        if (__GetFlag(0x84f)) {
            Lm910_c7c[0x76] = 1;
        }
        if (__GetFlag(0x845)) {
            Lm910_c7c[0x46] = 0;
        }
        return (int)Lm910_c7c;
    }
    return (int)gScript_889__02008c64;
}

void OvlFunc_910_20080f8(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0xd;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd2);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_910_200812c(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29de, 1);
    __CutsceneEnd();
}

extern unsigned char Lm910_d30[] __asm__(".Lm910_d30");
extern unsigned char Lm910_d24[] __asm__(".Lm910_d24");

int MccoysPalaceExt_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_22) return (int)Lm910_d30;
    return (int)Lm910_d24;
}

#include "message.h"
#include "actor.h"

struct Attr_OvlFunc_910_2008974 {
    unsigned char pad[5];
    unsigned char low : 5;
    unsigned char flag : 1;
    unsigned char high : 2;
};

void OvlFunc_910_2008184(void)
{
    __CutsceneStart();
    __MessageID(MSG_13c0);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

void OvlFunc_910_20081a4(void) {
    __CutsceneStart();
    __MessageID(0x13c3);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

void OvlFunc_910_20081c4(void) {
    __CutsceneStart();
    __MessageID(0x1751);
    __Func_8093054(0xb, 0);
    __CutsceneEnd();
}


static inline void CS910_StoreByte(unsigned char *p, int value) { *p = value; }
void OvlFunc_910_20081e4(void)
{
    extern unsigned char gScript_910__02008bf4[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_910_20088e8(void);
    extern int __ShowActorMessage_NoWait(int, int);
    unsigned char *actor;

    API_CutsceneStart();
    if (API_GetFlag(0x84a)) {
        if (API_GetFlag(0x304)) {
            if (!API_GetFlag(0x201)) {
                API_MessageID(0x1414);
                API_ActorMessage_Wait(12, 0, 10);
                API_MapActor_Emote(12, 0x107, 0x28);
                API_ActorMessage_Wait(12, 0, 10);
                API_Func_80925cc(12, 2);
                API_SetFlag(0x201);
            }
            API_MessageID(0x1416);
            API_ActorMessage(12, 0);
        } else {
            API_MessageID(0x1413);
            API_ActorMessage(12, 0);
            API_Func_8092a1c(12, 0x10000, gScript_910__02008bf4);
        }
    } else {
        API_MessageID(0x140d);
        __ShowActorMessage_NoWait(12, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
            API_ActorMessage_Wait(12, 0, 10);
            actor = __MapActor_GetActor(0);
            if (*(int *)(actor + 0x10) <= 0x10dffff) {
                API_MapActor_SetSpeed(12, 0xcccc, 0x6666);
                API_MapActor_TravelToAnimWait(0, 0x15a, 0x112);
                API_MapActor_TravelToAnimWait(0, 0x148, 0x11a);
                API_Func_8092adc(0, 0xc000, 0);
            }
            API_Func_8092adc(11, 0x1000, 0);
            API_Func_8092adc(12, 0x7000, 20);
            API_MapActor_Emote(11, 0x102, 20);
            API_Func_809259c(11, 1);
            API_ActorMessage_Wait(11, 0, 10);
            API_MapActor_Emote(12, 0x108, 0x3c);
            API_Func_809259c(12, 1);
            API_ActorMessage_Wait(12, 0, 20);
            API_MapActor_SetAnim(11, 3);
            API_MapActor_DoAnim(12, 3);
            API_Func_8092adc(11, 0x3000, 0);
            API_Func_8092adc(12, 0x5000, 10);
            API_Func_809259c(11, 1);
            API_ActorMessage_Wait(11, 0, 20);
            API_Func_8092adc(11, 0xf000, 0);
            API_MapActor_SetSpeed(12, 0x10000, 0x8000);
            actor = __MapActor_GetActor(12);
            actor += 0x5a;
            *actor = 0xfe & *actor;
            API_MapActor_TravelToAnimWait(12, 0x15a, 0x107);
            API_CutsceneWait(1);
            actor = __MapActor_GetActor(12);
            actor += 0x5a;
            CS910_StoreByte(actor, 1 | *actor);
            API_MapActor_SetSpeed(11, 0x9999, 0x4ccc);
            API_MapActor_TravelToAnimWait(11, 0x148, 0x107);
            API_MapActor_TravelToAnimWait(11, 0x148, 0xfc);
            API_Func_8092adc(11, 0xc000, 10);
            OvlFunc_910_20088e8();
            API_MapActor_TravelToAnimWait(11, 0x148, 0xf6);
            API_MapActor_SetPos(11, 0, 0);
            API_SetFlag(0x84a);
            API_Func_8092a1c(12, 0x10000, gScript_910__02008bf4);
        } else {
            API_ActorMessage(12, 0);
            API_Func_8092adc(12, 0x3000, 10);
        }
    }
    API_CutsceneEnd();
}

extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void OvlFunc_910_20088e8(void);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_8092208(int, int, int);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);
extern void __CutsceneEnd(void);
extern unsigned char *iwram_3001ebc;

void OvlFunc_910_200845c(void)
{
  __CutsceneStart();
  if (__GetFlag(0x200) == 0) {
    OvlFunc_910_20088e8();
  }
  API_MapActor_SetSpeed(0, 0x8000, 0x4000);
  *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
  __MapActor_SetAnim(0, 2);
  API_Func_8092208(0, 2, -16);
  __CutsceneWait(0x10);
  __Func_8091e9c(2);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mccoys_palace_ext/MccoysPalaceExt_MapInit.s");

void OvlFunc_910_200850c(void) {
    extern void OvlFunc_910_2008974(int);
    extern void OvlFunc_910_20085dc(void);
    extern unsigned char gScript_910__02008bf4[];

    if (API_GetFlag(0x109)) {
        API_ClearFlag(0x80 << 2);
    }
    if (!API_GetFlag(0xfd2)) {
        OvlFunc_910_2008974(0xd);
    }
    if (API_GetFlag(0x84a)) {
        API_MapActor_SetPos(0xb, 0x9a << 17, 0x1070000);
        API_MapActor_SetPos(0xc, 0xad << 17, 0x1070000);
        if (!API_GetFlag(0x84f) && !API_GetFlag(0x845)) {
            API_MapActor_SetPos(0xb, 0, 0);
            API_Func_8092a1c(0xc, 0x80 << 9, gScript_910__02008bf4);
        }
    }
    if (API_GetFlag(0x845)) {
        API_MapActor_SetPos(0xa, 0xe0 << 16, 0x92 << 17);
        API_Func_8092adc(0xa, 0x80 << 7, 0);
        API_Func_8092adc(8, 0, 0);
        if (!API_GetFlag(0x85e)) {
            OvlFunc_910_20085dc();
        }
    }
}


static inline void CS910_Byte(unsigned char *p, int value) { *p = value; }

void OvlFunc_910_20085dc(void)
{
    extern unsigned char CS910_Message1720[] __asm__("_MSG_1720");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_800fe9c(void);
    extern int __Func_8091c7c(int, int);
    extern int __MapActor_GetActor(int);
    extern void OvlFunc_910_20088e8(void);
    extern int __ShowActorMessage_NoWait(int, int);
    int flagValue2;
    unsigned char *actor;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_Func_80933f8(0x1400000, -1, 0x1400000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0x1400000, 0x1740000);
    API_MapTransitionIn();
    API_Func_80933d4(0x3333, 0x666);
    API_Func_80933f8(0x1400000, -1, 0x1220000, 1);
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0, 0x140, 0x136);
    API_Func_8092adc(11, 0x3000, 10);
    API_Func_809259c(11, 2);
    API_MapActor_Emote(11, 0x100, 0x3c);
    API_MessageID((int)CS910_Message1720);
    API_ActorMessage_Wait(11, 0, 10);
    API_Func_8092adc(12, 0x5000, 10);
    API_Func_809259c(12, 2);
    API_MapActor_Emote(12, 0x100, 0x3c);
    API_ActorMessage_Wait(12, 0, 20);
    API_Func_8092adc(11, 0x1000, 0);
    API_Func_8092adc(12, 0x7000, 0x28);
    API_Func_8092adc(11, 0x3000, 0);
    API_Func_8092adc(12, 0x5000, 10);
    API_Func_80925cc(11, 1);
    API_ActorMessage_Wait(11, 0, 10);
    API_Func_80925cc(12, 1);
    __ShowActorMessage_NoWait(12, 0);
    API_Func_8092adc(0, 0xe000, 0);
    while (__Func_8091c7c(0, 0) != 0) {
        API_MapActor_Emote(12, 0x100, 60);
        API_MessageID(0x1724);
        API_ActorMessage_Wait(12, 0, 10);
        API_Func_809259c(12, 2);
        __ShowActorMessage_NoWait(12, 0);
    }
    API_CutsceneWait(10);
    API_Func_8092adc(11, 0x3000, 0);
    API_Func_8092adc(12, 0x5000, 20);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_DoAnim(12, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(11, 1);
    API_MessageID(0x1726);
    API_ActorMessage_Wait(11, 0, 10);
    API_MapActor_SetSpeed(11, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(11, 0x13a, 0x118);
    API_Func_8092adc(0, 0xc000, 20);
    API_ActorMessage_Wait(11, 0, 0x28);
    API_MapActor_Surprise(0, 0x102);
    API_CutsceneWait(0x3c);
    flagValue2 = API_GetFlag(0x84a);
    if (flagValue2 == 0) {
        API_MapActor_SetSpeed(12, 0x10000, 0x8000);
        actor = (unsigned char *)__MapActor_GetActor(12);
        actor += 0x5a;
        CS910_Byte(actor, *actor & 0xfe);
        API_MapActor_TravelToAnimWait(12, 0x15a, 0x107);
        API_CutsceneWait(1);
        actor = (unsigned char *)__MapActor_GetActor(12);
        actor += 0x5a;
        CS910_Byte(actor, 1 | *actor);
    }
    API_MapActor_SetSpeed(11, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnim(11, 0x148, 0x106);
    API_MapActor_TravelToAnimWait(0, 0x148, 0x116);
    API_MapActor_SetAnim(11, 1);
    OvlFunc_910_20088e8();
    API_CutsceneWait(0x28);
    API_MapActor_TravelToAnim(0, 0x148, 0xf2);
    API_MapActor_TravelToAnimWait(11, 0x148, 0xf2);
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_WaitMovement(0);
    API_MapActor_SetPos(0, 0, 0);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x201;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(10);
    API_CutsceneEnd();
}
extern void __PlaySound(int);
extern void __Func_8010560(unsigned char *, int, int);
extern unsigned char Lm910_bd4[] __asm__(".Lm910_bd4");

void OvlFunc_910_20088e8(void)
{
    __PlaySound(0xbc);
    __Func_8010560(Lm910_bd4, 0x34, 0xb);
    __SetFlag(0x200);
}

int OvlFunc_910_200890c(int *actor)
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

extern void *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern int __UploadSpriteGFX(int, int, void *);
extern void __gfree(int);

void OvlFunc_910_2008974(int id) {
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *buf;
    int zero;

    actor = __MapActor_GetActor(id);
    sprite = actor->sprite;
    sprite->oam.priority = 1;
    ((struct Attr_OvlFunc_910_2008974 *)sprite)->flag = 0;
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
    actor->update = (actorfun_t *)OvlFunc_910_200890c;
    actor->__unk56 = zero;
}

INCLUDE_ASM("asm/maps/mccoys_palace_ext/mccoys_palace_ext_data.s");

INCLUDE_ASM("asm/maps/mccoys_palace_ext/imports.s");
