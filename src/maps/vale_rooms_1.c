/* rom_786f0c (overlay file 886): consolidated TU — vale_rooms_1 map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/vale_rooms_1/exports.s");

struct OvlActor_886 {
    char pad0[6];
    unsigned short angle;
    int x;
    int y;
    int z;
    int pad14;
    int unk18;
    int unk1c;
    char pad2[0x3c - 0x20];
    int unk3c;
    char pad3[0x5a - 0x40];
    unsigned char flags5a;
    char pad4[0x64 - 0x5b];
    short s64;
    short s66;
    struct OvlActor_886 *target;
};

extern int __atan2(int, int);

int OvlFunc_886_2008030(struct OvlActor_886 *actor)
{
    struct OvlActor_886 *target = actor->target;
    short diff;
    unsigned short angle;

    if (target != 0) {
        actor->flags5a &= 0xfe;
        angle = __atan2(target->z - actor->z, target->x - actor->x);
        diff = angle - actor->angle;
        if (diff != 0) {
            if (diff > 0x1000)
                diff = 0x1000;
            if (diff < -0x1000)
                diff = -0x1000;
            actor->angle += diff;
        }
    }
    return 1;
}

int OvlFunc_886_2008088(struct OvlActor_886 *obj) {
    obj->x += obj->s64 << 8;
    obj->y += obj->s66 << 8;
    obj->unk18 += 0x666;
    obj->unk1c += 0x666;
    obj->s64 += 5;
    obj->s66 -= 1;
    return 0;
}

extern unsigned char gOvl_02009478[];

unsigned int ValeRooms1_GetEntrances(void) {
    return (unsigned int)gOvl_02009478;
}

unsigned int ValeRooms1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char L1590[] __asm__(".Lm886_1590");
extern unsigned char L1568[] __asm__(".Lm886_1568");

unsigned int *ValeRooms1_GetExits(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)L1590;
    return (unsigned int *)L1568;
}

extern unsigned char L18b8[] __asm__(".Lm886_18b8");
extern unsigned char L1738[] __asm__(".Lm886_1738");
extern unsigned char L15b8[] __asm__(".Lm886_15b8");

unsigned int ValeRooms1_GetActors(void) {
    unsigned int r5;
    if (__GetFlag(0x87a)) {
        r5 = (unsigned int)L18b8;
    } else if (__GetFlag(0x815)) {
        r5 = (unsigned int)L1738;
    } else {
        r5 = (unsigned int)L15b8;
    }
    __Func_808b868(r5);
    return r5;
}

extern unsigned char L1ffc[] __asm__(".Lm886_1ffc");
extern unsigned char L1da4[] __asm__(".Lm886_1da4");
extern unsigned int gOvl_02009ac8;
extern unsigned int ActorCmd_ARRAY_918__02009c00;

unsigned int *ValeRooms1_GetEvents(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)&gOvl_02009ac8;
    if (__GetFlag(0x87a))
        return (unsigned int *)L1ffc;
    if (__GetFlag(0x815))
        return (unsigned int *)L1da4;
    return (unsigned int *)&ActorCmd_ARRAY_918__02009c00;
}

void OvlFunc_886_2008190(void)
{
  __CutsceneStart();
  __MessageID(0xf6d);
  API_MapActor_TurnToFaceActor(0, 0xf, 6);
  __Func_8093054(0xf, 0);
  __CutsceneEnd();
}

void OvlFunc_886_20081bc(void)
{
  __CutsceneStart();
  __MessageID(0xf73);
  API_MapActor_TurnToFaceActor(0, 0x13, 6);
  __Func_8093054(0x13, 0);
  __CutsceneEnd();
}

extern unsigned char ActorCmd_ARRAY_886__020092fc[];
extern void __ActorMessage_Wait(int, int, int);
extern void __Func_8091a58(int, int);

void OvlFunc_886_20081e8(void)
{
    int msg;

    __CutsceneStart();
    if (API_GetFlag(0x81b)) {
        __MessageID(0x11a6);
        API_ActorMessage(0x14, 0);
        API_Func_8092a1c(0x14, 0x10000, ActorCmd_ARRAY_886__020092fc);
    } else {
        msg = 0x11a4;
        __MessageID(msg);
        msg++;
        __ActorMessage_Wait(0x14, 0, 0x14);
        API_Func_801776c(msg, 1);
        __Func_8091a58(0xb4, 0);
        API_SetFlag(0x81b);
    }
    __CutsceneEnd();
}

void OvlFunc_886_2008258(void) {
    __CutsceneStart();
    __MessageID(0x11be);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_886_2008278(void) {
    __CutsceneStart();
    __MessageID(0x1c3d);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

extern int _MSG_1c40;

void OvlFunc_886_2008298(void)
{
  int new_var;
 do { __CutsceneStart(); new_var = (int) (&_MSG_1c40); __MessageID(new_var); } while (0);
  __ActorMessage(0x800b, 0);
  __CutsceneEnd();
}

extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __PlaySound(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int);
extern unsigned int iwram_3001ebc;

void OvlFunc_886_20082bc(int arg0)
{
    unsigned char *base;

    if (__GetFlag(0x834))
        __Func_8095214();
    __PlaySound(0x7b);
    base = (unsigned char *)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x209;
    *(int *)(base + 0x1c8) = 0x10;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(arg0);
}


void OvlFunc_886_2008308(void) {
    OvlFunc_886_20082bc(1);
}


void OvlFunc_886_2008314(void) {
    OvlFunc_886_20082bc(2);
}


void OvlFunc_886_2008320(void) {
    OvlFunc_886_20082bc(3);
}


void OvlFunc_886_200832c(void) {
    OvlFunc_886_20082bc(4);
}


void OvlFunc_886_2008338(void) {
    OvlFunc_886_20082bc(5);
}


void OvlFunc_886_2008344(void) {
    OvlFunc_886_20082bc(6);
}


void OvlFunc_886_2008350(void) {
    OvlFunc_886_20082bc(7);
}


void OvlFunc_886_200835c(void) {
    OvlFunc_886_20082bc(8);
}

extern unsigned char *iwram_3001ebc_arr[] __asm__("iwram_3001ebc");
extern unsigned int gState;
extern void __StartThunder(void);
extern void __Func_8095240(void);
extern void __WaitFrames(int);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __Func_8095268(void);
void OvlFunc_886_2008658(void);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_80118a8(int);
extern void __MapActor_SetPos(int, int, int);

int ValeRooms1_MapInit(void)
{
    int offset = 0xe0;
    unsigned char *base;
    unsigned char *p;
    int v;

    offset <<= 1;
    base = iwram_3001ebc_arr[0] + offset;
    offset += 0x49;
    *(int *)base = offset;

    if (__GetFlag(0x834)) {
        __MapActor_SetPos(8, 0, 0);
        __MapActor_SetPos(9, 0, 0);
        __MapActor_SetPos(10, 0, 0);
        __MapActor_SetPos(11, 0, 0);
        __MapActor_SetPos(12, 0, 0);
        __MapActor_SetPos(13, 0, 0);
        __MapActor_SetPos(14, 0, 0);
        __MapActor_SetPos(15, 0, 0);
        __MapActor_SetPos(16, 0, 0);
        __MapActor_SetPos(17, 0, 0);
        __MapActor_SetPos(18, 0, 0);
        __MapActor_SetPos(19, 0, 0);
        __MapActor_SetPos(20, 0, 0);
        __MapActor_SetPos(21, 0, 0);
        __MapActor_SetPos(22, 0, 0);
        __StartThunder();
        offset = 0x1f84;
        base = iwram_3001ebc_arr[3] + offset;
        offset = 1;
        *(short *)base = offset;
        __Func_8095240();
        __WaitFrames(30);
        __MapTransitionIn();
        __WaitMapTransition();
        __Func_8095268();
    }

    if (__GetFlag(0x87a)) {
        offset = 0xe1;
        offset <<= 1;
        if (*(short *)((char *)&gState + offset) == 6) {
            if (!__GetFlag(0x81d)) {
                OvlFunc_886_2008658();
            }
        }
        p = (unsigned char *)__MapActor_GetActor(10);
        p += 0x59;
        v = 0x80;
        v |= *p;
        *p = v;
    }

    offset = 0xe1;
    offset <<= 1;
    if (*(short *)((char *)&gState + offset) == 2 && __GetFlag(0x815)) {
        __MapActor_SetPos(13, 0xe3 << 17, 0x96 << 16);
        __Actor_SetSpriteFlags(__MapActor_GetActor(13), 0);
        __MapActor_SetAnim(13, 5);
        __Func_80118a8(4);
    }

    return 0;
}
void OvlFunc_886_20084dc(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    int angle = *(unsigned short *)(actor + 6);

    if ((angle + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(1, 0x15);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x87a)) {
            __MessageID(0x1c06);
            __Func_8093054(0x15, 0);
        } else {
            if (__GetFlag(0x815)) {
                __MessageID(0x11a2);
            } else {
                __MessageID(0xf53);
            }
            API_ActorMessage(0x15, 0);
        }
        __CutsceneEnd();
    }
}
extern unsigned char *__MapActor_GetActor(int);

void OvlFunc_886_200855c(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    int angle = *(unsigned short *)(actor + 6);

    if ((angle + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(2, 0x16);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x87a)) {
            __MessageID(0x1c09);
        } else if (__GetFlag(0x815)) {
            __MessageID(0x11a3);
        } else {
            __MessageID(0xf54);
        }
        API_ActorMessage(0x16, 0);
        __CutsceneEnd();
    }
}
void OvlFunc_886_20085d4(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    int angle = *(unsigned short *)(actor + 6);

    if ((angle + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(3, 0x14);
    } else if (__GetFlag(0x87a)) {
        __CutsceneStart();
        __MessageID(0x1c0a);
        API_ActorMessage(0x14, 0);
        __CutsceneEnd();
    } else if (__GetFlag(0x815)) {
        OvlFunc_886_20081e8();
    } else {
        __CutsceneStart();
        __MessageID(0xf55);
        API_ActorMessage(0x14, 0);
        __CutsceneEnd();
    }
}

static inline int API_ShowActorMessage_NoWait(int a0, int a1) {
    extern int __ShowActorMessage_NoWait(int, int);
    return __ShowActorMessage_NoWait(a0, a1);
}

void OvlFunc_886_20090c0(void);
extern unsigned char gScript_886__02009400[];
extern unsigned char gScript_886__02009310[];
extern void __MapActor_SetBehavior(int, void *);
extern void *__Func_8093554(void);
extern void __Func_8093530(void);
extern void __MapActor_RunScript(int, void *);
extern int __Func_8091c7c(int, int);
extern void __StartTask(void *, int);
extern void __StopTask(void *);
extern void __Func_8092b08(int, int);

void OvlFunc_886_2008658(void)
{
    struct OvlActor_886 *actor;
    void *actor_cmd;
    int zero;
    void (*task)(void);

    __CutsceneStart();
    API_Func_80933f8((-1), (-1), (-1), 0);
    API_WaitFrames(1);
    __Func_8092b08(3, 1);
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    API_MapActor_SetSpeed(1, 0x6666, 0x3333);
    API_MapActor_SetSpeed(2, 0x6666, 0x3333);
    API_MapActor_SetSpeed(3, 0x6666, 0x3333);
    API_MapActor_SetAnim(8, 5);
    API_MapActor_TravelToAnim(0, (0xca << 2), (0xfe << 1));
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x17), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x19), 0);
    ((unsigned char *)__MapActor_GetActor(0x17))[0x55] = (zero = 0);
    ((unsigned char *)__MapActor_GetActor(0x18))[0x55] = zero;
    ((unsigned char *)__MapActor_GetActor(0x19))[0x55] = zero;
    task = OvlFunc_886_20090c0;
    __StartTask(task, (0xc8 << 4));
    API_WaitFrames(1);
    *(int *)((char *)iwram_3001ebc + (0xe4 << 1)) = 0x20;
    __MapTransitionIn();
    __WaitMapTransition();
    API_MapActor_WaitMovement(0);
    API_MapActor_SetAnim(0, 1);
    actor = (struct OvlActor_886 *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, actor->x, actor->z);
    }
    actor = (struct OvlActor_886 *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, actor->x, actor->z);
    }
    actor = (struct OvlActor_886 *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(3, actor->x, actor->z);
    }
    API_MapActor_TravelToAnim(1, (0xc6 << 2), (0x80 << 2));
    API_MapActor_TravelToAnim(2, (0xce << 2), (0xfc << 1));
    API_MapActor_TravelToAnimWait(3, 0x332, (0x83 << 2));
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(2, 1);
    API_CutsceneWait(0xa);
    actor_cmd = ActorCmd_ARRAY_886__020092fc;
    API_Func_8092a1c(0, 0x1000a, actor_cmd);
    API_Func_8092a1c(1, 0x1000a, actor_cmd);
    API_Func_8092a1c(2, 0x1000a, actor_cmd);
    API_Func_8092a1c(3, 0x1000a, actor_cmd);
    API_CutsceneWait((0x96 << 1));
    ((unsigned char *)__Func_8093554())[0x55] = zero;
    API_Func_80933d4(0x1999, 0x333);
    API_Func_80933f8(0x3120000, 0, (0xd7 << 17), 1);
    API_CutsceneWait(0xf0);
    __MapActor_SetIdle(0xa);
    API_MapActor_Emote(0xa, (0x81 << 1), 0x50);
    API_MapActor_TravelToAnimWait(0xa, 0x333, 0x195);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(0xa, 4);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0xa, (0xd0 << 8), 0x14);
    API_MessageID(0x1c1e);
    API_ActorMessage_Wait(0x900a, 0, 0x14);
    __MapActor_SetIdle(0);
    __MapActor_SetIdle(1);
    __MapActor_SetIdle(2);
    __MapActor_SetIdle(3);
    API_MapActor_Emote(0xb, (0x80 << 1), 0x28);
    API_ActorMessage_Wait(0x200b, 0, 0x14);
    API_Func_80925cc(0xa, 2);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x900a, 0, 0xa);
    API_Func_8092adc(0xb, (0xa0 << 7), 0xa);
    API_ActorMessage_Wait(0x200b, 0, 0x28);
    API_Func_80925cc(0xa, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0x900a, 0, 0x14);
    API_MapActor_Emote(0, (0x81 << 1), 0x50);
    API_MapActor_Emote(0xb, (0x83 << 1), 0x28);
    API_ActorMessage_Wait(0x200b, 0, 0x28);
    API_Func_809259c(0xa, 2);
    API_MapActor_Emote(0xa, (0x81 << 1), 0x14);
    API_MapActor_SetAnim(0xa, 4);
    API_ActorMessage_Wait(0x900a, 0, 0xa);
    API_Func_809259c(0xb, 1);
    API_MapActor_DoAnim(0xb, 3);
    API_CutsceneWait(0x14);
    API_Func_809259c(0xa, 1);
    API_MapActor_DoAnim(0xa, 4);
    API_Func_809259c(0xb, 1);
    API_MapActor_DoAnim(0xb, 3);
    API_Func_809259c(0xa, 1);
    API_MapActor_DoAnim(0xa, 4);
    API_MapActor_Emote(9, 0x105, 0);
    API_Func_80925cc(9, 1);
    API_CutsceneWait(0x14);
    API_Func_8092adc(9, (0x80 << 5), 0x28);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(9, 3);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x4009, 0, 0x28);
    API_MapActor_SetAnim(0xb, 0);
    API_Func_80925cc(0xb, 2);
    API_ActorMessage_Wait(0x200b, 0, 0xa);
    API_MapActor_DoAnim(9, 4);
    API_Func_80925cc(9, 2);
    API_ActorMessage_Wait(0x4009, 0, 0xa);
    API_MapActor_Emote(0xa, (0x80 << 1), 0x14);
    API_Func_8092adc(0xa, (0xa0 << 7), 0x28);
    API_MapActor_DoAnim(0xa, 3);
    API_ActorMessage_Wait(0x400a, 0, 0xa);
    API_MapActor_DoAnim(9, 4);
    API_Func_8092adc(9, (0xd0 << 8), 0xa);
    API_MapActor_Jump(9, 2, 0);
    API_MapActor_SetAnim(9, 4);
    API_ActorMessage_Wait(0x4009, 0, 0xa);
    API_MapActor_Emote(0xb, 0x101, 0);
    API_MapActor_Emote(0xa, 0x101, 0x28);
    API_Func_8092adc(0xa, (0xd0 << 8), 0x50);
    API_Func_8092adc(0xa, (0xa0 << 7), 0x3c);
    API_Func_809259c(0xa, 2);
    API_Func_809259c(0xb, 2);
    API_Func_80931ec(0xa, 0xb, 6, 6, 6, 0xb, 0xc, 1, 7, 1, zero);
    API_CutsceneWait(0x14);
    API_Func_80933d4(0x19999, 0x3333);
    API_Func_80933f8(0x3090000, 0, (0xea << 17), 1);
    __Func_8093530();
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(1, 3);
    API_ActorMessage_Wait(0x1001, 0, 0x14);
    API_Func_80925cc(8, 2);
    __StopTask(task);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(8, 6);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0x4008, 0, 0x14);
    API_Func_80933f8(0x2ee0000, 0, 0x1c30000, 1);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0xb, (0xa0 << 7), 0);
    API_Func_8092adc(0xa, (0xa0 << 7), 0xa);
    API_Func_8092adc(8, (0x80 << 5), 0x28);
    API_MapActor_Emote(8, (0x80 << 1), 0x28);
    API_Func_8092adc(8, (0xc0 << 6), 0x14);
    API_Func_8092adc(8, (0x80 << 5), 0x14);
    API_Func_8092adc(8, (0xc0 << 6), 0x28);
    API_MapActor_DoAnim(8, 6);
    API_CutsceneWait(0x3c);
    API_MapActor_Jump(8, 6, 0);
    API_ActorMessage_Wait(0x4008, 0, 0x14);
    API_MapActor_SetSpeed(1, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(1, 0x315, 0x1d9);
    API_Func_8092adc(1, (0xe0 << 7), 0x14);
    API_MapActor_DoAnim(1, 3);
    API_ActorMessage_Wait(0x4001, 0, 0xa);
    API_Func_8092adc(8, (0x80 << 5), 0x14);
    API_MapActor_DoAnim(8, 3);
    API_ShowActorMessage_NoWait(0x4008, 0);
    API_Func_8092adc(0xa, (0xa0 << 7), 0);
    API_Func_8092adc(9, (0x80 << 5), 0);
    API_Func_8092adc(1, (0xc0 << 6), 0);
    API_Func_8092adc(2, (0xe0 << 7), 0);
    API_Func_8092adc(3, (0xb0 << 8), 0);
    if (__Func_8091c7c(0, 0) == 1) {
        ((unsigned short *)iwram_3001ebc)[0xec]++;
    }
    API_Func_80933f8(0x3090000, 0, (0xd6 << 17), 1);
    API_CutsceneWait(0x14);
    API_Func_80925cc(0xa, 2);
    API_ActorMessage(0xa, 0);
    API_MapActor_DoAnim(0xb, 4);
    API_CutsceneWait(0x14);
    API_MessageID(0x1c33);
    API_ActorMessage(0x200b, 0);
    API_Func_80933f8(0x3090000, 0, (0xea << 17), 1);
    API_CutsceneWait(0x14);
    API_Func_8092adc(1, (0xd0 << 8), 0x14);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(9, 4);
    API_Func_8092adc(9, (0xd0 << 8), 0xa);
    API_ActorMessage(0x4009, 0);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage(0x4008, 0);
    API_Func_8092adc(1, (0xe0 << 7), 0xa);
    API_MapActor_DoAnim(1, 3);
    API_Func_8092adc(9, (0x80 << 5), 0xa);
    API_MapActor_SetAnim(0xb, 3);
    API_MapActor_SetAnim(0xa, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0x14);
    API_Func_8092adc(1, (0xc0 << 6), 0x14);
    API_MapActor_Emote(1, (0x81 << 1), 0x50);
    API_Func_8092adc(1, (0xe0 << 7), 0x14);
    API_ActorMessage_Wait(0x4001, 0, 0x14);
    API_Func_8092adc(1, (0xc0 << 6), 0xa);
    API_Func_8092adc(0, 0, 0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0, (0x80 << 7), 0x14);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);
    API_Func_8092adc(1, (0x80 << 5), 0);
    API_Func_8092adc(0, (0xe0 << 8), 0);
    API_MapActor_SetSpeed(2, (0x80 << 9), (0x80 << 8));
    API_MapActor_TravelToAnimWait(2, 0x333, 0x1e9);
    API_Func_8092adc(2, (0xb0 << 8), 0x28);
    API_Func_80925cc(2, 2);
    API_ActorMessage_Wait(2, 0, 0x14);
    API_MapActor_DoAnim(2, 3);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_SetAnim(0xa, 3);
    API_MapActor_DoAnim(9, 3);
    ((unsigned char *)__MapActor_GetActor(3))[0x23] &= 0xfe;
    __Func_8092b08(3, 1);
    API_MapActor_SetSpeed(3, (0x80 << 9), (0x80 << 8));
    API_MapActor_TravelToAnimWait(3, 0x31a, (0x82 << 2));
    API_Func_8092adc(1, (0xa0 << 7), 0);
    API_Func_8092adc(0, (0xa0 << 8), 0);
    API_MapActor_TravelToAnimWait(3, (0xc4 << 2), (0xf8 << 1));
    API_Func_8092adc(3, (0x90 << 8), 0xa);
    ((unsigned char *)__MapActor_GetActor(3))[0x23] |= 1;
    API_ActorMessage_Wait(3, 0, 0x14);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_SetAnim(0xa, 3);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(0x14);
    API_Func_80933f8(0x3090000, 0, (0xd6 << 17), 1);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(0xb, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(0xb, 0x343, (0xc2 << 1));
    API_Func_8092adc(0xb, (0xa0 << 7), 0);
    API_MapActor_Emote(0xb, (0x84 << 1), 0x28);
    API_ActorMessage_Wait(0x200b, 0, 0x14);
    API_Func_80933f8(0x3090000, 0, (0xea << 17), 1);
    API_CutsceneWait(0x28);
    API_Func_8092adc(2, (0xe0 << 7), 0);
    API_Func_8092adc(3, (0xf0 << 8), 0x28);
    API_Func_8092adc(2, (0x90 << 8), 0);
    API_Func_8092adc(3, (0xd0 << 8), 0x14);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);
    API_Func_80925cc(0xa, 1);
    API_CutsceneWait(0x14);
    API_MapActor_SetAnim(0xa, 3);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    API_Func_8092adc(0, (0xc0 << 8), 0);
    API_Func_8092adc(1, (0xd0 << 8), 0);
    API_Func_8092adc(2, (0xb0 << 8), 0);
    API_Func_8092adc(3, (0xd0 << 8), 0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(2, (0x80 << 9), (0x80 << 8));
    actor_cmd = gScript_886__02009400;
    __MapActor_SetBehavior(1, actor_cmd);
    __MapActor_SetBehavior(2, actor_cmd);
    __MapActor_RunScript(3, actor_cmd);
    __MapActor_SetBehavior(0xa, gScript_886__02009310);
    API_MapActor_TravelToAnimWait(0xb, 0x345, (0xbc << 1));
    API_Func_8092adc(0xb, (0xd0 << 8), 0x14);
    API_SetFlag(0x81d);
    __CutsceneEnd();
}
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern unsigned int iwram_3001e40;
extern void __MapActor_SetBehavior(int, void *);
extern unsigned char gScript_886__02009440[];

void OvlFunc_886_20090c0(void)
{
    unsigned int mod = _umodsi3_RAM(iwram_3001e40, 180);
    int r6 = 0x17;
    struct OvlActor_886 *r5;
    struct OvlActor_886 *r0;
    int y;

    switch (mod) {
    case 10:
        break;
    case 20:
        r6 = 0x18;
        break;
    case 30:
        r6 = 0x19;
        break;
    default:
        return;
    }

    r5 = (struct OvlActor_886 *)__MapActor_GetActor(r6);
    if (r5 == 0)
        return;

    r0 = (struct OvlActor_886 *)__MapActor_GetActor(8);
    if (r0 != 0) {
        __MapActor_SetPos(r6, r0->x, r0->z);
    }

    r5->unk18 = 0x6666;
    r5->unk1c = 0x6666;
    y = r5->y + (0xc0 << 13);
    r5->y = y;
    r5->unk3c = y;
    r5->s64 = 0x19;
    r5->s66 = 0x80;
    __MapActor_SetBehavior(r6, gScript_886__02009440);
}
INCLUDE_ASM("asm/maps/vale_rooms_1/vale_rooms_1_data.s");

INCLUDE_ASM("asm/maps/vale_rooms_1/imports.s");
