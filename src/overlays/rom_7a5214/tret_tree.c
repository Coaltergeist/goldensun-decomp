/* rom_7a5214 (overlay file 918): consolidated TU — tret_tree map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "math.h"

/* This overlay preserves the historical ignored-return message declaration. */
static inline int API_ShowActorMessage_NoWait(int a0, int a1)
{
    extern int __ShowActorMessage_NoWait(int, int);
    return __ShowActorMessage_NoWait(a0, a1);
}

extern unsigned char gOvl_0200a5cc[];

void *TretTree_GetEntrances(void) {
    return (void *)gOvl_0200a5cc;
}
extern unsigned char gOvl_0200a9d4[];

void *TretTree_GetSpecialExits(void) {
    return (void *)gOvl_0200a9d4;
}
extern unsigned char gOvl_0200aa14[];

void *TretTree_GetExits(void) {
    return (void *)gOvl_0200aa14;
}
extern unsigned char gOvl_0200aa58[];

void *TretTree_GetActors(void) {
    return (void *)gOvl_0200aa58;
}

extern int gState;
extern unsigned char L2dd0[] __asm__(".Lm918_2dd0");
extern void *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __PlaySound(int);
extern void __CutsceneStart(void);
extern void __SetDestMap(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __MapActor_Surprise(int, int);
extern void __CutsceneWait(int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8092b08(int, int);
extern void __WaitFrames(int);

INCLUDE_ASM("asm/overlays/rom_7a5214/tret_tree/OvlFunc_918_2008334.s");

extern void OvlFunc_918_2008334(int a, int b, int c, int d);

void OvlFunc_918_2008494(void) {
    OvlFunc_918_2008334(0x200, 0x40, 0x23, 0x15);
}


void OvlFunc_918_20084a8(void) {
    OvlFunc_918_2008334(0x201, 0x41, 0x23, 0x16);
}


void OvlFunc_918_20084c0(void) {
    OvlFunc_918_2008334(0x202, 0x42, 0x23, 0x17);
}


void OvlFunc_918_20084d8(void) {
    OvlFunc_918_2008334(0x203, 0x43, 0x23, 0x18);
}


void OvlFunc_918_20084f0(void) {
    OvlFunc_918_2008334(0x204, 0x44, 0x23, 0x19);
}


void OvlFunc_918_2008504(void) {
    OvlFunc_918_2008334(0x205, 0x45, 0x23, 0x1a);
}


void OvlFunc_918_200851c(void) {
    OvlFunc_918_2008334(0x206, 0x46, 0x23, 0x1b);
}


void OvlFunc_918_2008534(void) {
    OvlFunc_918_2008334(0x207, 0x47, 0x23, 0x1c);
}


void OvlFunc_918_200854c(void) {
    OvlFunc_918_2008334(0x208, 0x48, 0x23, 0x1d);
}


void OvlFunc_918_2008560(void) {
    OvlFunc_918_2008334(0x209, 0x49, 0x23, 0x1f);
}


void OvlFunc_918_2008578(void) {
    OvlFunc_918_2008334(0x20a, 0x4a, 0x23, 0x20);
}


void OvlFunc_918_2008590(void) {
    OvlFunc_918_2008334(0x20b, 0x4f, 0x23, 0x32);
}


void OvlFunc_918_20085a8(void) {
    OvlFunc_918_2008334(0x20c, 0x4b, 0x23, 0x33);
}


void OvlFunc_918_20085bc(void) {
    OvlFunc_918_2008334(0x20d, 0x4c, 0x23, 0x34);
}


void OvlFunc_918_20085d4(void) {
    OvlFunc_918_2008334(0x20e, 0x4d, 0x23, 0x35);
}


void OvlFunc_918_20085ec(void) {
    OvlFunc_918_2008334(0x20f, 0x4e, 0x23, 0x36);
}


void OvlFunc_918_2008604(void) {
    OvlFunc_918_2008334(0x210, 0x50, 0x23, 0x37);
}


void OvlFunc_918_2008618(void) {
    OvlFunc_918_2008334(0x211, 0x51, 0x23, 0x38);
}


void OvlFunc_918_2008630(void) {
    OvlFunc_918_2008334(0x212, 0x52, 0x23, 0x39);
}


void OvlFunc_918_2008648(void) {
    OvlFunc_918_2008334(0x213, 0x53, 0x23, 0x3a);
}


void OvlFunc_918_2008660(void) {
    OvlFunc_918_2008334(0x214, 0x54, 0x23, 0x3b);
}

extern int __Func_8093c00(void);
extern unsigned char L2dd0[] __asm__(".Lm918_2dd0");

void OvlFunc_918_2008674(void) {
    if (!__Func_8093c00())
        *(short *)(*(unsigned int *)L2dd0) = -1;
}

extern unsigned char gOvl_0200aae8[];

void *TretTree_GetEvents(void) {
    return (void *)gOvl_0200aae8;
}

extern unsigned char gScript_918__02009db4[];
extern unsigned char gScript_918__02009ddc[];
extern unsigned char gScript_918__02009e04[];
extern unsigned char gScript_918__02009e2c[];
extern void *iwram_3001ebc[];

void OvlFunc_918_200869c(void) {
    int flag3;
    struct Actor *actor;
    int mask;
    char *ebc0;
    int state_offset;
    extern void __MapActor_SetBehavior(int, void *);
    extern void __MapActor_RunScript(int, void *);
    extern void __Func_8091f90(int, int);
    extern void __StartMapBattle(int, int);
    extern void __CutsceneEnd(void);
    extern unsigned char Lconst_2d[] __asm__(".Lconst_2d");

    flag3 = API_GetFlag(3);
    __CutsceneStart();
    __PlaySound(0x11);
    API_MessageID(0x14ce);
    API_ActorMessage_Wait(0x8009, 0, 0x14);
    __PlaySound(0x1d);

    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);

    mask = 0xfe;
    ((struct Actor *)__MapActor_GetActor(3))->flags &= mask;
    API_Func_8092b08(3, 2);

    ((struct Actor *)__MapActor_GetActor(0))->flags &= mask;
    API_Func_8092b08(0, 2);

    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, actor->pos.x, actor->pos.z);
    }

    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, actor->pos.x, actor->pos.z);
    }

    if (flag3) {
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(3, actor->pos.x, actor->pos.z);
        }
        __MapActor_SetBehavior(3, gScript_918__02009e2c);
    }

    __MapActor_SetBehavior(0, gScript_918__02009db4);
    __MapActor_SetBehavior(1, gScript_918__02009ddc);
    __MapActor_RunScript(2, gScript_918__02009e04);

    API_CutsceneWait(10);

    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0x28);

    API_MapActor_SetAnim(8, 0xb);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(8, 8);
    API_CutsceneWait(20);

    OvlFunc_918_2009424(8);
    API_ActorMessage(0x8008, 0);

    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_809259c(2, 2);

    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_Emote(3, 0x100, 0);
    API_MapActor_Emote(2, 0x100, 0x3c);

    OvlFunc_918_2009424(0xb);
    API_ActorMessage_Wait(0x8008, 0, 10);

    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_Func_809259c(3, 1);
    API_Func_80925cc(2, 1);

    API_ActorMessage(0x8008, 0);

    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_MapActor_Surprise(3, 0x102);
    API_MapActor_Surprise(2, 0x102);

    API_CutsceneWait(0x28);
    OvlFunc_918_2009424(0xb);
    API_ActorMessage(0x8008, 0);

    ebc0 = *(char **)iwram_3001ebc;
    *(int *)(ebc0 + (0xe0 << 1)) = (0xe0 << 1) + 0x40;
    *(int *)(ebc0 + (0xe0 << 1) + 8) = 0x40;

    state_offset = 0x22b;
    ((char *)&gState)[state_offset] = 3;
    __Func_8091f90((int)Lconst_2d, 0x13);
    __StartMapBattle(0x24, 0);
    __CutsceneEnd();
}
extern unsigned char gScript_918__02009e54[];
extern unsigned char gScript_918__02009ec8[];
extern vec3_t Lm918_2dc0 __asm__(".Lm918_2dc0");
extern int Lm918_2dcc __asm__(".Lm918_2dcc");
extern void OvlFunc_918_200962c(void);
extern void OvlFunc_918_2009244(void);

