/* rom_7fa4ec (overlay file 970): consolidated TU — lalivero_ship map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "math.h"
#include "gba/io.h"

INCLUDE_ASM("asm/maps/lalivero_ship/exports.s");

extern void OvlFunc_970_2009188();

extern unsigned char gOvl_020096c8[];

unsigned int LaliveroShip_GetEntrances(void) {
    return (unsigned int)gOvl_020096c8;
}

unsigned int LaliveroShip_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009710[];

void *LaliveroShip_GetExits(void) {
    return (void *)gOvl_02009710;
}
extern unsigned char gOvl_0200971c[];

void *LaliveroShip_GetActors(void) {
    return (void *)gOvl_0200971c;
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_970_200804c(void)
{
  unsigned char *base;
  int new_var;
  short *new_var2;
  short val;
  int new_var3;
  unsigned int addr;
  base = *((unsigned char **) iwram_3001ebc);
  new_var = 0xa0;
  base += 0xb6 << 1;
  new_var2 = (short *) base;
  val = *new_var2;
  __Func_8091e9c(val);
 do { addr = new_var; } while (0);
  new_var3 = 0;
  addr <<= 19;
  *((unsigned short *) addr) = new_var3;
}


void OvlFunc_970_2008070(void) {
    OvlFunc_970_2009188();
}

extern void OvlFunc_970_20090d4(int, int, int, int, int, int, int);

void OvlFunc_970_200807c(void) {
    OvlFunc_970_20090d4(0, 0x80 << 11, 0x80 << 9, 0x80 << 6, 0x80 << 9, 0x80 << 8, 0x80 << 7);
}

extern unsigned char gOvl_020097ac[];

void *LaliveroShip_GetEvents(void) {
    return (void *)gOvl_020097ac;
}

#include "dma.h"

extern unsigned short Lm970_181c __asm__(".Lm970_181c");
extern unsigned short Lm970_14ac[] __asm__(".Lm970_14ac");
extern unsigned int _udivsi3_RAM(unsigned int, unsigned int);

void OvlFunc_970_20080b0(void)
{
    unsigned short idx;
    void *src;

    idx = _udivsi3_RAM(Lm970_181c, 6);
    src = &Lm970_14ac[idx];
    DMA3_SET(src, (void *)0x050000e8, 0x80000006);

    if ((unsigned int)(++Lm970_181c << 16) > 0x230000) {
        Lm970_181c = 0;
    }
}

extern int __Random(void);
extern void __Actor_SetAnim(void *actor, int anim);
extern void __Actor_SetScript(void *actor, void *script);
extern unsigned char gScript_970__020094c4[];

void OvlFunc_970_2008100(void *actor)
{
    char *a = (char *)actor;
    signed short f64s = *(signed short *)(a + 0x64);
    int f64u = *(unsigned short *)(a + 0x64);

    if (f64s != 0) {
        f64u = f64u - 1;
        *(unsigned short *)(a + 0x64) = f64u;
        *(int *)(a + 8) += __Random() - __Random();
        *(int *)(a + 0xc) += 0xcccc;
    } else if (*(signed short *)(a + 0x66) != 0) {
        unsigned short *animp;
        int anim_state;

        *(unsigned short *)(a + 0x66) = f64s;
        __Actor_SetAnim(actor, 1);
        animp = (unsigned short *)(a + 0x5e);
        anim_state = 0x14;
        *animp = anim_state;
        __Actor_SetScript(actor, gScript_970__020094c4);
    }
}

extern int Lm970_17f4[] __asm__(".Lm970_17f4");
extern int Lm970_17f0[] __asm__(".Lm970_17f0");

void OvlFunc_970_2008168(void)
{
    if (++Lm970_17f4[0] == 0x28) {
        if (Lm970_17f0[0] > 4) {
            Lm970_17f0[0] -= 1;
            Lm970_17f4[0] = 0;
        }
    }
}

extern int gOvl_020097e8;
extern unsigned int Lm970_17ec __asm__(".Lm970_17ec");
extern int Lm970_17f8 __asm__(".Lm970_17f8");
extern int Lm970_17fc __asm__(".Lm970_17fc");
extern unsigned int Lm970_1800 __asm__(".Lm970_1800");
extern int Lm970_1804 __asm__(".Lm970_1804");
extern int Lm970_1808 __asm__(".Lm970_1808");
extern int Lm970_180c[] __asm__(".Lm970_180c");
extern int Lm970_1810[] __asm__(".Lm970_1810");
extern unsigned char gOvl_02009814[];
extern int Lm970_1818[] __asm__(".Lm970_1818");
extern unsigned int iwram_3001e40;
extern unsigned char iwram_3001e70[];

extern int __sin(int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);

void OvlFunc_970_2008194(void)
{
    unsigned char *field = *(unsigned char **)iwram_3001e70;
    struct Actor *actor;

    if (gOvl_020097e8) {
        int s = fx32_multiply(__sin(Lm970_17ec << 9), 3) + 8;
        volatile unsigned short alpha = Lm970_17f0[0] + (s << 8);
        SET_IO(REG_BLDALPHA, alpha);
        ++Lm970_17ec;
    }
    if (Lm970_17fc) {
        int delta = (unsigned int)fx32_multiply(__sin(Lm970_1800 << 9), 2) << 16;
        *(int *)(field + 0x140) = Lm970_1804 + delta;
        *(int *)(field + 0x170) = Lm970_1808 + delta;
        if (Lm970_180c[0] != -0x10000) {
            actor = (struct Actor *)__MapActor_GetActor(0);
            actor->floorPos = actor->pos.y = Lm970_180c[0] + delta;
            actor->__unk55 = 0;
        }
        if (Lm970_1810[0] != -0x10000) {
            actor = (struct Actor *)__MapActor_GetActor(1);
            actor->pos.y = Lm970_1810[0] + delta;
            actor->floorPos = Lm970_180c[0] + delta;
            actor->__unk55 = 0;
        }
        if (*(int *)gOvl_02009814 != -0x10000) {
            actor = (struct Actor *)__MapActor_GetActor(3);
            actor->pos.y = *(int *)gOvl_02009814 + delta;
            actor->floorPos = Lm970_180c[0] + delta;
            actor->__unk55 = 0;
        }
        if (Lm970_1818[0] != -0x10000) {
            actor = (struct Actor *)__MapActor_GetActor(2);
            actor->pos.y = Lm970_1818[0] + delta;
            actor->floorPos = Lm970_180c[0] + delta;
            actor->__unk55 = 0;
        }
        ++Lm970_1800;
    }
    if (Lm970_17f8) {
        if (iwram_3001e40 & 1) {
            int x = *(int *)(field + 0xe4) & 0xffff0000;
            int z = *(int *)(field + 0xe8) & 0xffff0000;
            int position[3];
            position[0] = x + (unsigned int)__Random() * 240;
            position[1] = 0;
            position[2] = z + (unsigned int)__Random() * 160 + 0x1e0000;
            actor = (struct Actor *)API_CreateActor(0x1f7, position[0], position[1], position[2]);
            if (actor) {
                actor->update = (actorfun_t)OvlFunc_970_2008100;
                actor->waveCounter = 60;
                actor->__unk66 = 1;
                actor->__unk55 = 0;
                actor->flags = 2;
                actor->sprite->oam.priority = 2;
                __Actor_SetSpriteFlags(actor, 0);
                __Actor_SetAnim(actor, 0);
            }
        }
    }
}

int OvlFunc_970_20083c0(void)
{
    int *dst = Lm970_180c;
    *dst = ((int *)__MapActor_GetActor(0))[3];
    return 0;
}

int OvlFunc_970_20083dc(void)
{
    int *dst = Lm970_1810;
    *dst = ((int *)__MapActor_GetActor(1))[3];
    return 0;
}

extern unsigned char gOvl_02009814[];

int OvlFunc_970_20083f8(void)
{
    int *dst = (int *)gOvl_02009814;
    *dst = ((int *)__MapActor_GetActor(3))[3];
    return 0;
}

int OvlFunc_970_2008414(void)
{
    int *dst = Lm970_1818;
    *dst = ((int *)__MapActor_GetActor(2))[3];
    return 0;
}

extern unsigned char Lconst_0[] __asm__(".Lconst_0");
__asm__(".equ .Lconst_0, 0");
extern unsigned char gScript_970__02009820[];
extern unsigned char gScript_970__020098e0[];
extern unsigned char gScript_970__0200998c[];
extern unsigned char gScript_970__02009a4c[];

extern int __Func_8091c7c(int, int);
extern void OvlFunc_970_20092ac(void);
extern void __SetDestMap(int, int);
extern void __SetMusicTempo(unsigned short);

void OvlFunc_970_2008430(void)
{
    unsigned char *savedMotion;
    unsigned char *fieldState;
    int choice1;
    int choice2;
    int choice3;
    unsigned char *actor;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_Func_8010704(18, 0, 3, 1, 18, 12);
    API_MessageID(0x28fe);
    API_Func_809233c(1, -10, 16, 0xc000);
    API_Func_809233c(3, 0, 24, 0xc000);
    API_Func_809233c(2, 10, 16, 0xc000);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(0x32);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(3, 0x4000, 0);
    API_CutsceneWait(0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(2, 0x4000, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(30);
    API_Func_8092adc(1, 0xe000, 0);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(1, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_CutsceneWait(30);
        API_MapActor_Emote(1, 0x102, 0x32);
        API_ActorMessage(1, 0);
        *(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(30);
        API_MapActor_Emote(1, 0x102, 0x32);
        *(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage(1, 0);
    }
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0x8000, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(2, 0x101, 0x32);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(1, 0x101, 0x3c);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(30);
    API_Func_8092adc(3, 0xa000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x100, 0x32);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(3, 0xc000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(3, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        API_CutsceneWait(20);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(20);
        API_Func_8092adc(1, 0xe000, 0);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
        *(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(20);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(20);
        API_Func_8092adc(1, 0xe000, 0);
        API_CutsceneWait(20);
        *(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage(1, 0);
    }
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x102, 0x32);
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0xa000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(3, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_CutsceneWait(20);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 0) {
        API_CutsceneWait(30);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(20);
        API_ActorMessage(3, 0);
        *(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(30);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(20);
        *(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage(3, 0);
    }
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_PlaySound(17);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(0, 0x13333, 0x9999);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x13333, 0x9999);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    API_MapActor_SetBehavior(0, (int)gScript_970__02009820);
    API_CutsceneWait(0x32);
    API_Func_80933f8(0x1080000, -1, 0xc80000, 1);
    API_MapActor_SetBehavior(1, (int)gScript_970__020098e0);
    API_CutsceneWait(0x32);
    API_MapActor_SetBehavior(2, (int)gScript_970__0200998c);
    API_MapActor_WaitScript(2);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(2, 0x4000, 0);
    API_Func_8092304(3, 0, -0x20);
    API_CutsceneWait(30);
    API_Func_8092adc(3, 0x4000, 0);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(3, 0x8000, 0);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(3, (int)gScript_970__02009a4c);
    API_MapActor_WaitScript(3);
    API_Func_8092adc(3, 0xc000, 0);
    API_CutsceneWait(20);
    API_Func_80933f8(0xd80000, -1, 0xa80000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(1, 0x8000, 0);
    API_Func_8092adc(2, 0x8000, 0);
    API_Func_8092adc(3, 0x8000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_PlaySound(0x43);
    __SetMusicTempo(0xf0);
    OvlFunc_970_20092ac();
    API_CutsceneWait(0x50);
    savedMotion = *(unsigned char **)iwram_3001e70;
    actor = (unsigned char *)__MapActor_GetActor(8);
    *(int *)(actor + 0x34) = 0x83;
    *(int *)(actor + 0x30) = 0x20000;
    *(int *)(savedMotion + 0x11c) = -0x3000;
    API_Func_8092304(8, 0x3c, 0);
    *(int *)(savedMotion + 0x11c) = -0x6000;
    API_Func_8092304(8, 0x3c, 0);
    API_CutsceneWait(0x50);
    API_CutsceneWait(0x64);
    API_Func_80933d4(0x23333, 0x28f);
    API_Func_80933f8(0x3280000, -1, 0xa80000, 1);
    API_CutsceneWait(0x12c);
    fieldState = *(unsigned char **)(iwram_3001e70 + 0x4c);
    *(int *)(fieldState + 0x1c0) = 0x100;
    SET_IO(*(volatile unsigned short *)0x05000000, 0);
    *(int *)(fieldState + 0x1c8) = 0x60;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneWait(30);
    API_SetFlag(0x11a);
    __SetDestMap((int)Lconst_0, 9);
}
extern void __Func_808e118(void);
extern void __Func_80b04c4(void);

void OvlFunc_970_2008b34(void)
{
    unsigned char *field = *(unsigned char **)iwram_3001e70;
    int i, moved;
    volatile unsigned short bg;

    API_CutsceneStart();
    __Func_808e118();
    API_MapActor_TravelToAnimWait(0, 0x138, 0xe8);
    API_Func_8092adc(0, 0xc000, 0);
    API_CutsceneWait(0x28);
    API_PlaySound(0x8c);
    for (i = 0; i <= 15; i++) {
        SET_IO(*(volatile unsigned short *)0x05000000, (i << 11) | (i << 5));
        API_CutsceneWait(10);
    }
    SET_IO(*(volatile unsigned short *)0x05000000, 0x7e00);
    {
        int flashAlpha = 0x1010;
        int lowAlpha = 0x810;
        for (i = 2; i >= 0; i--) {
            API_PlaySound(0xd4);
            SET_IO(REG_BLDALPHA, flashAlpha);
            API_CutsceneWait(3);
            SET_IO(REG_BLDALPHA, lowAlpha);
            API_CutsceneWait(0x41);
        }
    }
    gOvl_020097e8 = 1;
    Lm970_17ec = 0;
    API_StartTask(OvlFunc_970_2008194, 0xc80);
    Lm970_17f8 = 1;
    API_CutsceneWait(20);
    API_PlaySound(0xa3);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x3c);
    Lm970_17f8 = 1;
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_CutsceneWait(0x3c);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    Lm970_17f4[0] = 0;
    API_StartTask(OvlFunc_970_2008168, 0xc80);
    moved = 0;
    do {
        *(int *)(field + 0x140) += 0x3333;
        moved += 0x3333;
        *(int *)(field + 0x170) += 0x3333;
        API_WaitFrames(1);
    } while (moved <= 0x59ffff);
    API_StopTask(OvlFunc_970_2008168);
    Lm970_17f8 = 0;
    bg = (REG_BG3CNT & 0xfffc) | 3;
    REG_BG3CNT = bg;
    bg = (REG_BG2CNT & 0xfffc) | 3;
    REG_BG2CNT = bg;
    bg = (REG_BG1CNT & 0xfffc) | 2;
    REG_BG1CNT = bg;
    gOvl_020097e8 = 0;
    API_PlaySound(0x120);
    API_WaitFrames(1);
    API_PlaySound(0x91);
    SET_IO(REG_BLDCNT, 0xbf);
    for (i = 0; i <= 16; i++) {
        REG_BLDY = i;
        API_CutsceneWait(1);
    }
    API_CutsceneWait(0x28);
    API_Func_8012330(-1, -1, 0xe666);
    Lm970_1804 = *(int *)(field + 0x140);
    Lm970_1808 = *(int *)(field + 0x170);
    Lm970_17fc = 1;
    for (i = 16; i >= 0; i--) {
        REG_BLDY = i;
        API_CutsceneWait(8);
    }
    API_StartTask(OvlFunc_970_20080b0, 0xc80);
    API_PlaySound(0x50);
    __Func_80b04c4();
    API_CutsceneWait(20);
    API_CutsceneEnd();
    OvlFunc_970_2008430();
}
typedef unsigned char GlobalState;
extern GlobalState gState;
extern unsigned char iwram_3001e70[];
extern int __GiveItemTo(int, int);
extern void __Func_800fe9c(void);

int LaliveroShip_MapInit(void)
{
    unsigned char *r1;
    int r2;
    int r3;
    unsigned char *base;
    char *actor;
    int val;
    volatile unsigned short temp;
    volatile unsigned short *bld;

    r2 = 0xe1;
    r2 <<= 1;
    r3 = (int)&gState + r2;
    r2 = 0;
    base = *(unsigned char **)iwram_3001e70;
    if (*(short *)((char *)r3 + r2) == 0x63) {
        __GiveItemTo(0, 0xf2);
    }

    r3 = *(int *)(iwram_3001e70 + 0x4c);
    r2 = 0xe0;
    r2 <<= 1;
    r3 += r2;
    r2 -= 0xc0;
    *(int *)r3 = r2;

    ((char *)__MapActor_GetActor(8))[0x59] = 0;
    val = 2;
    ((char *)__MapActor_GetActor(8))[0x23] = val;

    ((char *)__MapActor_GetActor(9))[0x59] = 0;
    ((char *)__MapActor_GetActor(9))[0x23] = val;

    actor = (char *)__MapActor_GetActor(8);
    val -= 0xf;
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;

    actor = (char *)__MapActor_GetActor(9);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;

    actor = (char *)__MapActor_GetActor(0);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;
    (*(char **)(actor + 0x50))[0x15] = ((*(char **)(actor + 0x50))[0x15] & val) | 4;

    actor = (char *)__MapActor_GetActor(1);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;
    (*(char **)(actor + 0x50))[0x15] = ((*(char **)(actor + 0x50))[0x15] & val) | 4;

    actor = (char *)__MapActor_GetActor(2);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;
    (*(char **)(actor + 0x50))[0x15] = ((*(char **)(actor + 0x50))[0x15] & val) | 4;

    actor = (char *)__MapActor_GetActor(3);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;
    (*(char **)(actor + 0x50))[0x15] = ((*(char **)(actor + 0x50))[0x15] & val) | 4;

    temp = (REG_BG3CNT & 0xfffc) | 2;
    REG_BG3CNT = temp;
    temp = (REG_BG2CNT & 0xfffc) | 3;
    REG_BG2CNT = temp;
    temp = (REG_BG1CNT & 0xfffc) | 3;
    REG_BG1CNT = temp;

    do {
        r2 = 0x2648;
        bld = (volatile unsigned short *)0x04000050;
    } while (0);
    *bld = r2;
    r2 = 0x81;
    r2 <<= 4;
    bld++;
    *bld = r2;

    r3 = 0x9a;
    r3 <<= 1;
    r1 = base + r3;
    *(int *)(r1 + 0xc) += 0xffa60000;

    r3 = 0xb2;
    r3 <<= 1;
    r1 = base + r3;
    *(int *)(r1 + 0xc) += 0xffa60000;

    __Func_800fe9c();
    OvlFunc_970_200807c();

    return 0;
}
extern unsigned char iwram_3001ed8[];

#include "dma0.h"

void OvlFunc_970_2008f30(void)
{
    unsigned char *base;
    unsigned char idx;
    unsigned int *entry;
    unsigned int *bg3hofs = (unsigned int *)&REG_BG3HOFS;

    base = *((unsigned char **) iwram_3001ed8);
    idx = base[0xf00];
    entry = (unsigned int *)(base + idx * 0x780);
    UnknownDMAPrefix();
    *bg3hofs = *entry++;
    DMA0_SET(entry, (void *)bg3hofs, 0xa6600001);
}

struct Wave970 {
    short buf[2][0x1e0][2];
    unsigned char page;
    unsigned char flag;
    unsigned short timer;
    unsigned char pad2[4];
    int val_f08;
    int val_f0c;
    int val_f10;
    int val_f14;
    int val_f18;
    int val_f1c;
};

INCLUDE_ASM("asm/maps/lalivero_ship/OvlFunc_970_2008f80.s");
extern void OvlFunc_970_2008f80(void);
extern void *__galloc_ewram(int tag, int size);

void OvlFunc_970_20090d4(int p0, int p1, int p2, int p3, int p4, int p5, int p6)
{
    struct Wave970 *task;

    task = (struct Wave970 *)__galloc_ewram(0x22, 0xf20);
    DMA3_FILL(task, 0, 0xf20);
    WaitForDma3();

    task->flag = p0;
    task->val_f08 = p1;
    task->val_f0c = p4;
    task->val_f18 = p3;
    task->val_f1c = p6;
    task->val_f10 = p2;
    task->val_f14 = p5;

    __StartTask(OvlFunc_970_2008f80, 0xc8 << 4);
    __StartTask(OvlFunc_970_2008f30, 0x90 << 3);
}


extern void OvlFunc_970_2008f30(void);
extern void OvlFunc_970_2008f80(void);

void OvlFunc_970_2009188(void)
{
  char *new_var;
  unsigned int *r2;
  unsigned short r3;
  unsigned short r1;
  __StopTask(OvlFunc_970_2008f30);
  __StopTask(OvlFunc_970_2008f80);
  r2 = (unsigned int *) 0x040000b0;
  r3 = 0xc5ff;
  r1 = *((volatile unsigned short *) (((char *) r2) + 0xa));
  *((volatile unsigned short *) (((char *) r2) + 0xa)) = (r3 &= r1);
  r3 = 0x7fff;
  r2++;
  r2--;
  r1 = *((volatile unsigned short *) (((char *) r2) + 0xa));
  new_var = (char *) r2;
  r3 &= r1;
  *((volatile unsigned short *) (((char *) r2) + 0xa)) = r3;
  r3 = *((volatile unsigned short *) (new_var + 0xa));
}

#include "sprite/slot.h"

struct OamEntry970 {
    int attr0;
    int attr1;
    int attr2;
};

extern short Lm970_1c18 __asm__(".Lm970_1c18");
extern short Lm970_1c1a __asm__(".Lm970_1c1a");
extern struct SpriteSlot gSpriteSlots[];
extern struct OamEntry970 Lm970_1af8[] __asm__(".Lm970_1af8");
extern void __Func_8003dec(void *entry, int a);

void OvlFunc_970_20091c4(void)
{
    int tile;
    unsigned int i;
    int angle;
    int half;
    int *p;

    tile = gSpriteSlots[Lm970_1c1a].vramOffset >> 5;
    p = (int *)Lm970_1af8;
    if (Lm970_1c18 != 0) {
        Lm970_1c18--;
    }

    for (i = 0; i <= 7; i++) {
        int val;
        angle = Lm970_1c18;
        val = -angle / 2;
        *p++ = 0;
        *p++ = (val & 0xff) | (i << 21) | 0x80004000;
        *p++ = tile;
    }

    half = (angle / 2 + 0x88) & 0xff;
    for (i = 0; i <= 7; i++) {
        *p++ = 0;
        *p++ = half | (i << 21) | 0x80004000;
        *p++ = tile;
    }

    i = 0;
    half = (Lm970_1c18 / 2 + 0x98) & 0xff;
    for (; i <= 7; i++) {
        *p++ = 0;
        *p++ = half | (i << 21) | 0x80004000;
        *p++ = tile;
    }

    for (i = 0; i <= 23; i++) {
        __Func_8003dec(&Lm970_1af8[i], 0xff);
    }
}

#include "dma.h"

extern short Lm970_1c18 __asm__(".Lm970_1c18");
extern short Lm970_1c1a __asm__(".Lm970_1c1a");
extern void OvlFunc_970_20091c4(void);
extern void *__alloc_ewram(int);

static inline void *alloc_ewram_helper(int size)
{
    return __alloc_ewram(size << 1);
}

void OvlFunc_970_20092ac(void)
{
    void *gfx;

    gfx = alloc_ewram_helper(0x80);
    Lm970_1c1a = __AllocSpriteSlot();
    DMA3_FILL(gfx, 0x11111111, 0x100);
    __UploadSpriteGFX(Lm970_1c1a, 0x80 << 1, gfx);
    Lm970_1c18 = 0x30;
    __StartTask(OvlFunc_970_20091c4, 0xc80);
}

INCLUDE_ASM("asm/maps/lalivero_ship/imports.s");
INCLUDE_ASM("asm/maps/lalivero_ship/lalivero_ship_data.s");
