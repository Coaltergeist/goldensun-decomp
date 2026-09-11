/* rom_798dc4 (overlay file 903): consolidated TU — goma_cave_entry map overlay. */

#include "nonmatching.h"
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

INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_2008348.s");

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


INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_200867c.s");
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

INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_2008dd8.s");

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
