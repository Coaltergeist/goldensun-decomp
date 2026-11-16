/* rom_7db0c8 (overlay file 954): consolidated TU — colosseum_final_1 map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

extern void OvlFunc_954_2008238();

extern unsigned char gOvl_0200c194[];

unsigned int ColosseumFinal1_GetEntrances(void) {
    return (unsigned int)gOvl_0200c194;
}

unsigned int ColosseumFinal1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c1dc[];

void *ColosseumFinal1_GetExits(void) {
    return (void *)gOvl_0200c1dc;
}
extern unsigned char gOvl_0200c1f4[];

void *ColosseumFinal1_GetActors(void) {
    return (void *)gOvl_0200c1f4;
}

extern unsigned char L441c[] __asm__(".Lm954_441c");
extern void __Func_8010788(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __MapActor_SetAnim(int, int);

void OvlFunc_954_200804c(void)
{
    switch (*(unsigned int *)L441c) {
    case 0x42:
        __Func_8010788(0x5c, 0x1f, 2, 2, 0x32, 0x26);
        __Func_8010788(0x5c, 0x1f, 2, 2, 0x36, 0x26);
        __MapActor_SetAnim(0x10, 0xa);
        break;
    case 0x3c:
        __Func_8010788(0x5c, 0x21, 2, 2, 0x32, 0x26);
        __Func_8010788(0x5c, 0x21, 2, 2, 0x36, 0x26);
        __Func_8010704(0x32, 0x19, 6, 1, 0x32, 0xc);
        __MapActor_SetAnim(0x10, 0xb);
        break;
    case 6:
        __Func_8010788(0x5c, 0x1f, 2, 2, 0x32, 0x26);
        __Func_8010788(0x5c, 0x1f, 2, 2, 0x36, 0x26);
        __MapActor_SetAnim(0x10, 0xa);
        break;
    case 0:
        __Func_8010788(0x5c, 0x1d, 2, 2, 0x32, 0x26);
        __Func_8010788(0x5c, 0x1d, 2, 2, 0x36, 0x26);
        __MapActor_SetAnim(0x10, 0xc);
        __Func_8010704(0x32, 0x18, 6, 1, 0x32, 0xc);
        *(unsigned int *)L441c = 0x78;
        break;
    }

    (*(unsigned int *)L441c)--;
}

void OvlFunc_954_2008134(void)
{
    *(int *)L441c = 0;
    __StopTask(OvlFunc_954_200804c);
    ((void (*)(void))OvlFunc_954_200804c)();
}

extern int __StartTask(void (*task)(void), unsigned int priority);

void OvlFunc_954_2008158(void)
{
    int v = 0x42;
    *(int *)L441c = v;
    __StartTask(OvlFunc_954_200804c, 0xc8 << 4);
}

void OvlFunc_954_2008178(void)
{
    int i = 0;

    API_WaitFrames(0xa);
    if (*(int *)L441c != 0x16) {
        do {
            API_WaitFrames(1);
            i++;
            if (i > 0x77) break;
        } while (*(int *)L441c != 0x16);
    }
}
extern struct Actor *CS954_Actor(int) __asm__("__MapActor_GetActor");
extern int __Func_8011f54(int, int, int);
extern void __SetFlagByte(int, int);

void OvlFunc_954_20081a8(void)
{
    struct Actor *actor;
    int res;
    int x;

    API_Func_8010704(0x1b, 0xd, 3, 1, 0x17, 0xc);
    actor = CS954_Actor(9);
    res = __Func_8011f54(0, actor->pos.x, actor->pos.z);
    if (actor->pos.y == 0 && res == 0) {
        actor->flags = 2;
        actor->__unk55 = 0;
        API_Func_8010704(0xe, 0xd, 1, 1, actor->pos.x >> 20, actor->pos.z >> 20);
    }
    actor = CS954_Actor(0xa);
    x = actor->pos.x >> 20;
    __SetFlagByte(0xc4 << 2, x);
    API_Func_8010704(0xe, 0xd, 1, 1, actor->pos.x >> 20, actor->pos.z >> 20);
}

extern void OvlFunc_common1_2060(void);
extern void OvlFunc_954_20081a8(void);

void OvlFunc_954_2008238(void)
{
	OvlFunc_common1_2060();
	OvlFunc_954_20081a8();
}

void OvlFunc_954_2008248(void)
{
  int new_var;
  int new_var2;
  new_var2 = 0x2f;
  new_var = 0xc;
  __Func_8010704(new_var2, 0x18, 1, 1, new_var2, new_var);
  __SetFlag(0x303);
}

extern void __SetFlag(int);
extern int __MapActor_GetActor();
#include "actor.h"

void __CutsceneStart(void);
void __Func_80933d4(int, int);
void __Func_80933f8(int, int, int, int);
void __Actor_SetAnim(struct Actor *, int);
void __Func_8093530(void);
void __Actor_TravelTo(struct Actor *, fx32, fx32, fx32);
void __Actor_WaitMovement(struct Actor *);
void __CutsceneWait(int);
void __Func_8010704(int, int, int, int, int, int);
void __CutsceneEnd(void);

void OvlFunc_954_2008270(void)
{
    struct Actor *actor1;
    struct Actor *actor2;
    int speed;
    int accel;
    int zero;

    int a;
    int b;

    __SetFlag(0x301);
    actor1 = __MapActor_GetActor(0xd);
    __CutsceneStart();
    __Func_80933d4(0x80 << 10, 0x80 << 7);
    __Func_80933f8(0x96 << 18, -1, 0xc8 << 16, 1);
    __Actor_SetAnim(actor1, 3);
    __Func_8093530();
    zero = 0;
    actor1->__unk55 = zero;
    speed = 0xcccc;
    accel = 0x6666;
    actor1->accel = accel;
    actor1->speed = speed;
    API_Actor_TravelTo(actor1, actor1->pos.x, 0x80000, actor1->pos.z);
    actor2 = __MapActor_GetActor(0xe);
    actor2->__unk55 = zero;
    actor2->speed = speed;
    actor2->accel = accel;
    API_Actor_TravelTo(actor2, actor2->pos.x, 0x200000, actor2->pos.z);
    __Actor_WaitMovement(actor2);
    __CutsceneWait(0x2d);
    a = 0x29;
    b = 0xc;
    __Func_8010704(0x2b, b, 1, 1, a, b);
    __CutsceneEnd();
}
extern u8 gState[];
extern void __PlaySound(int);

void OvlFunc_954_200833c(int actorId, int arg1, int arg2)
{
    struct Actor *actor1;
    struct Actor *actor2;
    int x;
    int z;
    u8 *state = gState;

    actor1 = (struct Actor *)__MapActor_GetActor(*(int *)(state + 0x1f4));
    actor2 = (struct Actor *)__MapActor_GetActor(actorId);
    __CutsceneStart();

    x = ((actor1->pos.x + (arg1 << 16)) & 0xfff00000) + 0x80000;
    z = ((actor1->pos.z + (arg2 << 16)) & 0xfff00000) + 0x80000;
    actor1->speed = 0x10000;
    actor1->accel = 0x8000;
    __Actor_TravelTo(actor1, x, actor1->pos.y, z);
    __Actor_SetAnim(actor1, 0x1b);

    x = ((actor2->pos.x + (arg1 << 16)) & 0xfff00000) + 0x80000;
    z = ((actor2->pos.z + (arg2 << 16)) & 0xfff00000) + 0x80000;
    actor2->speed = 0x10000;
    actor2->accel = 0x8000;
    __Actor_TravelTo(actor2, x, actor2->pos.y, z);

    if (arg1 < 0 || arg2 < 0) {
        __Actor_SetAnim(actor2, 4);
    } else {
        __Actor_SetAnim(actor2, 3);
    }

    __PlaySound(0xe2);
    __Actor_WaitMovement(actor1);
    __Actor_SetAnim(actor2, 2);
    __PlaySound(0x120);
    __CutsceneEnd();
}
extern u8 gState[];
extern void OvlFunc_954_200833c(int, int, int);

void OvlFunc_954_200842c(void)
{
    struct Actor *actor;
    int z;
    int val;
    u8 *state = gState;

    actor = (struct Actor *)__MapActor_GetActor(*(int *)(state + 0x1f4));
    z = actor->pos.z >> 20;
    val = -0x30;
    if (z <= 8) {
        val = 0x30;
    }
    __Func_8010704(0x43, 8, 3, 1, 0x40, z);
    OvlFunc_954_200833c(0x11, 0, val);
    actor = (struct Actor *)__MapActor_GetActor(0x11);
    z = actor->pos.z >> 20;
    __Func_8010704(0x40, 0x18, 3, 1, 0x40, z);
}
extern vu32 gKeyHeld;

void OvlFunc_954_2008490(void)
{
    struct Actor *actor;
    int x;
    int dir;
    int z;
    u8 *state = gState;

    actor = (struct Actor *)__MapActor_GetActor(*(int *)(state + 0x1f4));
    x = actor->pos.x >> 20;

    if (gKeyHeld & 0x20) {
        dir = -1;
    }
    if (gKeyHeld & 0x10) {
        dir = 1;
    }

    actor = (struct Actor *)__MapActor_GetActor(0x11);
    z = actor->pos.z >> 20;

    if (x == 0x3f) {
        if (z == 0xb) {
            return;
        }
        z = 0xa0;
    } else if (x == 0x43) {
        if (z == 0xb && dir == -1) {
            return;
        }
        z = 0x60;
    } else {
        if (z == 0xb) {
            z = 0x60;
        } else {
            z = 0xa0;
        }
        z = -z;
    }

    __Func_8010704(0x48, 9, 1, 3, x, 9);
    OvlFunc_954_200833c(0x12, z, 0);
    actor = (struct Actor *)__MapActor_GetActor(0x12);
    x = actor->pos.x >> 20;
    __Func_8010704(0x3f, 0x19, 1, 3, x, 9);
}
struct CS954_StateView {
    unsigned char beforeRoom[0x1c2];
    short room;
    unsigned char beforeActor[0x1f4 - 0x1c4];
    int actorID;
    unsigned char before22b[0x22b - 0x1f8];
    unsigned char unk22b;
};
extern struct CS954_StateView CS954_State __asm__("gState");
extern struct Actor *CS954_Actor(int) __asm__("__MapActor_GetActor");
extern unsigned char *CS954_Alloc(int, int) __asm__("__galloc_ewram");
extern void CS954_Camera(void *, struct Actor *) __asm__("__Camera_SetTarget");
static inline void CS954_Byte(unsigned char *p, int value) { *p = value; }

void OvlFunc_954_2008540(void)
{
    int actorID, flag;
    int speed, accel, initialAccel;
    struct Actor *leader, *actor;
    unsigned char *scene;
    actorID = CS954_State.actorID;
    leader = CS954_Actor(actorID);
    actor = CS954_Actor(12);
    API_SetFlag(0x302);
    API_CutsceneStart();
    API_MapActor_SetAnim(actorID, 8);
    API_CutsceneWait(6);
    actor->speed = 0x8000;
    initialAccel = 0x3333;
    actor->accel = initialAccel;
    API_PlaySound(0xef);
    __Actor_SetAnim(actor, 2);
    __Actor_TravelTo(actor, actor->pos.x - 0x300000, 0, actor->pos.z);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(actorID, 2);
    scene = CS954_Alloc(27, 0xccc);
    CS954_Camera(*(void **)(scene + 0x1e0), actor);
    API_MapActor_SetSpeed(actorID, 0x4ccc, initialAccel);
    __Actor_TravelTo(leader, leader->pos.x - 0x180000, 0, leader->pos.z);
    API_MapActor_WaitMovement(actorID);
    API_MapActor_SetAnim(actorID, 1);
    __Actor_WaitMovement(actor);
    __Actor_SetAnim(actor, 1);
    API_PlaySound(0x120);
    API_PlaySound(0xd5);
    API_CutsceneWait(15);
    API_CutsceneEnd();
    API_Func_8010704(0x25, 7, 1, 4, 0x22, 7);
    API_Func_8010704(0x24, 7, 1, 4, 0x25, 7);
    flag = API_GetFlag(0x301);
    if (flag) {
        API_CutsceneStart();
        API_Func_80933d4(0x20000, 0x4000);
        API_Func_80933f8(0x2280000, -1, 0xc80000, 1);
        API_Func_8093530();
        API_Func_80105d4(96, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(3);
        API_Func_80105d4(97, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(3);
        API_Func_80105d4(98, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(3);
        API_Func_80105d4(99, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(3);
        API_Func_80105d4(100, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(15);
        API_CutsceneEnd();
    } else {
        API_SetFlag(0x301);
        API_CutsceneStart();
        API_Func_80933d4(0x20000, 0x4000);
        API_Func_80933f8(0x2580000, -1, 0xc80000, 1);
        API_Func_8093530();
        actor = CS954_Actor(13);
        CS954_Byte(&actor->__unk55, flag);
        accel = 0x6666;
        actor->accel = accel;
        speed = 0xcccc;
        actor->speed = speed;
        __Actor_TravelTo(actor, actor->pos.x, 0x80000, actor->pos.z);
        __Actor_SetAnim(actor, 3);
        API_Func_80105d4(96, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(3);
        API_Func_80105d4(97, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(3);
        API_Func_80105d4(98, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(3);
        API_Func_80105d4(99, 0x1d, 1, 3, 0x22, 0x26);
        API_CutsceneWait(3);
        API_Func_80105d4(100, 0x1d, 1, 3, 0x22, 0x26);
        actor = CS954_Actor(14);
        CS954_Byte(&actor->__unk55, flag);
        actor->accel = accel;
        actor->speed = speed;
        __Actor_TravelTo(actor, actor->pos.x, 0x200000, actor->pos.z);
        __Actor_WaitMovement(actor);
        API_CutsceneWait(15);
        API_CutsceneEnd();
        API_Func_8010704(0x2b, 12, 1, 1, 0x29, 12);
    }
}


void OvlFunc_954_2008830(void) {
    __SetFlag(0xc0 << 2);
}

extern unsigned char Lconst_8f[] __asm__(".Lconst_8f");
__asm__(".equ .Lconst_8f, 0x8f");
extern void OvlFunc_common1_16f8(void);
extern int OvlFunc_common1_1814(int, int);
extern void OvlFunc_common1_1708(void);
extern void __StartMapBattle(int, int);
extern void __Func_8091f90(int, int);
extern void __Func_8091fa8(int, int);

void OvlFunc_954_2008840(void)
{
    int val;
    int i;
    int stage;

    OvlFunc_common1_16f8();
    API_CutsceneStart();
    val = OvlFunc_common1_1814(0x78, 0x7f);
    OvlFunc_common1_1708();
    stage = 0;
    for (i = 0; i < 10; i++) {
        API_MapActor_WaitScript(8);
    }
    API_MapActor_SetSpeed(8, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnim(8, 0xa5 << 3, 0xc0);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0, 0xa1 << 3, 0xc0);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_TurnToFaceActor(0, 8, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    API_MapActor_SetSpeed(8, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnim(0, 0xa2 << 3, 0xc0);
    API_MapActor_TravelToAnimWait(8, 0xa4 << 3, 0xc0);
    API_MapActor_SetAnim(0, 0x10);
    API_MapActor_SetAnim(8, 9);
    API_CutsceneWait(10);
    __StartMapBattle(0x48, stage - val + 1);
    do {
        CS954_State.unk22b = 3;
    } while (0);
    __Func_8091f90((int)Lconst_8f, 4);
    __Func_8091fa8((int)Lconst_8f, 5);
    API_SetFlag(0x8d << 1);
}

extern int OvlFunc_common1_21c8(void);

void OvlFunc_954_2008954(void)
{
	if (OvlFunc_common1_21c8() == 0)
		__Func_8093c00();
	else
		OvlFunc_954_2008238();
}

extern unsigned char gOvl_0200c420[];

void *ColosseumFinal1_GetEvents(void) {
    return (void *)gOvl_0200c420;
}

extern void __DeleteFieldActor(int);
extern void __Func_807808c(int);
extern void OvlFunc_common1_fac(int);

void OvlFunc_954_2008974(int arg0)
{
    __DeleteFieldActor(0x18);
    __DeleteFieldActor(0x19);
    __Func_807808c(1);
    API_CutsceneStart();
    API_MapActor_SetPos(8, 0xa5 << 19, 0xc0 << 16);
    API_MapActor_SetPos(0, 0xa1 << 19, 0xc0 << 16);
    API_MapActor_Face(8, 0x80 << 7, 0);
    API_MapActor_Face(0, 0x80 << 7, 0);
    if (arg0 < 0) {
        API_MapActor_SetAnim(8, 0xa);
        API_MapActor_SetAnim(0, 0x23);
    } else {
        API_MapActor_SetAnim(8, 8);
        API_MapActor_SetAnim(0, 0x1c);
    }
    API_WaitFrames(1);
    API_Func_80933f8(0xa3 << 19, 0, 0x80 << 16, 0);
    OvlFunc_common1_fac(arg0);
    API_CutsceneEnd();
}


void OvlFunc_954_2008a10(int id) {
    int res;
    int a;
    int b;

    res = __MapActor_GetActor(id);
    if (res != 0) {
        a = (*(int *)((char *)res + 8) >> 19) - 0x5e;
        b = *(int *)((char *)res + 0x10) >> 19;
        if ((unsigned int)a <= 1) {
            if (b > 0x17) {
                if (b <= 0x1a) {
                    *(unsigned char *)((char *)res + 0x22) = 1;
                }
            }
        }
    }
}

extern unsigned char Lconst_e4[] __asm__(".Lconst_e4");
__asm__(".equ .Lconst_e4, 0xe4");
extern void *iwram_3001ebc;
extern int __GetFlagByte(int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern int OvlFunc_common1_1608(int, int);
extern int OvlFunc_common1_1ecc(int, int, int, int, int, int, int);
extern void OvlFunc_common1_78(int);
extern void OvlFunc_common1_0(void);
extern void OvlFunc_common1_ea0(int);
extern void __MapActor_SetExtra(int, int);
extern void OvlFunc_common1_1fb4(int);
extern void OvlFunc_common1_148(void);
extern void OvlFunc_954_2008db8(int);
extern void OvlFunc_common1_488(void);

static inline void CS954_Tiles(int x, int y, int width, int height, int destX, int destY)
{
    extern void __Func_8010788(int, int, int, int, int, int);
    __Func_8010788(x, y, width, height, destX, destY);
}

int ColosseumFinal1_MapInit(void)
{
    struct Actor *actor;
    int res;
    int x;
    int z;

    *(int *)((char *)iwram_3001ebc + 0x1c0) = 0;
    API_SetFlag(0xa2 << 1);

    actor = CS954_Actor(9);
    res = __Func_8011f54(0, actor->pos.x, actor->pos.z);
    if (actor->pos.y == 0 && res == 0) {
        actor->flags = 2;
        actor->__unk55 = 0;
        API_Func_8010704(0xe, 0xd, 1, 1, actor->pos.x >> 20, actor->pos.z >> 20);
    }

    x = __GetFlagByte(0xc4 << 2);
    if (x == 0) {
        x = 0x19;
    }

    actor = CS954_Actor(0xa);
    actor->pos.x = (x << 20) + 0x80000;
    actor->__unk55 = 0;
    actor->flags = 2;
    API_Func_8010704(0xe, 0xd, 1, 1, x, 0xc);

    API_StartTask(OvlFunc_954_200804c, 0xc8 << 4);

    actor = CS954_Actor(0xf);
    actor->layer = 1;
    if (API_GetFlag(0x303)) {
        __Actor_SetAnim(actor, 4);
        __Actor_SetSpriteFlags(actor, 0);
        actor->collision = 0;
        actor->flags = 3;
        API_Func_8010704(0x2f, 0x18, 1, 1, 0x2f, 0xc);
    }

    actor = CS954_Actor(0x11);
    z = actor->pos.z >> 20;
    CS954_Byte(&actor->__unk55, 0);
    actor->flags = 2;
    API_Func_8010704(0x40, 0x18, 3, 1, 0x40, z);

    actor = CS954_Actor(0x12);
    z = actor->pos.x >> 20;
    CS954_Byte(&actor->__unk55, 0);
    actor->flags = 2;
    API_Func_8010704(0x3f, 0x19, 1, 3, z, 9);

    if (API_GetFlag(0x302)) {
        API_Func_8010704(0x25, 7, 1, 4, 0x22, 7);
        API_Func_8010704(0x24, 7, 1, 4, 0x25, 7);
        API_Func_80105d4(0x64, 0x1d, 1, 3, 0x22, 0x26);
    }

    actor = CS954_Actor(0xd);
    if (API_GetFlag(0x301)) {
        API_Func_8010704(0x2b, 0xc, 1, 1, 0x29, 0xc);
        actor->__unk55 = 0;
        actor->accel = 0x6666;
        actor->speed = 0xcccc;
        actor->pos.y = 0x80000;
        __Actor_SetAnim(actor, 3);
    } else {
        __Actor_SetAnim(actor, 2);
    }

    CS954_Actor(0xe)->flags = 2;

    OvlFunc_common1_1608(0x18, 0x78);
    OvlFunc_common1_1608(0x19, 0x7f);

    switch (CS954_State.room) {
    case 1:
        OvlFunc_common1_1ecc(0, 8, 4, 0xa3 << 19, 0xc0 << 16, 0x18, 0x19);
        CS954_Tiles(0x7f, 0, 1, 2, 0x13, 2);
        __DeleteFieldActor(0x13);
        __DeleteFieldActor(0x14);
        __DeleteFieldActor(0x15);
        __DeleteFieldActor(0x16);
        __DeleteFieldActor(0x17);
        if (!API_GetFlag(0x109)) {
            API_PlaySound(0x11);
            OvlFunc_common1_78(0);
            OvlFunc_common1_0();
            OvlFunc_954_2008a10(1);
            OvlFunc_954_2008a10(2);
            OvlFunc_954_2008a10(3);
            OvlFunc_common1_ea0(1);
        }
        __MapActor_SetExtra(1, 0);
        __MapActor_SetExtra(2, 0);
        __MapActor_SetExtra(3, 0);
        OvlFunc_common1_1fb4((int)Lconst_e4);
        break;
    case 2:
        API_StartTask(OvlFunc_common1_148, 0xc8 << 4);
        __DeleteFieldActor(0x18);
        __DeleteFieldActor(0x19);
        if (!API_GetFlag(0x109)) {
            OvlFunc_common1_0();
            OvlFunc_common1_78(1);
            OvlFunc_common1_ea0(0);
        }
        break;
    case 3:
        if (!API_GetFlag(0x109)) {
            OvlFunc_954_2008db8(0x13);
            OvlFunc_common1_488();
        }
        break;
    case 4:
        OvlFunc_954_2008974(1);
        API_Func_8091e9c(4);
        break;
    case 5:
        OvlFunc_954_2008974(-1);
        API_Func_8091e9c(5);
        break;
    }

    return 0;
}

static inline void Colosseum954_Half(unsigned short *field, int value) { *field = value; }

void OvlFunc_954_2008db8(int speaker)
{
    extern int __Func_8093054(int, int);
    extern int __MapActor_GetActor(int);
    int originX;
    int originZ;
    int flagValue1;
    int flagValue2;
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(speaker);
    originX = (int)(*(short *)((char *)actor + 0xa));
    originZ = (int)(*(short *)((char *)actor + 0x12));
    API_CutsceneStart();
    API_MapActor_SetSpeed(speaker, 0x10000, 0x8000);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    API_MapActor_SetPos(0, ((unsigned int)originX << 16), (((unsigned int)originZ << 16) + 0xffd00000));
    API_MapActor_SetPos(1, (((unsigned int)originX << 16) + 0xfff00000), (0xffd80000 + ((unsigned int)originZ << 16)));
    API_MapActor_SetPos(2, (((unsigned int)originX << 16) + 0x100000), (0xffd80000 + ((unsigned int)originZ << 16)));
    API_MapActor_SetPos(3, ((unsigned int)originX << 16), (((unsigned int)originZ << 16) + 0xffe00000));
    API_MapActor_SetPos(speaker, ((unsigned int)originX << 16), (((unsigned int)originZ << 16) + 0xffb00000));
    actor = (struct Actor *)__MapActor_GetActor(0);
    Colosseum954_Half((unsigned short *)&actor->facing, 0xc000);
    API_SetCameraTarget(0, 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_MessageID(0x20cb);
    API_ActorMessage(speaker, 0);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage(3, 0);
    API_Func_809259c(speaker, 3);
    API_ActorMessage(speaker, 0);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_ActorMessage(2, 0);
    API_MapActor_Face(speaker, 2, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(speaker, 3);
    API_ActorMessage(speaker, 0);
    API_MapActor_Emote(1, 0x101, 0x3c);
    API_ActorMessage(1, 0);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage(3, 0);
    API_MapActor_Emote(speaker, 0x102, 0x3c);
    flagValue1 = __Func_8093054(speaker, 0);
    if (flagValue1 == 0) {
        do {
            API_MessageID(0x20d5);
            API_MapActor_SetAnim(2, 3);
            API_CutsceneWait(2);
            API_MapActor_SetAnim(1, 3);
            API_CutsceneWait(2);
            API_MapActor_SetAnim(3, 3);
            API_CutsceneWait(1);
            API_MapActor_DoAnim(0, 3);
            API_MapActor_DoAnim(speaker, 3);
            API_ActorMessage(speaker, 0);
            API_Func_8092adc(speaker, 0xa000, 0);
            API_CutsceneWait(20);
            API_ActorMessage(speaker, 0);
            API_Func_80933d4(0x30000, 0x6000);
            API_Func_80933f8(0x1380000, -1, 0x680000, 1);
            API_Func_8093530();
            API_ActorMessage(speaker, 0);
            API_Func_80933d4(0x18000, 0x3000);
            API_Func_80933f8(0x3080000, -1, 0x680000, 1);
            API_ActorMessage(speaker, 0);
            API_Func_8093530();
            API_ActorMessage(speaker, 0);
            API_Func_80933d4(0x30000, 0x6000);
            API_Func_80933f8(0x4d80000, -1, 0xa80000, 1);
            API_Func_8093530();
            API_MapActor_Face(speaker, 0x6000, 0);
            API_ActorMessage(speaker, 0);
            API_Func_80933f8(0x5180000, -1, 0xa80000, 1);
            API_Func_8093530();
            API_MapActor_Face(speaker, 0, 0);
            API_ActorMessage(speaker, 0);
            API_ActorMessage(speaker, 0);
            API_ActorMessage(speaker, 0);
            API_SetCameraTarget(0, 0);
            API_Func_80925cc(speaker, 2);
            flagValue2 = __Func_8093054(speaker, 0);
        } while (flagValue2 != 0);
        API_Func_80925cc(speaker, 2);
        API_MessageID(0x20d4);
        API_ActorMessage(speaker, 0);
    }
    API_MessageID(0x20e1);
    API_Func_80925cc(speaker, 2);
    API_ActorMessage(speaker, 0);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0, 0);
    API_Func_8092adc(2, 0x8000, 0);
    API_Func_80925cc(1, 2);
    API_ActorMessage(1, 0);
    API_Func_80925cc(2, 2);
    API_ActorMessage(2, 0);
    API_MapActor_DoAnim(3, 3);
    API_ActorMessage(3, 0);
    API_MapActor_SetAnim(3, 3);
    API_CutsceneWait(1);
    API_MapActor_SetAnim(1, 3);
    API_CutsceneWait(2);
    API_MapActor_SetAnim(2, 3);
    API_CutsceneWait(1);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(1, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_SetAnim(2, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_SetAnim(3, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_TravelToAnimWait(speaker, (originX + -16), (originZ + -0x40));
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_TravelToAnimWait(speaker, (originX + -16), (originZ + -16));
    API_MapActor_TravelToAnimWait(speaker, originX, originZ);
    API_Func_8092adc(speaker, 0xc000, 10);
    API_CutsceneEnd();
}
extern void OvlFunc_common1_2c4(void);
extern int OvlFunc_common1_4cc();
extern int OvlFunc_common1_1078(int, int, int);
extern int OvlFunc_common1_15b8(int, int, int);
extern void OvlFunc_common1_1314(int);
extern void OvlFunc_common1_1254(int);
extern void OvlFunc_common1_588();
extern int OvlFunc_common1_5e4();
extern int OvlFunc_common1_1490(int, int, int);
extern int OvlFunc_common1_14f4(int, int, int);
extern void OvlFunc_common1_1550(void);
extern int __Func_8092adc(int, int, int);
extern void __MessageID(int);
extern void __ActorMessage(void *, int);
extern void __WaitFrames(int);
extern void __SetCameraTarget(int, int);

void OvlFunc_954_2009214(int arg0)
{
    int result;

    if (CS954_State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc(arg0, 1);
    if (result == 0) {
        API_MessageID(0x208c);
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0xa4 << 17, -1, 0xa8 << 16, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0x118, 0xc8);
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        API_MapActor_TravelToAnimWait(0, 0x168, 0xc8);
        API_CutsceneWait(0x1e);
        API_MapActor_Emote(0, 0x102, 0x3c);
        API_ActorMessage(arg0, 0);
        API_MapActor_TravelToAnimWait(0, 0x138, 0xc8);
        API_CutsceneWait(0x1e);
        API_Func_8092adc(0, 0xc0 << 8, 0xa);
        API_MapActor_Emote(0, 0x106, 0x3c);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        OvlFunc_common1_15b8(0, 0x128, 0xb8);
        OvlFunc_common1_15b8(0, 0x128, 0x98);
        OvlFunc_common1_15b8(0, 0x138, 0x98);
        API_Func_8092adc(0, 0x80 << 7, 0xf);
        OvlFunc_common1_2060();
        OvlFunc_common1_1314(0);
        OvlFunc_common1_2060();
        OvlFunc_common1_1314(0);
        API_MapActor_SetSpeed(0, 0xc0 << 9, 0xc0 << 8);
        API_MapActor_TravelToAnimWait(0, 0x130, 0xb8);
        API_MapActor_TravelToAnimWait(0, 0x128, 0xc0);
        API_MapActor_TravelToAnimWait(0, 0x128, 0xc8);
        API_Func_8092adc(0, 0, 0xf);
        OvlFunc_common1_2060();
        OvlFunc_common1_1314(0);
        OvlFunc_common1_2060();
        OvlFunc_common1_1314(0);
        API_MapActor_SetAnim(0, 1);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        API_MapActor_SetPos(9, 0x9c << 17, 0xa8 << 16);
        OvlFunc_common1_588(arg0, 1);
    } else if (result == 1) {
        API_MessageID(0x208b);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(result, arg0, 1);
    API_CutsceneEnd();
}

void OvlFunc_954_20093e4(void *arg0)
{
    int result;

    if (CS954_State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    result = OvlFunc_common1_4cc(arg0, 2);
    if (result == 0) {
        __MessageID(0x2090);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0x94 << 18, -1, 0xf0 << 15, 1);
        __Func_8093530();
        __CutsceneWait(0x3c);
        __Func_80933d4(0xc0 << 9, 0xc0 << 6);
        API_Func_80933f8(0x98 << 18, -1, 0xd8 << 16, 1);
        __Func_8093530();
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x38, 0x40, 0);
        __CutsceneWait(0x3c);
        OvlFunc_common1_14f4(0xa0, 0x60, 0xa);
        __CutsceneWait(0x46);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        __WaitFrames(2);

        {
            struct Actor *a = CS954_Actor(0xd);
            a->__unk55 = result;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x80 << 12, a->pos.z);
        }

        {
            struct Actor *a = CS954_Actor(0xe);
            a->__unk55 = result;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x80 << 14, a->pos.z);
            __Actor_WaitMovement(a);
            __CutsceneWait(0x2d);
        }

        {
            struct Actor *a = CS954_Actor(0xd);
            a->__unk55 = result;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0xc0 << 13, a->pos.z);
        }

        {
            struct Actor *a = CS954_Actor(0xe);
            a->__unk55 = result;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0, a->pos.z);
            __Actor_WaitMovement(a);
            __CutsceneWait(0xf);
        }

        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x38, 0x40, 0);
        __CutsceneWait(0x1e);
        OvlFunc_common1_14f4(0xa0, 0x60, 0xa);
        __CutsceneWait(0x28);
        OvlFunc_common1_14f4(0x38, 0x40, 0xa);
        __CutsceneWait(0x46);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        __WaitFrames(2);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 2);
    } else if (result == 1) {
        __MessageID(0x208f);
        __ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(result, arg0, 2);
    __CutsceneEnd();
}

void OvlFunc_954_20095e0(int arg0)
{
    int res;

    if (CS954_State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    res = OvlFunc_common1_4cc(arg0, 3);
    if (res == 0) {
        API_MessageID(0x2095);
        OvlFunc_954_2008134();
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0xd2 << 18, -1, 0xd8 << 16, 1);
        API_Func_8093530();
        API_ActorMessage(arg0, 0);
        OvlFunc_954_2008158();
        API_CutsceneWait(0x3c);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1078(0, 0xb8 << 2, 0xc8);
        __Func_8092adc(0, 0, 0);
        OvlFunc_954_2008178();
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        API_MapActor_TravelToAnimWait(0, 0xcc << 2, 0xc8);
        API_CutsceneWait(0x1e);
        API_MapActor_Emote(0, 0x105, 0x3c);
        API_ActorMessage(arg0, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 3);
    } else if (res == 1) {
        API_MessageID(0x2094);
        API_ActorMessage(arg0, 0);
    }
    OvlFunc_common1_5e4(res, arg0, 3);
    API_CutsceneEnd();
}

void OvlFunc_954_20096ec(int actor)
{
    extern int CS954_Call_833c(int, int, int) __asm__("OvlFunc_954_200833c");
    int result;

    if (CS954_State.room == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    API_CutsceneStart();
    result = OvlFunc_common1_4cc(actor, 4);
    if (result == 0) {
        API_MessageID(0x2099);
        API_Func_80933d4(0xc0 << 10, 0xc0 << 7);
        API_Func_80933f8(0x88 << 19, -1, 0xa8 << 16, 1);
        API_Func_8093530();
        API_ActorMessage(actor, 0);
        OvlFunc_common1_1490(0x78, 0x48, 0);
        API_ActorMessage(actor, 0);
        OvlFunc_common1_1550();
        API_CutsceneWait(0xf);
        OvlFunc_common1_1078(0, 0x3d8, 0xc8);
        API_Func_8092adc(0, 0, 0xa);
        API_ActorMessage(actor, 0);
        API_Func_8092adc(0, 0x4000, 0x1e);
        API_MapActor_Emote(0, 0x106, 0x3c);
        API_MapActor_SetSpeed(0, 0x18000, 0xc000);
        OvlFunc_common1_15b8(0, 0x3e8, 0xc0);
        OvlFunc_common1_15b8(0, 0x3e8, 0xb0);
        OvlFunc_common1_15b8(0, 0x3f8, 0xa8);
        API_CutsceneWait(0xf);
        CS954_Call_833c(0x12, 0xa0, 0);
        API_Func_80933f8(0x88 << 19, -1, 0xa8 << 16, 1);
        API_MapActor_SetAnim(0, 1);
        API_CutsceneWait(0xa);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x4a8, 0xa8);
        API_CutsceneWait(0xa);
        API_Func_8092adc(0, 0x8000, 0x1e);
        API_MapActor_Emote(0, 0x102, 0x3c);
        API_ActorMessage(actor, 0);
        OvlFunc_common1_1254(0);
        API_SetCameraTarget(0, 0);
        API_MapActor_SetPos(0x12, 0xfe << 18, 0xa8 << 16);
        OvlFunc_common1_588(actor, 4);
    } else if (result == 1) {
        API_MessageID(0x2098);
        API_ActorMessage(actor, 0);
    }
    OvlFunc_common1_5e4(result, actor, 4);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/colosseum_final_1/colosseum_final_1_data.s");