void OvlFunc_918_2008918(void) {
    int flag3;
    int mask;
    int facing;
    struct Actor *actor;
    char *ebc0;
    extern void OvlFunc_918_2009424(int);
    extern void __CheckPartyItem(int);
    extern int __Func_8091c7c(int, int);
    extern void __MapActor_RunScript(int, void *);
    extern void __MapActor_SetBehavior(int, void *);
    extern void __CutsceneEnd(void);

    flag3 = API_GetFlag(3);
    mask = 0xfe;
    ((struct Actor *)__MapActor_GetActor(3))->flags &= mask;
    API_Func_8092b08(3, 2);
    ((struct Actor *)__MapActor_GetActor(0))->flags &= mask;
    API_Func_8092b08(0, 2);

    __CheckPartyItem(0xb8);
    __PlaySound(0x11);
    __CutsceneStart();

    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);

    API_MapActor_SetPos(0, 0xa6 << 16, 0xa0 << 15);
    actor = __MapActor_GetActor(0);
    facing = 0xc0 << 8;
    actor->facing = facing;

    API_MapActor_SetPos(1, 0x94 << 16, 0xb4 << 15);
    actor = __MapActor_GetActor(1);
    actor->facing = facing;

    API_MapActor_SetPos(2, 0xb6 << 16, 0xb4 << 15);
    actor = __MapActor_GetActor(2);
    actor->facing = facing;

    if (flag3) {
        API_MapActor_SetPos(3, 0xa6 << 16, 0xd0 << 15);
        actor = __MapActor_GetActor(3);
        actor->facing = facing;
    }

    OvlFunc_918_2009424(0);
    __WaitFrames(10);

    ebc0 = *(char **)iwram_3001ebc;
    *(int *)(ebc0 + (0xe0 << 1)) = (0xe0 << 1) - 0xc0;
    *(int *)(ebc0 + (0xe0 << 1) + 8) = 0x30;

    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x14);

    API_Func_80933d4(0x13333, 0x2666);

    API_Func_80933f8(0xa8 << 16, -1, 0x98 << 16, 1);
    API_Func_8093530();
    API_CutsceneWait(10);
    __PlaySound(0x7b);

    API_Func_8010704(0x1a, 3, 1, 2, 10, 8);
    API_Func_80105d4(0x1a, 0x26, 1, 1, 10, 0x2b);
    __WaitFrames(4);
    API_Func_80105d4(0x1a, 0x25, 1, 2, 10, 0x2a);
    __WaitFrames(4);
    API_Func_80105d4(0x1a, 0x24, 1, 3, 10, 0x29);
    __WaitFrames(4);
    API_Func_80105d4(0x1a, 0x23, 1, 4, 10, 0x28);
    __WaitFrames(0x50);

    API_MessageID(0x14d3);
    API_ActorMessage_Wait(0x8009, 0, 0x14);

    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x14);

    API_Func_80933f8(0xa8 << 16, -1, 0xb4 << 15, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);

    OvlFunc_918_2009424(1);
    API_CutsceneWait(0x3c);
    __PlaySound(0x15);
    OvlFunc_918_2009424(4);
    API_ActorMessage_Wait(0x8009, 0, 0x14);

    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0x50);
    API_ActorMessage(0x8009, 0);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x8009, 0, 0x14);

    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0x8009, 0, 0x14);
    OvlFunc_918_2009424(0);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x8009, 0, 0x14);

    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_MapActor_Surprise(3, 0x102);
    API_MapActor_Surprise(2, 0x102);
    API_CutsceneWait(0x3c);

    API_Func_80925cc(1, 2);
    API_Func_8092adc(1, 0xe000, 10);
    API_Func_8092adc(0, 0x6000, 10);
    API_ActorMessage_Wait(0x8001, 0, 10);

    API_MapActor_DoAnim(2, 4);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_ActorMessage_Wait(0x8002, 0, 0x14);

    OvlFunc_918_2009424(0);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x8009, 0, 10);

    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);

    API_Func_8092adc(0, facing, 0);
    API_Func_8092adc(1, facing, 0);
    API_Func_8092adc(2, facing, 0x28);

    OvlFunc_918_2009424(4);
    API_ShowActorMessage_NoWait(0x8009, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0xa000, 0);

    if (__Func_8091c7c(0, 0) != 0) {
        API_MapActor_Emote(1, 0x103, 0x14);
        API_MapActor_SetAnim(1, 4);
        API_MessageID(0x14dd);
        API_ActorMessage(0x8001, 0);
        API_MapActor_Emote(2, 0x103, 10);
        API_MapActor_SetAnim(2, 3);
        API_ActorMessage(0x8002, 0);
    }

    API_CutsceneWait(0x14);
    OvlFunc_918_2009424(4);
    API_MessageID(0x14df);
    API_ActorMessage_Wait(0x8009, 0, 0x14);
    API_ActorMessage_Wait(0x8009, 0, 10);
    OvlFunc_918_2009424(0);
    API_CutsceneWait(0x14);

    API_Func_8091220(0x80 << 9, 0);
    API_Func_8091200(0x406218, 1);
    API_Func_8091254(0x14);
    __WaitFrames(0x28);

    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);

    API_Func_8092adc(1, facing, 0);
    API_Func_8092adc(2, facing, 0x14);
    API_CutsceneWait(0x14);

    Lm918_2dcc = 0;
    Lm918_2dc0.x = 0xa8 << 16;
    Lm918_2dc0.y = 0x80 << 14;
    Lm918_2dc0.z = 0xd0 << 14;
    API_StartTask(OvlFunc_918_200962c, 0xc8 << 4);
    API_CutsceneWait(0xdc);
    API_StopTask(OvlFunc_918_200962c);

    API_Func_8091200(0x80 << 9, 1);
    API_Func_8091254(0x14);
    __WaitFrames(0x28);
    OvlFunc_918_2009424(4);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0x8009, 0, 10);
    OvlFunc_918_2009424(0);
    API_ActorMessage(0x8009, 0);

    __MapActor_RunScript(8, gScript_918__02009e54);
    API_CutsceneWait(0x28);

    API_MapActor_Emote(1, 0x102, 0x3c);
    API_ActorMessage(0x8001, 0);
    API_MapActor_Emote(2, 0x102, 10);
    API_ActorMessage(0x8002, 0);

    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0xa000, 10);
    API_Func_8092adc(0, 0x4000, 10);

    API_Func_80925cc(1, 1);
    API_ActorMessage_Wait(0x8001, 0, 10);
    API_Func_80925cc(2, 1);
    API_ActorMessage_Wait(0x8002, 0, 10);

    if (flag3) {
        API_Func_80925cc(3, 1);
        API_ActorMessage_Wait(0x8003, 0, 10);
    }

    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);

    __MapActor_SetBehavior(1, gScript_918__02009ec8);
    if (flag3) {
        __MapActor_SetBehavior(3, gScript_918__02009ec8);
    }
    __MapActor_RunScript(2, gScript_918__02009ec8);
    API_CutsceneWait(0x14);

    ((struct Actor *)__MapActor_GetActor(0))->flags |= 1;
    API_SetFlag(0x844);
    API_StartTask(OvlFunc_918_2009244, 0xc8 << 4);
    __CutsceneEnd();
}
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_918_2008918(void);
extern void __WaitFrames(int);
extern int __GetFlag(int);

