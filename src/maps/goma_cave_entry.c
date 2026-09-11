/* rom_798dc4 (overlay file 903): consolidated TU — goma_cave_entry map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(int arg0);

void OvlFunc_903_2008314(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern unsigned char gOvl_020092f8[];

unsigned int GomaCaveEntry_GetEntrances(void) {
    return (unsigned int)gOvl_020092f8;
}

int GomaCaveEntry_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009358[];

unsigned int GomaCaveEntry_GetExits(void) {
    return (unsigned int)gOvl_02009358;
}
extern unsigned char gOvl_02009368[];

unsigned int GomaCaveEntry_GetActors(void) {
    return (unsigned int)gOvl_02009368;
}

void OvlFunc_903_2008348(void)
{
    int x;
    int val;
    int t1, t2;

    x = *(int *)((int)__MapActor_GetActor(9) + 8);
    if (x <= -1) {
        x += 0xfffff;
    }
    val = x >> 20;
    API_ClearFlag(0x861);
    API_ClearFlag(0x862);
    if (val == 0xf) {
        t1 = 0x10;
        t2 = 0x12;
        __Func_8010704(0x2f, 0x12, 1, 2, t1, t2);
    } else if (val == 0x10) {
        __Func_8010704(0x30, 0x12, 1, 2, val, 0x12);
        API_SetFlag(0x861);
    } else {
        t1 = 0x10;
        t2 = 0x12;
        __Func_8010704(0x2f, 0x12, 1, 2, t1, t2);
        API_SetFlag(0x862);
    }
}

void OvlFunc_903_20083d0(void)
{
  int actor;
  int x;
  int val;
  int val2;
  int zero;

  x = *((int *) (((int) __MapActor_GetActor(10)) + 8));
  if (x <= (0 - 1))
  {
    x += 0xfffff;
  }
  val = x >> 20;
  if (val == 0x17)
  {
    __CutsceneWait(10);
    actor = (int) __MapActor_GetActor(10);
    actor += 0x23;
    *((char *) actor) = 2;
    zero = 0;
    actor = (int) __MapActor_GetActor(10);
    actor += 0x55;
    *((char *) actor) = zero;
    actor = (int) __MapActor_GetActor(10);
    __Actor_SetSpriteFlags(actor, 0);
    val2 = 0x11;
    __Func_8010704(0x36, val2, 1, 1, val, val2);
    __SetFlag(0x863);
  }
}

INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_200843c.s");

void OvlFunc_903_20084cc(void) {}

void OvlFunc_903_20084d0(void) {}

void OvlFunc_903_20084d4(void) {
    __CutsceneStart();
    __SetFlag(0x866);
    __CutsceneEnd();
}

extern unsigned char gOvl_02009488[];

void *GomaCaveEntry_GetEvents(void) {
    return (void *)gOvl_02009488;
}

INCLUDE_ASM("asm/maps/goma_cave_entry/GomaCaveEntry_MapInit.s");
extern void __MapActor_PlayPendingSound(void);
extern void __MessageID(int);
extern void __Func_8092adc(int, int, int);
extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern int __GetFlag(int);
extern void __CutsceneEnd(void);
extern void __Func_80925cc(int, int);
extern void __MapActor_Emote(int, int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern void __Func_809259c(int, int);
extern void OvlFunc_903_2008d68(void);
extern void __MapActor_Jump(int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __Func_80917d0(int, int);
extern void OvlFunc_903_2008fc8(void);
extern void __MapActor_Surprise(int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetSpeed(int, int, int);

void OvlFunc_903_200867c(void)
{
    struct Actor *act;

    __MapActor_PlayPendingSound();
    __CutsceneStart();
    API_CutsceneWait(0x1e);
    __MessageID(0x138f);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_Func_8092adc(0, 0xe0 << 8, 20);
    act = (struct Actor *)__MapActor_GetActor(0);
    if (act != NULL) {
        API_MapActor_SetPos(1, act->pos.x, act->pos.z);
    }
    API_MapActor_TravelToAnimWait(1, 0x84 << 1, 0xa8);
    API_Func_8092adc(1, 0xc0 << 7, 20);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    if (!__GetFlag(0x855)) {
        API_MapActor_SetAnim(1, 2);
        act = (struct Actor *)__MapActor_GetActor(0);
        if (act != NULL) {
            API_MapActor_TravelTo(1, *(short *)((char *)act + 10), *(short *)((char *)act + 18));
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
        __CutsceneEnd();
        return;
    }
    API_MapActor_SetPos(2, 0xb4 << 17, 0xf8 << 16);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(2, 0x88 << 1, 0xf8);
    API_MapActor_TravelToAnimWait(2, 0x88 << 1, 0xd0);
    API_Func_8092adc(2, 0xa0 << 8, 20);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_Func_8092adc(0, 0x80 << 6, 0);
    API_Func_8092adc(1, 0x80 << 7, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x80 << 1, 0);
    API_MapActor_Emote(1, 0x80 << 1, 60);
    API_MapActor_DoAnim(2, 3);
    API_MapActor_TravelToAnimWait(2, 0x84 << 1, 0xc8);
    API_MapActor_TravelToAnim(0, 0xf8, 0xa8);
    API_MapActor_TravelToAnimWait(2, 0xf8, 0xb8);
    API_MapActor_WaitMovement(0);
    API_Func_8092adc(0, 0xc0 << 7, 0);
    API_Func_8092adc(1, 0xc0 << 7, 0);
    API_MapActor_TravelToAnimWait(2, 0xe8, 0xb8);
    API_CutsceneWait(20);
    API_MapActor_Emote(2, 0x105, 60);
    API_Func_8092adc(2, 0xe0 << 8, 20);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(2, 0x80 << 8, 20);
    API_ActorMessage_Wait(2, 0, 120);
    API_MapActor_Emote(0, 0x105, 0);
    API_MapActor_Emote(1, 0x105, 60);
    API_MapActor_TurnToFaceActor(0, 1, 0);
    API_CutsceneWait(60);
    API_Func_8092adc(0, 0xc0 << 7, 0);
    API_Func_8092adc(1, 0xc0 << 7, 0);
    API_CutsceneWait(60);
    API_MapActor_Emote(2, 0x83 << 1, 0);
    API_Func_809259c(2, 1);
    API_CutsceneWait(30);
    API_ActorMessage_Wait(2, 0, 30);
    API_Func_8092adc(2, 0xe0 << 8, 20);
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(2, 0x80 << 8, 20);
    OvlFunc_903_2008d68();
    API_MapActor_SetAnim(2, 1);
    API_CutsceneWait(20);
    __MapActor_PlayPendingSound();
    API_MapActor_Emote(0, 0x80 << 1, 0);
    API_MapActor_Emote(1, 0x80 << 1, 60);
    API_MapActor_Jump(1, 2, 0);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(1, 20);
    API_MapActor_TravelToAnimWait(2, 0x84 << 1, 0xb8);
    API_CutsceneWait(10);
    API_MapActor_Face(2, 1, 0);
    API_MapActor_Face(1, 2, 0);
    API_MapActor_Face(0, 2, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 60);
    API_MapActor_Emote(0, 0x105, 0);
    API_MapActor_Emote(1, 0x105, 60);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_CutsceneWait(60);
    API_Func_8092adc(1, 0x80 << 8, 0);
    API_Func_8092adc(0, 0, 0);
    API_CutsceneWait(60);
    API_Func_8092adc(1, 0x80 << 7, 0);
    API_Func_8092adc(0, 0x80 << 6, 0);
    API_CutsceneWait(10);
    OvlFunc_903_2008314(1, 20);
    API_MapActor_Emote(2, 0x105, 0);
    API_CutsceneWait(60);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 20);
    API_MapActor_Face(0, 2, 0);
    API_MapActor_Face(1, 2, 0);
    API_MapActor_Emote(0, 0x81 << 1, 0);
    API_MapActor_Emote(1, 0x81 << 1, 0);
    API_CutsceneWait(60);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 30);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_CutsceneWait(80);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 20);
    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_MapActor_Surprise(0, 0x81 << 1);
    API_MapActor_Surprise(1, 0x81 << 1);
    API_CutsceneWait(60);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 20);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0x80 << 8, 0);
    API_CutsceneWait(80);
    API_MapActor_Face(0, 2, 0);
    API_MapActor_Face(1, 2, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 30);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 20);
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 40);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(20);
    API_Func_80917d0(2, 1);
    API_CutsceneWait(60);
    OvlFunc_903_2008fc8();
    API_Func_80925cc(2, 1);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnimWait(2, 0xf8, 0xb8);
    API_CutsceneWait(20);
    OvlFunc_903_2008314(2, 20);
    API_Func_8092adc(0, 0x80 << 8, 0);
    API_Func_8092adc(1, 0x80 << 8, 0);
    API_CutsceneWait(120);
    OvlFunc_903_2008314(2, 30);
    API_MapActor_Face(0, 2, 0);
    API_MapActor_Face(1, 2, 0);
    API_MapActor_Face(2, 0, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(50);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_TravelToAnim(1, 0xf8, 0xa8);
    API_MapActor_TravelToAnimWait(2, 0xf8, 0xa8);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_Func_8010704(0x4a, 0xb, 1, 1, 0x49, 0xb);
    __SetFlag(0x865);
    __CutsceneEnd();
}
extern void OvlFunc_903_2008dd8(int);

void OvlFunc_903_2008d04(void)
{
    int r6;
    int r5;
    unsigned char *actor;
    unsigned int v;

    __CutsceneStart();
    r6 = *(int *)((int)__MapActor_GetActor(8) + 8) >> 20;
    if (r6 == 0xb) {
        OvlFunc_903_2008dd8(8);
        actor = (unsigned char *)__MapActor_GetActor(8);
        actor += 0x23;
        v = 2;
        v |= *actor;
        *actor = v;
        r5 = 0xc;
        __Func_8010704(0x27, 0xc, 3, 1, 8, r5);
        __Func_8010704(0x2b, r6, 3, 1, r5, r6);
        __SetFlag(0x860);
    }
    __CutsceneEnd();
}
extern unsigned char iwram_3001f30[];
extern void __Func_8096fb0(int, int);
extern void __Func_80970f8(int, int);
extern void __Func_809728c(void);
extern void __FieldMove(int);
extern void __Func_8097174(void);

void OvlFunc_903_2008d68(void)
{
    unsigned char *r5 = *(unsigned char **)iwram_3001f30;
    unsigned int v;
    __Func_8096fb0(0x4e, 1);
    __Func_80970f8(2, 0xf);
    r5 += 0x71c;
    v = 8;
    v |= *r5;
    *r5 = v;
    __Func_809728c();
    __FieldMove(1);
    __Func_8097174();
}

void OvlFunc_903_2008da8(unsigned int arg0) {
    unsigned int r2;
    unsigned int r1;
    unsigned short r3;

    r2 = *(unsigned int *)(arg0 + 0x50);
    r1 = 0xfffff800;
    r3 = *(unsigned short *)(r2 + 0x1e);
    r3 += r1;
    *(unsigned short *)(r2 + 0x1e) = r3;
}

extern void __WaitFrames(unsigned int x);

void OvlFunc_903_2008db8(unsigned char *arg0, int arg1) {
    int i;

    for (i = 0x3c; i != 0; i--) {
        __WaitFrames(1);
        if (*(int *)(arg0 + 0xc) <= arg1)
            break;
    }
}

extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __PlaySound(int);
extern void __Func_8012330(int, int, int);
extern void __Func_8012350(void);
extern void __MapActor_SetAnim(int, int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
extern void OvlFunc_903_2008da8(unsigned int);

struct EffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    int unk1c;
    int unk20;
    int unk24;
};

void OvlFunc_903_2008dd8(int id)
{
    struct Actor *actor;
    unsigned int i;
    int v[3];
    struct EffectData data;
    int amp = 0xa0 << 11;
    int sx = 0xc0 << 10;
    int sy = 0xc0 << 9;

    actor = (struct Actor *)__MapActor_GetActor(id);
    actor->__unk55 = 0;

    for (i = 0; i <= 17; i++) {
        __WaitFrames(1);
        actor->sprite->rotation -= 0x100;
        actor->pos.x -= __cos(actor->sprite->rotation) / 2;
        actor->prevPos.x = 0x80 << 24;
    }

    actor->update = (actorfun_t *)OvlFunc_903_2008da8;
    __MapActor_SetSpeed(id, sx, sy);
    __MapActor_TravelTo(id, 0xa0, 0xc0);
    actor->gravity = 0xcccc;
    actor->__unk55 = 3;
    actor->layer = 0;
    __MapActor_WaitMovement(id);
    OvlFunc_903_2008db8((unsigned char *)actor, 0x80 << 14);
    __PlaySound(0xbc);
    __Func_8012330(amp, amp, 0x80 << 9);
    __PlaySound(0x8d);
    API_Func_8012330(-1, -1, 0xe666);

    for (i = 0; i <= 16; i++) {
        v[0] = __cos(i << 12);
        v[1] = 0;
        v[2] = __sin(i << 12);
        v[0] -= v[0] / 4;
        v[2] -= v[2] / 2;
        OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z, v[0], v[1], v[2], 0, 0);
    }

    actor->motion.y = 0xa0 << 11;
    __MapActor_TravelTo(id, 0x8b, 0xc4);
    __MapActor_WaitMovement(id);
    OvlFunc_903_2008db8((unsigned char *)actor, 0x80 << 14);
    actor->update = 0;
    actor->sprite->rotation = 0x80 << 5;

    data.unk18 = 0xd6;
    data.unk8 = 0x80 << 8;
    data.unkc = 0xcccc;
    data.unk10 = 0xc0 << 9;
    data.unk14 = 0x13333;

    OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z, 0, 0, 0, 0xe0 << 13, &data);
    __PlaySound(0x9a);
    __MapActor_SetAnim(id, 3);
    __Func_8012350();
}

void OvlFunc_903_2008f8c(unsigned int arg0, unsigned int arg1)
{
    extern unsigned char *__GetUnit(unsigned int unit);
    extern int __GiveItemTo(unsigned int unit, unsigned int item);
    extern int __EquipItem(unsigned int unit, unsigned int slot);
    unsigned short *unit;
    int i;

    unit = (unsigned short *)__GetUnit(arg0);
    __GiveItemTo(arg0, arg1);
    i = 0;
    unit = (unsigned short *)((char *)unit + 0xd8);
    while (i <= 14) {
        if (*unit++ == arg1) {
            __EquipItem(arg0, i);
        }
        i++;
    }
}

extern unsigned char *__GetUnit(unsigned int);
extern int __GiveItemTo(unsigned int, unsigned int);
extern unsigned char *__GetItemInfo(unsigned int);
extern void __Func_8078948(unsigned int, unsigned int);
extern int __EquipItem(unsigned int, unsigned int);

INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_2008fc8.s");
INCLUDE_ASM("asm/maps/goma_cave_entry/goma_cave_entry_data.s");