void OvlFunc_918_2008f58(int arg0) {
    int r6;
    int r5;

    if (arg0 && !__GetFlag(0x109))
        OvlFunc_918_2008918();

    __WaitFrames(1);

    if (__GetFlag(0x844)) {
        r6 = 10;
        __Func_80105d4(0x79, 0x22, 3, 1, 0x5d, r6);
        r5 = 0x1e;
        __Func_80105d4(0x2e, 0x26, 1, 1, r5, 0x2b);
        __Func_8010704(0, 0, 1, 2, r5, 9);
        __Func_8010704(0x1a, 3, 1, 2, r6, 8);
        __Func_80105d4(0x1a, 0x23, 1, 4, r6, 0x28);
    } else {
        int a = 10;
        int b = 8;
        __Func_8010704(0xb, b, 1, 2, a, b);
    }
}
extern unsigned char ewram_2001000[];
extern unsigned char iwram_3001e70[];
extern int Func_8000888(int, int);
extern void OvlFunc_918_2009224(void);
extern void OvlFunc_918_2009244(void);
extern void OvlFunc_918_2009424(int);
extern void OvlFunc_918_20097ec(void);
extern void OvlFunc_918_20098b8(void);
extern void __Func_8092950(int, int);
extern void __StartTask(void *, int);
extern void __MapTransitionIn(void);
extern unsigned char Lconst_2d[] __asm__(".Lconst_2d");
__asm__(".equ .Lconst_2d, 0x2d");

static inline void Func_80933f8_macro(int a, int b, int c, int d)
{
    __Func_80933f8(-a, -b, -c, d);
}

int TretTree_MapInit(void) {
    struct Actor *actor8;
    struct Actor *actor9;
    struct Actor *actor;
    char *state;
    short *door_ptr;
    short door;
    int target_actor_id;
    char *e70;
    char *e70_sub;

    actor8 = __MapActor_GetActor(8);
    *(void **)L2dd0 = ewram_2001000;
    OvlFunc_918_2009224();

    actor8->__unk55 = 0;
    actor8->pos.y = 0xfff60000;
    actor9 = __MapActor_GetActor(9);
    actor9->__unk55 = 0;
    actor9->pos.y = 0xfff60000;
    __Func_8092950(9, 15);
    OvlFunc_918_2009424(0);

    state = (char *)&gState;
    door_ptr = (short *)(state + (0xe1 << 1));
    if (*door_ptr != 19) {
        __StartTask(OvlFunc_918_2009244, 200 << 4);
    }

    if (API_GetFlag(0x844)) {
        API_MapActor_SetPos(9, 0, 0);
        API_MapActor_SetPos(8, 0, 0);
    }

    if (API_GetFlag(0x109)) {
        OvlFunc_918_20097ec();
    }

    e70 = *(char **)iwram_3001e70;
    e70_sub = e70 + (0x82 << 1);
    *(int *)(e70_sub + 8) += fx32_multiply(*(int *)(e70 + 0xec) + (0xa0 << 16), 0x1999);
    *(int *)(e70_sub + 12) += fx32_multiply(*(int *)(e70 + 0xf0) + (0x88 << 16), 0x1999);
    *(int *)(e70_sub + 16) = 0xe666;
    *(int *)(e70_sub + 20) = 0xe666;

    __SetFlag(0x201);
    __SetFlag(0x20d);
    __SetFlag(0x20f);
    __SetFlag(0x213);
    __WaitFrames(1);
    OvlFunc_918_2008f58(0);

    *(int *)(*(char **)(iwram_3001e70 + 0x4c) + (0xe0 << 1)) = (0xe0 << 1) + 0x42;
    door = *door_ptr;
    target_actor_id = *(int *)(state + ((0xe0 << 1) + 0x42 - 14));
    actor = __MapActor_GetActor(target_actor_id);

    if (door == 50 || door == 40 || door == 30 || door == 20) {
        __MapTransitionIn();
        __MapActor_SetAnim(target_actor_id, 0x1b);
        __Actor_SetSpriteFlags(__MapActor_GetActor(target_actor_id), 0);
        API_MapActor_Surprise(target_actor_id, 0x101);
        Func_80933f8_macro(1, 1, 1, 0);
        actor->__unk55 = 2;
        actor->pos.y = 200 << 15;
        actor->floorPos = 0xff600000;
        actor->gravity = 0x8000;
        __PlaySound(0xcc);
        __SetDestMap((int)Lconst_2d, door - 10);
        __CutsceneWait(20);
        actor->layer = 2;
        __Func_8092b08(target_actor_id, 3);
        __CutsceneWait(2);
        __MapActor_Surprise(target_actor_id, 0x100);
        __CutsceneWait(8);
    } else if (door == 10) {
        if (!API_GetFlag(0x109)) {
            OvlFunc_918_20098b8();
        }
    } else if (door == 19) {
        OvlFunc_918_2008f58(1);
    }

    return 0;
}

/* OvlFunc_918_2009224; inline DMA3: SAD=0x05000000 (palette RAM, built as
 * 0xa0<<19), DAD=*iwram_3001ed0, CNT=0x84000070 (DMA_ENABLE|32bit, 0x70 words
 * = 0x1c0 bytes). Uses the existing DMA3_COPY helper (stmia r3!,{r0,r1,r2}). */
#include "dma.h"
extern void *iwram_3001ed0;

void OvlFunc_918_2009224(void) {
    DMA3_COPY((void *)(0xa0 << 19), iwram_3001ed0, 0x1c0);
}

INCLUDE_ASM("asm/overlays/rom_7a5214/tret_tree/OvlFunc_918_2009244.s");
void OvlFunc_918_2009424(int arg0) {
    switch (arg0) {
        case 0:
            __MapActor_SetAnim(8, 1);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 3);
            break;
        case 2:
            __MapActor_SetAnim(8, 1);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 5);
            break;
        case 3:
            __MapActor_SetAnim(8, 1);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 4);
            break;
        case 4:
            __MapActor_SetAnim(8, 1);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 3);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 1);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 3);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 1);
            break;
        case 1:
            __MapActor_SetAnim(8, 1);
            break;
        case 5:
            __MapActor_SetAnim(8, 1);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 2);
            break;
        case 6:
            break;
        case 7:
            __MapActor_SetAnim(8, 6);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 8);
            break;
        case 9:
            __MapActor_SetAnim(8, 6);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 9);
            break;
        case 10:
            __MapActor_SetAnim(8, 6);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 10);
            break;
        case 11:
            __MapActor_SetAnim(8, 6);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 8);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 6);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 8);
            __WaitFrames(6);
            __MapActor_SetAnim(8, 6);
            break;
        case 8:
            __MapActor_SetAnim(8, 6);
            break;
        case 12:
            __MapActor_SetAnim(8, 6);
            break;
    }
    __WaitFrames(12);
}
extern void __vec3_translate(int, int, vec3_t *);
extern void __Func_8003f3c(int);
extern void __DeleteActor(struct Actor *);

void OvlFunc_918_20095ac(struct Actor *actor) {
    vec3_t v;

    if (actor->waveCounter <= 0x4f) {

        s16 unk;

        v.x = actor->prevPos.x;
        v.y = actor->prevPos.y;
        v.z = actor->prevPos.z;
        unk = actor->__unk66;
        __vec3_translate(actor->waveCounter << 16,
                         (actor->waveCounter * 3 << 8) + unk,
                         &v);
        actor->pos.x = v.x;
        actor->pos.y = v.y;
        actor->pos.z = v.z;
        if (actor->waveCounter <= 0x27) {
            actor->scale.x += (int)0xfffffae2;
            actor->scale.y += (int)0xfffffae2;
        }
        actor->waveCounter++;
    } else {
        __Func_8003f3c(actor->sprite->slot);
        __DeleteActor(actor);
    }
}
INCLUDE_ASM("asm/overlays/rom_7a5214/tret_tree/OvlFunc_918_200962c.s");

INCLUDE_ASM("asm/overlays/rom_7a5214/tret_tree/OvlFunc_918_20097ec.s");


extern void __StopTask(void (*fn)(void));
extern void OvlFunc_918_2009244(void);

void OvlFunc_918_200984c(void) {
    __StopTask(OvlFunc_918_2009244);
}


extern void OvlFunc_918_200985c(struct Actor *);
INCLUDE_ASM("asm/overlays/rom_7a5214/tret_tree/OvlFunc_918_200985c.s");
extern void __Func_800fe9c(void);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern int __cos(int);
extern int __sin(int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
extern void __Func_8012330(int, int, int);
extern void __Func_8012350(void);
extern void __CutsceneEnd(void);

static inline void Func_8012330_pos(int x, int y, int z)
{
    __Func_8012330(x << 11, y << 11, z << 9);
}

static inline void Func_8012330_neg(int x, int y, int z)
{
    __Func_8012330(-x, -y, z);
}


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

void OvlFunc_918_20098b8(void) {
    struct EffectData data;
    int v[3];
    unsigned int i;
    struct Actor *actor;

    __CutsceneStart();
    Func_80933f8_macro(1, 1, 1, 0);
    __Func_800fe9c();
    __WaitFrames(1);
    ((struct Actor *)__MapActor_GetActor(0))->pos.y = 0x82 << 16;
    ((struct Actor *)__MapActor_GetActor(0))->gravity = 0x80 << 8;
    ((struct Actor *)__MapActor_GetActor(0))->bounce = 0;
    ((struct Actor *)__MapActor_GetActor(0))->__unk55 = 0;
    __MapTransitionIn();
    __WaitMapTransition();
    __PlaySound(0xcc);
    ((struct Actor *)__MapActor_GetActor(0))->__unk55 = 3;
    __CutsceneWait(0x18);
    actor = (struct Actor *)__MapActor_GetActor(0);
    data.unk4 = 7;
    data.unk24 = (int)OvlFunc_918_200985c;
    data.unk8 = 0xcccc;
    data.unkc = 0xcccc;
    for (i = 0; i <= 16; i++) {
        v[0] = __cos(i << 12);
        v[1] = 0;
        v[2] = __sin(i << 12);
        v[0] += v[0] / 2;
        OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z, v[0], v[1], v[2], 0x1090001, &data);
    }
    __PlaySound(0xbc);
    API_MapActor_Surprise(0, 0x101);
    __MapActor_SetAnim(0, 0x16);
    Func_8012330_pos(0xa0, 0xa0, 0x80);
    Func_8012330_neg(1, 1, 0xe666);
    __Func_8012350();
    __MapActor_Surprise(0, 0x80 << 1);
    ((struct Actor *)__MapActor_GetActor(0))->gravity = 0x80 << 9;
    ((struct Actor *)__MapActor_GetActor(0))->bounce = 0x80 << 7;
    __CutsceneEnd();
}
INCLUDE_ASM("asm/overlays/rom_7a5214/tret_tree/tret_tree_data.s");