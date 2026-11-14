/* rom_7f6e64 (overlay file 969): consolidated TU — venus_lighthouse_aerie map overlay. */

#include "nonmatching.h"
#include "actor.h"
#include "api.h"

extern struct Actor *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(void *, int);

extern void OvlFunc_969_200a11c();

extern unsigned int __Random(void);
extern int _umodsi3_RAM(unsigned int, unsigned int);

int OvlFunc_969_2008314(struct Actor *actor)
{
    switch (actor->waveCounter) {
    case 6:
        actor->scale.x += -0x2000;
        actor->scale.y += 0x1000;
        break;
    case 4:
        actor->scale.x += 0x1000;
        actor->scale.y += -0x800;
        break;
    case 2:
        actor->scale.x += 0x800;
        actor->scale.y += -0x400;
        break;
    case 0:
        actor->scale.x += 0x800;
        actor->scale.y += -0x400;
        actor->waveCounter = _umodsi3_RAM(__Random(), 0x50) + 0x50;
        break;
    }
    actor->waveCounter--;
    return 1;
}
void OvlFunc_969_20083a0(struct Actor *a)
{
    extern int _divsi3_RAM(int, int);
    int vx = a->bounce;
    int vy, vz;
    a->pos.x += vx;
    vy = a->gravity;
    a->pos.y += vy;
    vz = a->__unk4C;
    a->pos.z += vz;
    a->bounce = vx - _divsi3_RAM(vx, 0x16);
    a->__unk4C = vz - _divsi3_RAM(vz, 0x14);
    a->scale.x += a->speed;
    a->scale.y += a->accel;
    a->sprite->rotation += (u16)a->waveCounter;
}

void OvlFunc_969_2008400(unsigned char *p)
{
    unsigned char *q;
    unsigned short h;
    int a;
    int b;

    q = *(unsigned char **)(p + 0x50);
    a = 0xffff;
    h = *(unsigned short *)(q + 0x1e);
    if ((int)((h + a) << 16) < 0) {
        b = 0xfffff600;
        *(unsigned short *)(q + 0x1e) = h + b;
    }
}

extern unsigned int __Random(void);

int OvlFunc_969_2008424(struct Actor *actor)
{
    s16 *timer;

    timer = (s16 *)&actor->__unk66;
    if (*timer == 0) {
        actor->facing += (__Random() * 0x8000) >> 16;
        *timer = (__Random() * 80) >> 16;
    }
    if (*timer != 0) {
        *timer -= 1;
    }
    return 1;
}

extern unsigned char gOvl_0200e3d4[];

unsigned int VenusLighthouseAerie_GetEntrances(void) {
    return (unsigned int)gOvl_0200e3d4;
}

unsigned int VenusLighthouseAerie_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200e464[];

unsigned int VenusLighthouseAerie_GetExits(void) {
    return (unsigned int)gOvl_0200e464;
}
extern unsigned char gOvl_0200e478[];

unsigned int VenusLighthouseAerie_GetActors(void) {
    return (unsigned int)gOvl_0200e478;
}

extern int Func_8000948(int);

int OvlFunc_969_2008480(int *a, int *b)
{
  int dx;
  int dy;
  int dz;
  int mag;
  int new_var;
  int (*fp)(int);
  dx = ((*(a++)) - (*(b++))) >> 16;
  if (1)
  {
    dy = ((*(a++)) - (*(b++))) >> 16;
    dz = ((*a) - (*b)) >> 16;
    mag = ((dx * dx) + ((float) (dy * dy))) + (dz * dz);
  }
  new_var = ((dx * dx) + (dy * dy)) + (dz * dz);
  fp = Func_8000948;
  return fp(new_var);
}

int OvlFunc_969_20084bc(void)
{
    struct AerieActorTable {
        u8 pad[0x14];
        struct Actor *actors[0x42];
    };
    extern struct AerieActorTable *iwram_3001ebc_table __asm__("iwram_3001ebc");
    struct AerieActorTable *table;
    struct Actor *leader;
    int best_id;
    int min_dist;
    unsigned int i;

    table = iwram_3001ebc_table;
    best_id = 0;
    min_dist = 0xa0 << 2;
    leader = __MapActor_GetActor(0);

    for (i = 8; i <= 0x41; i++) {
        struct Actor *actor = table->actors[i];
        if (actor != NULL) {
            if ((s16)actor->sprite->layers[0]->spriteID == 0xf2) {
                int dist = OvlFunc_969_2008480((int *)&leader->pos, (int *)&actor->pos);
                if (dist < min_dist) {
                    min_dist = dist;
                    best_id = i;
                }
            }
        }
    }

    return best_id;
}
void OvlFunc_969_20086c0(void);
void __vec3_translate(int, int, vec3_t *);
int __TestCollision(struct Actor *, vec3_t *);
void __ClearFlag(int);
void __Actor_SetAnim(struct Actor *, int);
void __WaitFrames(int);
void __PlaySound(int);
void __MapActor_TravelToWait(int, int, int);

void OvlFunc_969_2008518(void)
{
    struct Actor *actor;
    int angle;
    u8 unk55;
    vec3_t vec;

    actor = (struct Actor *)__MapActor_GetActor(0);
    angle = (actor->facing + 0x1000) & 0xe000;
    unk55 = actor->__unk55;
    vec.x = (actor->pos.x & 0xfff00000) + 0x80000;
    vec.y = actor->pos.y;
    vec.z = (actor->pos.z & 0xfff00000) + 0x80000;
    __vec3_translate(0x200000, angle, &vec);
    if (!__TestCollision(actor, &vec)) {
        __ClearFlag(0x250);
        OvlFunc_969_20086c0();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __Actor_SetAnim(actor, 7);
        actor->speed = 0x30000;
        actor->accel = 0x20000;
        __PlaySound(0x98);
        actor->motion.y = 0x40000;
        actor->__unk55 &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        __MapActor_TravelToWait(0, vec.x >> 16, vec.z >> 16);
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        actor->__unk55 = unk55;
    }
}
extern int D_m969_66e8 __asm__(".Lm969_66e8");
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __SetFlag(int);
extern void __WaitFrames(int);
extern int OvlFunc_969_20084bc(void);

void OvlFunc_969_20085ec(void)
{
    struct Actor *actor0;
    struct Actor *actor;

    actor0 = (struct Actor *)__MapActor_GetActor(0);
    __CutsceneStart();
    D_m969_66e8 = OvlFunc_969_20084bc();
    if (D_m969_66e8 != 0) {
        __SetFlag(0x250);
        actor = (struct Actor *)__MapActor_GetActor(D_m969_66e8);
        actor->__unk55 = 0;
        actor0->__unk55 &= 0xfe;
        actor->pos.y -= 0x30000;
        actor0->pos.y -= 0x30000;
        actor0->floorPos -= 0x30000;
        __WaitFrames(2);
        actor->pos.y -= 0x20000;
        actor0->pos.y -= 0x20000;
        actor0->floorPos -= 0x20000;
        __WaitFrames(10);
        actor->pos.y += 0x20000;
        actor0->pos.y += 0x20000;
        actor0->floorPos += 0x20000;
        __WaitFrames(4);
        actor->pos.y += 0x20000;
        actor0->pos.y += 0x20000;
        actor0->floorPos += 0x20000;
        __WaitFrames(4);
        actor->pos.y += 0x10000;
        actor0->pos.y += 0x10000;
        actor0->floorPos += 0x10000;
    }
    __CutsceneEnd();
}

void OvlFunc_969_20086c0(void) {
    ((unsigned char *) __MapActor_GetActor(0))[0x55] = 3;
    ((unsigned char *) __MapActor_GetActor(0xc))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0xd))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0xe))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0xf))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0x10))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0x11))[0x55] = 4;
}

extern unsigned char gOvl_0200e6ec[];

unsigned int VenusLighthouseAerie_GetEvents(void) {
    return (unsigned int)gOvl_0200e6ec;
}

extern void __SetFlag(int);
extern void __WaitFrames(int);
extern void __Func_8092b08(int, int);
extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern int __GiveItemTo(int, int);
extern void __Func_8091e9c(int);
extern int OvlFunc_969_20084bc(void);
extern void OvlFunc_969_20088b4(void);
extern void OvlFunc_969_200a360(void);
extern void OvlFunc_969_200b8c0(void);
extern void OvlFunc_969_200b8dc(void);
extern void OvlFunc_969_200b924(void);
extern unsigned char gState[];

int VenusLighthouseAerie_MapInit(void)
{
    u32 i;
    s16 *state;
    struct Actor *actor;

    __SetFlag(0x144);
    __WaitFrames(1);
    __SetFlag(0x110);

    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(11), 0);

    ((struct Actor *)__MapActor_GetActor(10))->scale.x = 0xffff0000;
    ((struct Actor *)__MapActor_GetActor(11))->scale.x = 0xffff0000;

    for (i = 12; i <= 17; i++) {
        actor = (struct Actor *)__MapActor_GetActor(i);
        __Actor_SetSpriteFlags(__MapActor_GetActor(i), 0);
        __Func_8092b08(i, 1);
        actor->__unk55 = 4;
        actor->flags |= 2;
        actor->pos.y = 0x8000;
    }

    state = (s16 *)gState;
    switch (state[0xe1]) {
    case 1:
        if (!__GetFlag(0x109)) {
            OvlFunc_969_20088b4();
        }
        break;
    case 2:
        OvlFunc_969_200a360();
        break;
    case 3:
        OvlFunc_969_200b8c0();
        break;
    case 0x5d:
        OvlFunc_969_200b8dc();
        break;
    case 4:
        OvlFunc_969_200b924();
        break;
    case 9:
        __CutsceneStart();
        if (__GetFlag(0x345)) {
            __GiveItemTo(0, 0x41);
        } else if (__GetFlag(0x346)) {
            __GiveItemTo(1, 0x41);
        } else if (__GetFlag(0x347)) {
            __GiveItemTo(2, 0x41);
        } else {
            __GiveItemTo(3, 0x41);
        }
        __Func_8091e9c(9);
        break;
    }

    if (__GetFlag(0x109)) {
        int actorId = OvlFunc_969_20084bc();
        if (actorId != 0) {
            struct Actor *act = (struct Actor *)__MapActor_GetActor(actorId);
            if (act != NULL) {
                act->__unk55 = 0;
            }
        }
    }

    return 0;
}

extern void __ActorMessage(int a, int b);
extern void __CutsceneWait(int a);

void OvlFunc_969_2008894(int a) {
	__ActorMessage(a, 0);
	__CutsceneWait(0xa);
}

extern void __Func_8092adc(int a, int b, int c);

void OvlFunc_969_20088a8(int a, int b) {
    __Func_8092adc(a, b, 10);
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20088b4.s");
extern void __Func_8092950(int a, int b);
extern void __MapActor_SetSpeed(int a, int b, int c);

static inline void MapActor_SetSpeed(int a, int b, int c)
{
    __MapActor_SetSpeed(a, b, c);
}

void OvlFunc_969_2009280(int a, int b)
{
    if (b != 0) {
        __Func_8092950(a, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(a), 1);
        MapActor_SetSpeed(a, 0xcccc, 0x6666);
    } else {
        __Func_8092950(a, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(a), 0);
    }
}
typedef union {
    int raw;
    struct { unsigned short lo; short hi; } half;
    char bytes[4];
} Fx32Parts;

extern unsigned char Lconst_27ba[] __asm__(".Lconst_27ba");
__asm__(".equ .Lconst_27ba, 0x27ba");
extern unsigned char Lconst_bb[] __asm__(".Lconst_bb");
__asm__(".equ .Lconst_bb, 0xbb");

static inline void VenusWriteByte(unsigned char *p, int value) { *p = value; }
static inline void VenusWriteFacing(unsigned char *actor, int value) { *(unsigned short *)(actor + 6) = value; }
static inline void VenusSceneRunScript(int actorId, int script) { extern void VenusRunActorScript(int, int) __asm__("__MapActor_RunScript"); VenusRunActorScript(actorId, script); }

struct VenusBattleState { unsigned char prefix[0x22b]; unsigned char mode; };

void OvlFunc_969_20092c8(void)
{
    extern void OvlFunc_969_200a350(void);
    extern unsigned char gScript_969__0200e004[];
    extern unsigned char gScript_969__0200e03c[];
    extern struct VenusBattleState VenusSceneState __asm__("gState");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __CheckPartyItem(unsigned int);
    extern unsigned int __Func_80789dc(unsigned int);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8091f90(int, int);
    extern void __Func_8091fa8(int, int);
    extern void __Func_8092950(int, int);
    extern void * __Func_8093554(void);
    extern void * VenusSceneGetActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_969_2008894(int);
    extern void OvlFunc_969_20088a8(int, int);
    extern void OvlFunc_969_200a0dc(unsigned int);
    extern void OvlFunc_969_200a334(void);
    extern void OvlFunc_969_200a344(void);
    extern int __ShowActorMessage_NoWait(int, int);
    extern void __StartMapBattle(int, int);
    unsigned int effectFrame;
    int acceptedChoice;
    void * firstCamera;
    void * secondCamera;
    int choice3;
    int choice4;
    int itemOwner;
    int departureDialogue;
    int battleMap;
    unsigned char *actor;

    API_CutsceneStart();
    firstCamera = __Func_8093554();
    *(unsigned char *)(((unsigned char *)firstCamera) + 0x55) = 0;
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x14c0000, 0x200000, 0xb40000, 1);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0x154, 0xb8);
    OvlFunc_969_20088a8(0, 0x8000);
    API_Func_80925cc(21, 1);
    API_MessageID(0x278e);
    OvlFunc_969_2008894(0x9015);
    secondCamera = __Func_8093554();
    *(unsigned char *)(((unsigned char *)secondCamera) + 0x55) = 0;
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x1300000, 0x200000, 0xb40000, 1);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x16666, 0xb333);
    actor = VenusSceneGetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = VenusSceneGetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = VenusSceneGetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(3, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_TravelToAnim(1, 0x148, 0xa8);
    API_MapActor_TravelToAnim(2, 0x154, 0xc4);
    API_MapActor_TravelToAnimWait(3, 0x146, 0xcc);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(2, 1);
    API_Func_8092adc(1, 0x8000, 0);
    API_Func_8092adc(2, 0x8000, 0);
    OvlFunc_969_20088a8(3, 0x8000);
    API_Func_8092adc(20, 0, 0);
    API_Func_8092adc(19, 0, 0x28);
    API_Func_80925cc(20, 2);
    OvlFunc_969_2008894(20);
    OvlFunc_969_20088a8(19, 0x8000);
    OvlFunc_969_2008894(0x2013);
    API_MapActor_Emote(21, 0x103, 20);
    OvlFunc_969_2008894(21);
    API_Func_809259c(21, 2);
    API_ActorMessage_Wait(21, 0, 20);
    API_Func_8092adc(21, 0xd000, 0x28);
    OvlFunc_969_2008894(21);
    API_MapActor_DoAnim(21, 4);
    OvlFunc_969_20088a8(21, 0);
    API_ActorMessage_Wait(21, 0, 20);
    API_Func_80925cc(20, 1);
    OvlFunc_969_20088a8(20, 0x8000);
    OvlFunc_969_2008894(0x2014);
    API_MapActor_Surprise(3, 0x102);
    API_Func_809259c(3, 2);
    OvlFunc_969_2008894(3);
    API_Func_80925cc(2, 1);
    OvlFunc_969_2008894(2);
    OvlFunc_969_20088a8(19, 0);
    OvlFunc_969_2008894(19);
    API_MapActor_Emote(20, 0x106, 0x28);
    API_Func_8092adc(20, 0, 20);
    OvlFunc_969_2008894(20);
    API_Func_8092adc(0, 0xa000, 0);
    API_Func_8092adc(1, 0x2000, 0);
    API_Func_8092adc(2, 0x6000, 0);
    API_Func_8092adc(3, 0xe000, 0);
    API_Func_8092adc(21, 0x8000, 0);
    OvlFunc_969_20088a8(19, 0x3000);
    API_MapActor_Emote(19, 0x102, 0x28);
    OvlFunc_969_2008894(19);
    OvlFunc_969_20088a8(20, 0xb000);
    OvlFunc_969_2008894(0x2014);
    API_Func_8092adc(20, 0x8000, 20);
    OvlFunc_969_2008894(0x2014);
    API_Func_8092adc(19, 0x8000, 0);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(1, 0x8000, 0);
    API_Func_8092adc(2, 0x8000, 0);
    API_Func_8092adc(3, 0x8000, 0);
    API_Func_8092adc(21, 0, 20);
    API_MapActor_Emote(6, 0x101, 0x28);
    OvlFunc_969_2008894(6);
    API_MapActor_Emote(20, 0x103, 20);
    OvlFunc_969_2008894(0x2014);
    API_Func_80925cc(6, 2);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(6, 3);
    OvlFunc_969_2008894(6);
    API_MapActor_DoAnim(20, 3);
    OvlFunc_969_2008894(0x2014);
    API_MapActor_SetSpeed(6, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(6, 0x104, 0xba);
    API_Func_8092adc(21, 0x3000, 0);
    API_MapActor_TravelToAnimWait(6, 0x114, 0xc0);
    actor = VenusSceneGetActor(19);
    VenusWriteFacing(actor, 0x5000);
    API_WaitFrames(1);
    API_Func_809259c(19, 2);
    OvlFunc_969_2008894(0x2013);
    API_MapActor_Jump(6, 2, 20);
    API_MapActor_SetSpeed(6, 0x26666, 0x13333);
    API_MapActor_TravelToAnimWait(6, 0x104, 0xba);
    API_Func_8092adc(21, 0x8000, 0);
    API_MapActor_TravelToAnimWait(6, 0xf8, 0xac);
    API_Func_8092adc(19, 0x8000, 0);
    API_Func_8092adc(21, 0x8000, 0);
    API_Func_8092adc(6, 0, 20);
    API_MapActor_DoAnim(6, 3);
    API_CutsceneWait(0x28);
    OvlFunc_969_200a334();
    API_WaitFrames(1);
    effectFrame = 0;
    do {
        actor = VenusSceneGetActor(6);
        OvlFunc_969_200a0dc((unsigned int)actor);
        effectFrame++;
        API_WaitFrames(1);
    } while (effectFrame <= 0x27);
    API_StartTask(OvlFunc_969_200a350, 0xc80);
    API_CutsceneWait(0x50);
    API_Func_8092adc(0, 0xa000, 0);
    API_Func_8092adc(1, 0x2000, 0);
    API_Func_8092adc(2, 0x6000, 0);
    API_Func_8092adc(3, 0xe000, 20);
    API_Func_8092adc(21, 0, 0x28);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(1, 0x8000, 0);
    API_Func_8092adc(2, 0x8000, 0);
    API_Func_8092adc(3, 0x8000, 0);
    OvlFunc_969_20088a8(21, 0x8000);
    API_MapActor_Emote(20, 0x101, 0x28);
    API_ActorMessage_Wait(0x2014, 0, 20);
    API_MapActor_Emote(6, 0x105, 0x50);
    API_Func_809259c(19, 2);
    OvlFunc_969_2008894(0x2013);
    API_StopTask(OvlFunc_969_200a350);
    API_WaitFrames(1);
    __Func_8092950(6, 0);
    API_WaitFrames(10);
    OvlFunc_969_200a344();
    API_MapActor_Jump(6, 2, 0x28);
    OvlFunc_969_2008894(6);
    API_MapActor_Emote(20, 0x103, 20);
    OvlFunc_969_2008894(0x2014);
    API_Func_80925cc(6, 2);
    actor = VenusSceneGetActor(6);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    API_MapActor_TravelToAnimWait(6, 0xfa, 0xb0);
    API_CutsceneWait(1);
    actor = VenusSceneGetActor(6);
    actor += 0x5a;
    VenusWriteByte(actor, (*actor | 1));
    API_MapActor_Emote(21, 0x103, 20);
    API_Func_8092adc(21, 0, 20);
    OvlFunc_969_2008894(21);
    API_MapActor_DoAnim(19, 4);
    OvlFunc_969_2008894(0x2013);
    API_Func_80925cc(6, 2);
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(6, 0x9999, 0x4ccc);
    actor = VenusSceneGetActor(6);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    API_MapActor_TravelToAnimWait(6, 0xf8, 0xac);
    API_CutsceneWait(1);
    actor = VenusSceneGetActor(6);
    actor += 0x5a;
    VenusWriteByte(actor, (1 | *actor));
    API_CutsceneWait(20);
    API_MapActor_DoAnim(6, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(19, 3);
    OvlFunc_969_2008894(0x2013);
    API_MapActor_DoAnim(6, 3);
    OvlFunc_969_2008894(6);
    API_Func_8092adc(19, 0x3000, 0);
    API_Func_8092adc(20, 0xb000, 20);
    API_MapActor_Emote(19, 0x105, 0);
    API_MapActor_Emote(20, 0x105, 0x3c);
    API_MapActor_SetAnim(20, 4);
    OvlFunc_969_2008894(0x2014);
    API_MapActor_Emote(19, 0x101, 0x28);
    OvlFunc_969_2008894(19);
    API_MapActor_Emote(20, 0x105, 0x64);
    API_Func_80925cc(20, 1);
    API_CutsceneWait(20);
    OvlFunc_969_20088a8(20, 0);
    OvlFunc_969_20088a8(19, 0);
    __ShowActorMessage_NoWait(20, 0);
    API_Func_8092adc(1, 0x2000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xe000, 0);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 0) {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(20, 3);
        acceptedChoice = 1;
    } else {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(20, 4);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        acceptedChoice = 0;
    }
    OvlFunc_969_2008894(20);
    if (acceptedChoice != 0) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    API_Func_8092adc(1, 0x8000, 0);
    API_Func_8092adc(2, 0x8000, 0);
    API_Func_8092adc(3, 0x8000, 20);
    API_MapActor_Emote(20, 0x108, 0x28);
    __ShowActorMessage_NoWait(20, 0);
    API_Func_8092adc(1, 0x2000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xe000, 0);
    choice4 = __Func_8091c7c(0, 0);
    if (choice4 == 0) {
        API_CutsceneWait(20);
        API_MapActor_SetAnim(2, 3);
        acceptedChoice = 1;
    } else {
        API_CutsceneWait(20);
        API_MapActor_SetAnim(2, 4);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        acceptedChoice = 0;
    }
    OvlFunc_969_2008894(2);
    if (acceptedChoice != 0) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    API_Func_80925cc(1, 2);
    OvlFunc_969_20088a8(1, 0x4000);
    OvlFunc_969_2008894(1);
    API_Func_80925cc(19, 1);
    OvlFunc_969_2008894(19);
    API_Func_8092adc(1, 0x8000, 0);
    API_Func_8092adc(2, 0x8000, 0);
    OvlFunc_969_20088a8(3, 0x8000);
    API_MapActor_DoAnim(1, 4);
    API_MapActor_DoAnim(20, 3);
    API_ActorMessage_Wait(20, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    OvlFunc_969_20088a8(19, 0x3000);
    API_MapActor_SetAnim(19, 3);
    OvlFunc_969_2008894(19);
    API_Func_8092adc(20, 0xb000, 20);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(0x28);
    OvlFunc_969_20088a8(20, 0x8000);
    OvlFunc_969_2008894(0x2014);
    API_Func_80925cc(21, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(21, 0, 0x28);
    OvlFunc_969_2008894(0x2014);
    API_MapActor_Emote(21, 0x103, 0x3c);
    OvlFunc_969_20088a8(19, 0x8000);
    API_Func_80925cc(19, 1);
    OvlFunc_969_2008894(0x2013);
    API_MapActor_Emote(21, 0x105, 0x3c);
    API_MapActor_DoAnim(21, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(21, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(21, 0x120, 0xc0);
    API_Func_8092adc(19, 0, 0);
    API_Func_8092adc(20, 0, 0);
    API_MapActor_TravelToAnimWait(21, 0x136, 0xc0);
    API_MapActor_TravelToAnimWait(21, 0x148, 0xba);
    API_CutsceneWait(20);
    API_Func_80925cc(21, 2);
    departureDialogue = (int)Lconst_27ba;
    API_Func_801776c(departureDialogue, 1);
    API_MapActor_TravelToAnimWait(21, 0x136, 0xc0);
    API_Func_8092adc(19, 0x8000, 0);
    API_Func_8092adc(20, 0x8000, 0);
    API_MapActor_TravelToAnimWait(21, 0x120, 0xc0);
    API_MapActor_TravelToAnimWait(21, 0x106, 0xb0);
    departureDialogue++;
    API_Func_8092adc(21, 0, 0x28);
    API_MessageID(departureDialogue);
    OvlFunc_969_2008894(21);
    API_MapActor_DoAnim(20, 3);
    OvlFunc_969_2008894(0x2014);
    API_MapActor_DoAnim(21, 3);
    OvlFunc_969_20088a8(20, 0);
    OvlFunc_969_20088a8(21, 0x8000);
    API_MapActor_DoAnim(21, 3);
    API_MapActor_DoAnim(6, 3);
    API_MapActor_SetSpeed(6, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(6, 0x104, 0xba);
    API_Func_8092adc(21, 0x3000, 0);
    API_MapActor_TravelToAnimWait(6, 0x114, 0xc0);
    API_PlaySound(19);
    actor = VenusSceneGetActor(19);
    VenusWriteFacing(actor, 0x5000);
    API_WaitFrames(1);
    API_Func_80925cc(19, 1);
    OvlFunc_969_2008894(19);
    API_Func_80925cc(6, 2);
    API_Func_8092adc(21, 0, 0);
    API_Func_8092adc(20, 0x5000, 0);
    API_Func_8092adc(6, 0xd000, 20);
    API_MapActor_Jump(3, 2, 20);
    OvlFunc_969_20088a8(3, 0xa000);
    OvlFunc_969_2008894(3);
    API_Func_8092adc(21, 0, 0);
    API_Func_8092adc(6, 0, 0);
    API_Func_8092adc(19, 0x3000, 0);
    API_Func_8092adc(20, 0xb000, 0x50);
    API_Func_8092adc(19, 0, 0);
    API_Func_8092adc(20, 0, 0x28);
    API_PlaySound(29);
    OvlFunc_969_2008894(20);
    API_Func_8092adc(21, 0x3000, 0);
    API_Func_8092adc(6, 0xb000, 20);
    API_Func_809259c(2, 2);
    OvlFunc_969_2008894(2);
    OvlFunc_969_20088a8(19, 0x3000);
    API_MapActor_DoAnim(19, 3);
    OvlFunc_969_2008894(19);
    API_Func_8092adc(21, 0, 0);
    OvlFunc_969_20088a8(6, 0xd000);
    API_MapActor_SetAnim(3, 3);
    OvlFunc_969_2008894(3);
    API_MapActor_Emote(20, 0x100, 20);
    API_Func_8092adc(20, 0x3000, 20);
    OvlFunc_969_2008894(20);
    API_MapActor_Emote(6, 0x102, 0);
    API_MapActor_Emote(21, 0x102, 0x3c);
    API_Func_8092adc(6, 0, 0);
    OvlFunc_969_20088a8(21, 0);
    API_MapActor_Emote(1, 0x103, 0x28);
    API_Func_809259c(1, 2);
    OvlFunc_969_2008894(1);
    OvlFunc_969_20088a8(19, 0);
    API_MapActor_DoAnim(19, 4);
    OvlFunc_969_2008894(19);
    OvlFunc_969_20088a8(20, 0);
    API_MapActor_SetAnim(20, 4);
    OvlFunc_969_2008894(20);
    API_Func_8092adc(6, 0xd000, 0);
    API_MapActor_Emote(6, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage_Wait(3, 0, 20);
    OvlFunc_969_20088a8(19, 0x3000);
    API_MapActor_SetAnim(19, 4);
    OvlFunc_969_2008894(19);
    API_MapActor_Surprise(2, 0x102);
    API_ActorMessage_Wait(2, 0, 20);
    OvlFunc_969_20088a8(19, 0);
    API_MapActor_DoAnim(20, 3);
    OvlFunc_969_2008894(20);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(2, 2);
    API_Func_80925cc(3, 2);
    API_Func_8092adc(0, 0xa000, 0);
    API_Func_8092adc(1, 0x2000, 0);
    API_Func_8092adc(2, 0x6000, 0);
    API_Func_8092adc(3, 0xe000, 0x28);
    API_Func_80925cc(3, 1);
    OvlFunc_969_20088a8(3, 0xa000);
    OvlFunc_969_2008894(3);
    API_Func_8092adc(1, 0x8000, 20);
    API_MapActor_Emote(1, 0x103, 20);
    API_Func_809259c(1, 2);
    OvlFunc_969_2008894(1);
    API_Func_8092adc(6, 0, 0);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(2, 0x8000, 0x28);
    API_MapActor_Emote(20, 0x103, 0x28);
    API_Func_809259c(20, 2);
    OvlFunc_969_2008894(20);
    API_Func_80925cc(19, 1);
    OvlFunc_969_2008894(19);
    itemOwner = __CheckPartyItem(0x41);
    API_SetFlag((itemOwner + 0x345));
    __Func_80789dc(0x41);
    actor = VenusSceneGetActor(0);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    actor = VenusSceneGetActor(1);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    actor = VenusSceneGetActor(2);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    actor = VenusSceneGetActor(3);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    actor = VenusSceneGetActor(19);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    actor = VenusSceneGetActor(20);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    actor = VenusSceneGetActor(21);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    actor = VenusSceneGetActor(6);
    actor += 0x5a;
    VenusWriteByte(actor, (0xfe & *actor));
    API_MapActor_SetBehavior(0, (int)gScript_969__0200e004);
    API_MapActor_SetBehavior(1, (int)gScript_969__0200e004);
    API_MapActor_SetBehavior(2, (int)gScript_969__0200e004);
    API_MapActor_SetBehavior(3, (int)gScript_969__0200e004);
    API_MapActor_SetBehavior(19, (int)gScript_969__0200e03c);
    API_MapActor_SetBehavior(20, (int)gScript_969__0200e03c);
    API_MapActor_SetBehavior(21, (int)gScript_969__0200e004);
    VenusSceneRunScript(6, (int)gScript_969__0200e004);
    do { VenusSceneState.mode = 3; } while (0);
    battleMap = (int)Lconst_bb;
    __Func_8091f90(battleMap, 2);
    __Func_8091fa8(battleMap, 9);
    __StartMapBattle(0x62, 1);
    API_SetFlag(0x350);
}

extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int, unsigned int);
extern int _umodsi3_RAM(unsigned int, unsigned int);
extern void OvlFunc_969_200a200(unsigned int);

void OvlFunc_969_200a0dc(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if (_umodsi3_RAM(iwram_3001e40, 0xf) == 0) {
        OvlFunc_969_200a200(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a1 __asm__("iwram_3001e40");

void OvlFunc_969_200a11c(arg0) int arg0;
{
    if (iwram_3001e40__a1 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a1 >> 1, 6));
    }
    if (_umodsi3_RAM(iwram_3001e40__a1, 0xf) == 0) {
        OvlFunc_969_200a200(arg0);
    }
}

void OvlFunc_969_200a15c(struct Actor *actor) {
    struct Actor *target;
    s32 sinVal;

    target = actor->linkedActor;

    if (++actor->waveCounter > 0x1f) {
        API_DeleteActor((int)actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = sinVal;
        actor->pos.x = target->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = target->pos.z + (0x10000 - sinVal) * 5 + 0x80000;
    }
}

void OvlFunc_969_200a1ac(struct Actor *actor) {
    struct Actor *target;
    s32 sinVal;

    target = actor->linkedActor;

    if (++actor->waveCounter > 0x1f) {
        API_DeleteActor((int)actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = -sinVal;
        actor->pos.x = target->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = target->pos.z - (0x10000 - sinVal) * 5 + 0x100000;
    }
}

struct SpriteOamBitView969 {
    struct Sprite *dest;
    u16 posY : 8;
    u16 affineMode : 2;
    u16 objMode : 2;
    u16 mosaic : 1;
    u16 bpp : 1;
    u16 shape : 2;
    u16 posX : 9;
    u16 affineParam : 5;
    u16 size : 2;
    union {
        struct {
            u16 tileNum : 10;
            u16 priority : 2;
            u16 palette : 4;
        };
        struct {
            u8 attr2Lo;
            u8 tileHi : 2;
            u8 prio : 2;
            u8 pal : 4;
        } __attribute__((packed));
    } __attribute__((packed));
};

struct E30SlotView969 {
    unsigned char pad[0x46];
    u16 slot;
};

void OvlFunc_969_200a200(unsigned int arg0)
{
    extern struct E30SlotView969 *iwram_3001f30_view __asm__("iwram_3001f30");
    extern struct SpriteSlot gSpriteSlots[];
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern void __Func_8003f3c(int);

    struct E30SlotView969 *e30 = iwram_3001f30_view;
    struct Actor *parent = (struct Actor *)arg0;
    struct Actor *actors[2];
    int i;

    API_PlaySound(0x83);

    for (i = 0; i <= 1; i++) {
        struct Actor *actor = API_CreateActor(0x1a, parent->pos.x, parent->pos.y, parent->pos.z);
        actors[i] = actor;
        if (actor != NULL) {
            struct Sprite *sprite;

            actor->floorPos = parent->floorPos;
            sprite = actor->sprite;
            actor->__unk55 = 0;
            actor->waveCounter = 0;
            actor->linkedActor = parent;
            if (sprite != NULL) {
                struct SpriteOamBitView969 *oam = (struct SpriteOamBitView969 *)&sprite->oam;

                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = e30->slot;
                sprite->flags1D.bit0 = 1;
                oam->tileNum = gSpriteSlots[sprite->slot].vramOffset >> 5;
                oam->bpp = 0;
                oam->shape = 1;
                oam->size = 2;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    actors[0]->update = (actorfun_t)OvlFunc_969_200a1ac;
    ((struct SpriteOamBitView969 *)&actors[0]->sprite->oam)->prio =
        ((struct SpriteOamBitView969 *)&parent->sprite->oam)->prio;
    ((struct SpriteOamBitView969 *)&actors[1]->sprite->oam)->prio =
        ((struct SpriteOamBitView969 *)&parent->sprite->oam)->prio;
    actors[1]->update = (actorfun_t)OvlFunc_969_200a15c;
    actors[1]->flags = 2;
}

extern void __Func_8096fb0(int a, int b);

void OvlFunc_969_200a334(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_969_200a344(void) {
    __Func_8097194();
}


void OvlFunc_969_200a350(void) {
    __MapActor_GetActor(6);
    OvlFunc_969_200a11c();
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a360.s");

void OvlFunc_969_200b5c4(void) {
    __PlaySound(0xbb);
    __Func_8091200(0x7fff, 1);
    __Func_8091254(1);
    __WaitFrames(4);
    __Func_8091200(0x40250d, 1);
    __Func_8091254(1);
    __WaitFrames(1);
}

extern int __cos(int);
extern int __sin(int);

void OvlFunc_969_200b600(struct Actor *actor)
{
    struct Actor *centerActor;
    u16 angle;

    centerActor = ((struct Actor *(*)(int))__MapActor_GetActor)(0x18);
    angle = actor->waveCounter;
    actor->pos.x = centerActor->pos.x + __cos(angle) * (actor->speed + 3);
    actor->pos.z = centerActor->pos.z + (__sin(angle) * 2);
    actor->prevPos.x = actor->pos.x;
    actor->prevPos.z = actor->pos.z;
    actor->waveCounter -= 0x800;
}

extern int __cos(int);
extern int __sin(int);

void OvlFunc_969_200b660(struct Actor *actor)
{
    struct Actor *other = __MapActor_GetActor(0x17);
    u16 *waveCounter = (u16 *)&actor->waveCounter;
    u16 angle = *waveCounter;

    actor->pos.x = other->pos.x + __cos(angle) * (actor->speed + actor->__unk62 + 6);
    actor->pos.z = other->pos.z + __sin(angle) * (actor->__unk62 + 4);
    actor->prevPos.x = actor->pos.x;
    actor->prevPos.z = actor->pos.z;
    *waveCounter -= 0x800;
}
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b6d0.s");

void OvlFunc_969_200b7c4(void)
{
    extern unsigned int iwram_3001e40;
    extern int __GetFlag(int);
    extern void __Func_8092950(int, int);
    struct Actor *actor1;
    struct Actor *actor2;
    int cond;

    actor1 = __MapActor_GetActor(0x14);
    actor2 = __MapActor_GetActor(0x13);

    if (actor1->prevPos.x == (0x80 << 24) &&
        actor1->prevPos.y == (0x80 << 24) &&
        actor1->prevPos.z == (0x80 << 24)) {
        cond = 1;
    } else {
        cond = 0;
    }
    if (actor2->prevPos.x == (0x80 << 24) &&
        actor2->prevPos.y == (0x80 << 24) &&
        actor2->prevPos.z == (0x80 << 24)) {
        cond = 1;
    } else {
        cond = 0;
    }

    if (cond) {
        actor1->facing = 0;
        actor2->facing = 0;

        if (__GetFlag(0x235)) {
            __Func_8092950(0x14, 7);
            __Func_8092950(0x13, 7);
            if (actor1->scale.x < (0xa0 << 9)) {
                actor1->scale.x += (0x80 << 2);
                actor1->scale.y += (0x80 << 2);
                actor2->scale.x += (0x80 << 2);
                actor2->scale.y += (0x80 << 2);
            }
        } else {
            if (iwram_3001e40 & 2) {
                __Func_8092950(0x14, 0xf);
                __Func_8092950(0x13, 0);
            } else {
                __Func_8092950(0x14, 0);
                __Func_8092950(0x13, 0xf);
            }
        }

        if (__GetFlag(0x234)) {
            if (actor1->pos.x < (0x9c << 17)) {
                actor1->pos.x += (0x80 << 5);
                actor2->pos.x += (0x80 << 5);
            }
            if (actor1->pos.z > (0xb6 << 16)) {
                actor1->pos.z += -0x1000;
                actor2->pos.z += -0x1000;
            }
        }
    }
}

extern void OvlFunc_969_200bbc8(void);
extern void OvlFunc_969_200be9c(void);
extern void OvlFunc_969_200c23c(void);

void OvlFunc_969_200b8c0(void) {
    __CutsceneStart();
    OvlFunc_969_200bbc8();
    OvlFunc_969_200be9c();
    OvlFunc_969_200c23c();
    __CutsceneEnd();
}

extern unsigned char iwram_3001ebc[];
extern void OvlFunc_969_200c8d8(void);
extern void OvlFunc_969_200cb28(void);

void OvlFunc_969_200b8dc(void)
{
    unsigned int *p;
    __CutsceneStart();
    OvlFunc_969_200c8d8();
    OvlFunc_969_200cb28();
    __SetFlag(0x11a);
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x18;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(1);
    __CutsceneEnd();
}


void OvlFunc_969_200b924(void)
{
    extern void OvlFunc_969_200da28(void);
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern int __DeleteFieldActor(int);
    extern void __Func_800fe9c(void);
    extern void __Func_8092950(int, int);
    extern unsigned int __Func_8093554(void);
    extern struct Actor * __MapActor_GetActor(int);
    extern void OvlFunc_969_200cbec(void);
    extern void OvlFunc_969_200d688(unsigned int);
    struct Actor *savedLeader;
    unsigned int cameraActor;
    struct Actor *actor;
    unsigned char *actorState;
    unsigned char *scene;

    actor = __MapActor_GetActor(0);
    /* Keep the original leader pointer across scene and tile setup. */
    savedLeader = actor;
    API_CutsceneStart();
    cameraActor = __Func_8093554();
    *(unsigned char *)(cameraActor + 0x55) = 0;
    API_CopyMapTiles(0x66, 4, 0x4a, 4, 18, 23);
    API_CopyMapTiles(0x27, 0x48, 11, 0x48, 16, 20);
    API_Func_8010704(19, 6, 3, 7, 22, 6);
    API_Func_8010704(19, 6, 3, 7, 13, 6);
    API_Func_8010704(19, 6, 3, 7, 22, 13);
    API_Func_8010704(19, 6, 3, 7, 13, 13);
    API_WaitFrames(1);
    API_Func_80933f8(0xc00000, 0xffc00000, 0xee0000, 0);
    API_WaitFrames(1);
    __Func_800fe9c();
    API_WaitFrames(1);
    __DeleteFieldActor(20);
    __DeleteFieldActor(19);
    API_MapActor_SetAnim(0, 19);
    actor = __MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    savedLeader->pos.x = 0x15a0000;
    savedLeader->pos.z = 0xcd0000;
    savedLeader->pos.y = 0x200000;
    savedLeader->facing = 0x6000;
    OvlFunc_969_200d688((unsigned int)savedLeader);
    API_MapActor_SetAnim(1, 18);
    actor = __MapActor_GetActor(1);
    __Actor_SetSpriteFlags(actor, 0);
    actor = __MapActor_GetActor(1);
    actor->pos.x = 0x1640000;
    actor->pos.z = 0xc00000;
    actor->facing = 0xa000;
    actor->pos.y = 0x200000;
    OvlFunc_969_200d688((unsigned int)actor);
    API_MapActor_SetAnim(2, 18);
    actor = __MapActor_GetActor(2);
    __Actor_SetSpriteFlags(actor, 0);
    actor = __MapActor_GetActor(2);
    actor->pos.x = 0x1680000;
    actor->facing = 0x2000;
    actor->pos.y = 0x200000;
    actor->pos.z = 0xde0000;
    OvlFunc_969_200d688((unsigned int)actor);
    API_MapActor_SetAnim(3, 18);
    actor = __MapActor_GetActor(3);
    __Actor_SetSpriteFlags(actor, 0);
    actor = __MapActor_GetActor(3);
    actor->pos.x = 0x14e0000;
    actor->facing = 0x8000;
    actor->pos.y = 0x200000;
    actor->pos.z = 0xde0000;
    OvlFunc_969_200d688((unsigned int)actor);
    API_MapActor_SetPos(21, 0xc40000, 0xdc0000);
    API_MapActor_SetAnim(21, 5);
    API_MapActor_SetPos(6, 0xbc0000, 0x13c0000);
    API_MapActor_SetAnim(6, 5);
    actor = __MapActor_GetActor(6);
    __Actor_SetSpriteFlags(actor, 0);
    actor = __MapActor_GetActor(8);
    actor->pos.x = (actor->pos.x + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = __MapActor_GetActor(9);
    actor->pos.x = (actor->pos.x + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = __MapActor_GetActor(10);
    actor->pos.x = (actor->pos.x + 0x100000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = __MapActor_GetActor(11);
    actor->pos.x = (actor->pos.x + 0x100000);
    OvlFunc_969_200d688((unsigned int)actor);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    actor = __MapActor_GetActor(23);
    __Actor_SetSpriteFlags(actor, 0);
    actorState = (unsigned char *)__MapActor_GetActor(23);
    actorState += 0x55;
    *actorState = 4;
    __Func_8092950(23, 4);
    actor = __MapActor_GetActor(23);
    actor->pos.y = 0x280000;
    API_StartTask(OvlFunc_969_200da28, 0xc80);
    /* Both scene words use the same scene allocation. */
    scene = *(unsigned char **)CS_iwram_3001ebc;
    *(int *)(scene + 0x1c0) = 0x200;
    *(int *)(scene + 0x1c8) = 24;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    OvlFunc_969_200cbec();
    API_SetFlag(0x9a7);
    API_Func_8091e9c(2);
}

void OvlFunc_969_200bbc8(void)
{
    extern void OvlFunc_969_200b6d0(void);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __DeleteFieldActor(int);
    extern void __Func_800fe9c(void);
    extern unsigned int __Func_8093554(void);
    extern void OvlFunc_969_2008894(int);
    unsigned int cameraActor;
    struct Actor *actor;
    unsigned char actorState;
    struct Actor *saved20;
    struct Actor *saved19;

    API_PlaySound(0x8d);
    API_Func_8010704(17, 10, 4, 2, 17, 8);
    actor = ((struct Actor *)__MapActor_GetActor(0));
    actorState = 0;
    actor->facing = 0xa000;
    actor = ((struct Actor *)__MapActor_GetActor(1));
    actor->facing = 0xa000;
    API_MapActor_SetPos(1, 0x1480000, 0xa80000);
    actor = ((struct Actor *)__MapActor_GetActor(2));
    actor->facing = 0xa000;
    API_MapActor_SetPos(2, 0x1540000, 0xc40000);
    actor = ((struct Actor *)__MapActor_GetActor(3));
    actor->facing = 0xa000;
    API_MapActor_SetPos(3, 0x1460000, 0xcc0000);
    actor = ((struct Actor *)__MapActor_GetActor(21));
    actor->facing = 0xd000;
    API_MapActor_SetPos(21, 0xc80000, 0xd80000);
    actor = ((struct Actor *)__MapActor_GetActor(6));
    actor->facing = 0xd000;
    API_MapActor_SetPos(6, 0xc80000, 0xd80000);
    actor = ((struct Actor *)__MapActor_GetActor(20));
    actor->facing = 0x3000;
    API_MapActor_SetPos(20, 0x1360000, 0x9e0000);
    actor = ((struct Actor *)__MapActor_GetActor(19));
    actor->facing = 0x3000;
    API_MapActor_SetPos(19, 0x1240000, 0x9e0000);
    actor = ((struct Actor *)__MapActor_GetActor(24));
    __Actor_SetSpriteFlags(actor, 0);
    __Func_8092950(24, 7);
    API_Func_8092b08(24, 1);
    actor = ((struct Actor *)__MapActor_GetActor(24));
    actor->scale.y = 0xffff0000;
    actor->scale.x = 0x3333;
    actor->__unk55 = actorState;
    actor->pos.x = 0x1300000;
    actor->pos.y = 0x20000;
    actor->pos.z = 0x600000;
    actor = ((struct Actor *)__MapActor_GetActor(25));
    __Actor_SetSpriteFlags(actor, 0);
    __Func_8092950(25, 7);
    API_Func_8092b08(25, 1);
    actor = ((struct Actor *)__MapActor_GetActor(25));
    actor->scale.y = 0xffff0000;
    actor->scale.x = 0x3333;
    actor->__unk55 = actorState;
    actor->pos.x = 0x1300000;
    actor->pos.y = 0x220000;
    actor->pos.z = 0x600000;
    API_StartTask(OvlFunc_969_200b6d0, 0xc80);
    cameraActor = __Func_8093554();
    *(unsigned char *)(((unsigned char *)cameraActor) + 0x55) = actorState;
    API_Func_80933f8(0x1300000, 0x200000, 0xb40000, 0);
    API_WaitFrames(1);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(10);
    API_MessageID(0x2809);
    OvlFunc_969_2008894(20);
    API_Func_80925cc(19, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(19, 0, 0x28);
    API_PlaySound(17);
    saved20 = ((struct Actor *)__MapActor_GetActor(20));
    saved20->pos.x = 0x1340000;
    saved20->pos.y = 0x1c0000;
    saved20->pos.z = 0x980000;
    API_MapActor_SetAnim(20, 10);
    API_CutsceneWait(20);
    saved20->pos.y = 0x1c0000;
    saved20->pos.x = 0x1320000;
    saved20->pos.z = 0x980000;
    API_MapActor_SetAnim(20, 11);
    API_CutsceneWait(12);
    saved20->pos.x = 0x1300000;
    saved20->pos.y = 0x150000;
    saved20->pos.z = 0x980000;
    API_MapActor_SetAnim(20, 12);
    API_CutsceneWait(8);
    __DeleteFieldActor(20);
    saved19 = ((struct Actor *)__MapActor_GetActor(19));
    saved19->pos.y = 0x1c0000;
    saved19->pos.x = 0x1260000;
    saved19->pos.z = 0x980000;
    API_MapActor_SetAnim(19, 8);
    API_CutsceneWait(20);
    saved19->pos.x = 0x12c0000;
    saved19->pos.y = 0x1b0000;
    saved19->pos.z = 0x980000;
    API_MapActor_SetAnim(19, 9);
    API_CutsceneWait(12);
    saved19->pos.x = 0x1300000;
    saved19->pos.y = 0x110000;
    saved19->pos.z = 0x980000;
    API_MapActor_SetAnim(19, 10);
    API_CutsceneWait(8);
    __DeleteFieldActor(19);
    API_CutsceneWait(0xa0);
}
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200be9c.s");
extern unsigned char Lconst_2[] __asm__(".Lconst_2");
__asm__(".equ .Lconst_2, 2");

static inline void VenusByte(unsigned char *p, int v) { *p = v; }
static inline void VenusPalette(int color, volatile unsigned short *p) { *p = color; }

void OvlFunc_969_200c23c(void)
{
    extern unsigned char CS_969_6760[] __asm__(".Lm969_6760");
    extern unsigned char CS_969_6764[] __asm__(".Lm969_6764");
    extern void OvlFunc_969_200b6d0(void);
    extern void OvlFunc_969_200d6a0(void);
    extern unsigned char gScript_969__0200e088[];
    extern unsigned char gScript_969__0200e0d0[];
    extern unsigned char gScript_969__0200e0f4[];
    extern unsigned char gScript_969__0200e130[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void VenusSpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
    extern void __Func_808ba38(void);
    extern void __Func_8092950(int, int);
    extern void * VenusActor(int) __asm__("__MapActor_GetActor");
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_969_2008894(int);
    extern void OvlFunc_969_200d688(unsigned int);
    extern void __SetDestMap(int, int);
    struct Actor *effect26, *effect27, *effect28;
    unsigned char *actor;
    struct Actor *waveActor;
    unsigned char waveStart;

    API_PlaySound(19);
    API_PlaySound(0x120);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_Emote(2, 0x100, 0);
    API_MapActor_Emote(3, 0x100, 0);
    API_MapActor_Emote(21, 0x100, 0);
    API_MapActor_Emote(6, 0x100, 10);
    API_Func_8092adc(0, 0xa000, 0);
    API_Func_8092adc(1, 0xa000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_Func_8092adc(3, 0xa000, 0);
    API_Func_8092adc(21, 0xd000, 0);
    API_Func_8092adc(6, 0xd000, 0);
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_CutsceneWait(10);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_Func_80933f8(0x1300000, 0x200000, 0xb40000, 1);
    API_Func_8093530();
    actor = VenusActor(24);
    *(int *)(actor + 0x18) = 0x1999;
    actor = VenusActor(25);
    *(int *)(actor + 0x18) = 0x1999;
    API_MapActor_SetBehavior(24, (int)gScript_969__0200e088);
    API_MapActor_SetBehavior(25, (int)gScript_969__0200e088);
    API_PlaySound(0x91);
    API_Func_8012330(0x60000, 0x60000, 0x10000);
    API_Func_8091200(0x4063ff, 0);
    API_Func_8091254(16);
    API_WaitFrames(20);
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(24);
    API_WaitFrames(0x3c);
    API_PlaySound(0x8d);
    API_SetFlag(0x236);
    actor = VenusActor(24);
    *(int *)(actor + 0xc) = 0xffa00000;
    actor = VenusActor(25);
    *(int *)(actor + 0xc) = 0xffc00000;
    __Func_8092950(26, 7);
    actor = VenusActor(26);
    VenusSpriteFlags(actor, 0);
    actor = VenusActor(26);
    effect26 = (struct Actor *)actor;
    effect26->scale.y = 0xffff0000;
    actor = VenusActor(24);
    effect26->scale.x = *(int *)(actor + 0x18);
    VenusByte(&effect26->__unk55, 0);
    effect26->pos.x = 0x1300000;
    effect26->pos.y = 0xffe00000;
    effect26->pos.z = 0x600000;
    __Func_8092950(27, 7);
    actor = VenusActor(27);
    VenusSpriteFlags(actor, 0);
    actor = VenusActor(27);
    effect27 = (struct Actor *)actor;
    effect27->scale.y = 0xffff0000;
    actor = VenusActor(24);
    effect27->scale.x = *(int *)(actor + 0x18);
    VenusByte(&effect27->__unk55, 0);
    effect27->pos.x = 0x1300000;
    effect27->pos.y = 0;
    effect27->pos.z = 0x600000;
    __Func_8092950(28, 7);
    actor = VenusActor(28);
    VenusSpriteFlags(actor, 0);
    actor = VenusActor(28);
    effect28 = (struct Actor *)actor;
    effect28->scale.y = 0xffff0000;
    actor = VenusActor(24);
    effect28->scale.x = *(int *)(actor + 0x18);
    VenusByte(&effect28->__unk55, 0);
    effect28->pos.x = 0x1300000;
    effect28->pos.y = 0x200000;
    effect28->pos.z = 0x600000;
    API_CopyMapTiles(0x66, 4, 0x4a, 4, 18, 23);
    API_CopyMapTiles(0x27, 0x48, 11, 0x48, 16, 21);
    API_Func_8010704(19, 6, 3, 7, 22, 6);
    API_Func_8010704(19, 6, 3, 7, 13, 6);
    API_Func_8010704(19, 6, 3, 7, 22, 13);
    API_Func_8010704(19, 6, 3, 7, 13, 13);
    API_WaitFrames(1);
    actor = VenusActor(8);
    *(int *)(actor + 0x8) = (*(int *)(actor + 0x8) + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = VenusActor(9);
    *(int *)(actor + 0x8) = (*(int *)(actor + 0x8) + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = VenusActor(10);
    *(int *)(actor + 0x8) = (*(int *)(actor + 0x8) + 0x100000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = VenusActor(11);
    *(int *)(actor + 0x8) = (*(int *)(actor + 0x8) + 0x100000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = VenusActor(0);
    *(int *)(actor + 0x8) = (*(int *)(actor + 0x8) + 0x100000);
    *(int *)(actor + 0x10) = (*(int *)(actor + 0x10) + 0x100000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = VenusActor(1);
    *(int *)(actor + 0x8) = (*(int *)(actor + 0x8) + 0x100000);
    *(int *)(actor + 0x10) = (*(int *)(actor + 0x10) + 0x100000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = VenusActor(2);
    *(int *)(actor + 0x8) = (*(int *)(actor + 0x8) + 0x100000);
    *(int *)(actor + 0x10) = (*(int *)(actor + 0x10) + 0x100000);
    OvlFunc_969_200d688((unsigned int)actor);
    actor = VenusActor(3);
    *(int *)(actor + 0x8) = (*(int *)(actor + 0x8) + 0x100000);
    *(int *)(actor + 0x10) = (*(int *)(actor + 0x10) + 0x100000);
    OvlFunc_969_200d688((unsigned int)actor);
    API_MapActor_SetPos(21, 0xc40000, 0xdc0000);
    API_MapActor_SetAnim(21, 5);
    API_MapActor_SetPos(6, 0xbc0000, 0x13c0000);
    API_MapActor_SetAnim(6, 5);
    actor = VenusActor(6);
    VenusSpriteFlags(actor, 0);
    API_Func_8012330(0x40000, 0x40000, 0x10000);
    API_Func_8091200(0x4063ff, 0);
    API_Func_8091254(0x78);
    API_MapActor_SetBehavior(24, (int)gScript_969__0200e0d0);
    API_MapActor_SetBehavior(25, (int)gScript_969__0200e0d0);
    API_MapActor_SetBehavior(26, (int)gScript_969__0200e0d0);
    API_MapActor_SetBehavior(27, (int)gScript_969__0200e0d0);
    API_MapActor_SetBehavior(28, (int)gScript_969__0200e0d0);
    API_WaitFrames(0x78);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_Func_8091200(0x203210, 0);
    API_Func_8091254(0x78);
    API_WaitFrames(0x78);
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(0x78);
    API_WaitFrames(0x78);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    actor = VenusActor(24);
    *(int *)(actor + 0x1c) = 0x51e;
    API_MapActor_SetBehavior(25, (int)gScript_969__0200e0f4);
    API_MapActor_SetBehavior(26, (int)gScript_969__0200e0f4);
    API_MapActor_SetBehavior(27, (int)gScript_969__0200e0f4);
    __MapActor_RunScript(28, gScript_969__0200e0f4);
    API_PlaySound(0x121);
    __Func_8092950(24, 15);
    API_CutsceneWait(20);
    __MapActor_RunScript(24, gScript_969__0200e130);
    API_StopTask(OvlFunc_969_200b6d0);
    API_MapActor_Jump(2, 2, 20);
    OvlFunc_969_2008894(2);
    API_Func_8092adc(1, 0x6000, 20);
    API_MapActor_Surprise(1, 0x102);
    API_CutsceneWait(20);
    API_Func_809259c(1, 2);
    OvlFunc_969_2008894(1);
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(3, 0x146, 0xdc);
    API_CutsceneWait(0x28);
    API_MapActor_Surprise(3, 0x102);
    OvlFunc_969_2008894(3);
    waveActor = (struct Actor *)VenusActor(0);
    waveActor->__unk62 = 0;
    waveActor->__unk63 = 1;
    waveActor->__unk4C = waveActor->pos.y;
    waveStart = 0;
    waveActor->facing = 0xa000;
    waveActor = (struct Actor *)VenusActor(1);
    waveActor->__unk62 = waveStart;
    waveActor->__unk63 = 1;
    waveActor->facing = 0xa000;
    waveActor->__unk4C = waveActor->pos.y;
    waveActor = (struct Actor *)VenusActor(2);
    waveActor->__unk62 = waveStart;
    waveActor->__unk63 = 1;
    waveActor->facing = 0xa000;
    waveActor->__unk4C = waveActor->pos.y;
    waveActor = (struct Actor *)VenusActor(3);
    waveActor->__unk62 = waveStart;
    waveActor->__unk63 = 1;
    waveActor->facing = 0xa000;
    waveActor->__unk4C = waveActor->pos.y;
    waveActor = (struct Actor *)VenusActor(21);
    waveActor->__unk62 = waveStart;
    waveActor->__unk63 = 1;
    waveActor->__unk4C = waveActor->pos.y;
    waveActor = (struct Actor *)VenusActor(6);
    waveActor->__unk62 = waveStart;
    waveActor->__unk63 = 1;
    waveActor->__unk4C = waveActor->pos.y;
    ((struct Actor *)VenusActor(23))->__unk55 = waveStart;
    actor = VenusActor(23);
    VenusSpriteFlags(actor, 0);
    __Func_8092950(23, 7);
    API_Func_8092b08(23, 2);
    *(int *)CS_969_6764 = 0;
    *(int *)CS_969_6760 = 0xf0;
    API_StartTask(OvlFunc_969_200d6a0, 0xc80);
    do {
        API_WaitFrames(1);
    } while (!API_GetFlag(0x237));
    API_SetFlag(0x101);
    API_CutsceneWait(30);
    API_SetFlag(0x11a);
    __Func_808ba38();
    __SetDestMap((int)Lconst_2, 0x5b);
    VenusPalette(0x7fff, (volatile unsigned short *)0x5000000);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c8) = 1;
    API_MapTransitionOut();
    API_WaitMapTransition();
}

static inline void CS969B_API_CopyMapTiles(int a, int b, int c, int d, int e, int f) { extern void CS969B__CopyMapTiles(int, int, int, int, int, int) __asm__("__CopyMapTiles"); CS969B__CopyMapTiles(a, b, c, d, e, f); }
static inline void CS969B_API_Func_8010704(int a, int b, int c, int d, int e, int f) { extern void CS969B__Func_8010704(int, int, int, int, int, int) __asm__("__Func_8010704"); CS969B__Func_8010704(a, b, c, d, e, f); }
static inline void CS969B_API_Func_8012330(int a, int b, int c) { extern void CS969B__Func_8012330(int, int, int) __asm__("__Func_8012330"); CS969B__Func_8012330(a, b, c); }
static inline void CS969B_API_Func_8091200(int a0, int a1) { extern void CS969B__Func_8091200(int, int) __asm__("__Func_8091200"); CS969B__Func_8091200(a0, a1); }
static inline void CS969B_API_Func_8091220(int a0, int a1) { extern void CS969B__Func_8091220(int, int) __asm__("__Func_8091220"); CS969B__Func_8091220(a0, a1); }
static inline void CS969B_API_Func_8091254(int a0) { extern void CS969B__Func_8091254(int) __asm__("__Func_8091254"); CS969B__Func_8091254(a0); }
static inline void CS969B_API_Func_80933f8(int a0, int a1, int a2, int a3) { extern void CS969B__Func_80933f8(int, int, int, int) __asm__("__Func_80933f8"); CS969B__Func_80933f8(a0, a1, a2, a3); }
static inline void CS969B_API_MapActor_SetAnim(int a0, int a1) { extern void CS969B__MapActor_SetAnim(int, int) __asm__("__MapActor_SetAnim"); CS969B__MapActor_SetAnim(a0, a1); }
static inline void CS969B_API_MapTransitionIn(void) { extern void CS969B__MapTransitionIn(void) __asm__("__MapTransitionIn"); CS969B__MapTransitionIn(); }
static inline void CS969B_API_PlaySound(int a) { extern void CS969B__PlaySound(int a) __asm__("__PlaySound"); CS969B__PlaySound(a); }
static inline int CS969B_API_StartTask(void (*task)(void), unsigned int priority) { extern int CS969B__StartTask(void (*)(void), unsigned int) __asm__("__StartTask"); return CS969B__StartTask(task, priority); }
static inline void CS969B_API_WaitFrames(int a0) { extern void CS969B__WaitFrames(int) __asm__("__WaitFrames"); CS969B__WaitFrames(a0); }

void OvlFunc_969_200c8d8(void)
{
    extern void CS969B_Delete(int) __asm__("__DeleteFieldActor");
    extern struct Actor *CS969B_Actor(int) __asm__("__MapActor_GetActor");
    extern void CS969B_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
    extern void CS969B_UpdateCamera(void) __asm__("__Func_808bb2c");
    extern void CS969B_Refresh(void) __asm__("__Func_800fe9c");
    extern void CS969B_ActorFlags(int, int) __asm__("__Func_8092950");
    extern unsigned char *CS969B_Scene __asm__("iwram_3001ebc");
    extern void OvlFunc_969_200d688(unsigned int);
    extern void OvlFunc_969_200da28(void);
    struct Actor *actor0;
    struct Actor *actor1;
    struct Actor *actor2;
    struct Actor *actor3;

    CS969B_Delete(20);
    CS969B_Delete(19);
    CS969B_API_PlaySound(0x8d);
    CS969B_API_Func_8010704(17, 10, 4, 2, 17, 8);
    CS969B_API_CopyMapTiles(0x66, 4, 0x4a, 4, 18, 23);
    CS969B_API_CopyMapTiles(39, 72, 11, 72, 16, 21);
    CS969B_API_Func_8010704(19, 6, 3, 7, 22, 6);
    CS969B_API_Func_8010704(19, 6, 3, 7, 13, 6);
    CS969B_API_Func_8010704(19, 6, 3, 7, 22, 13);
    CS969B_API_Func_8010704(19, 6, 3, 7, 13, 13);
    CS969B_API_Func_8012330(0x20000, 0x20000, 0x10000);
    CS969B_API_Func_80933f8(-1, -1, -1, 0);
    CS969B_UpdateCamera();
    CS969B_Refresh();
    CS969B_API_WaitFrames(1);
    CS969B_API_PlaySound(0x8a);
    CS969B_API_MapActor_SetAnim(0, 19);
    CS969B_API_MapActor_SetAnim(1, 18);
    CS969B_API_MapActor_SetAnim(2, 18);
    CS969B_API_MapActor_SetAnim(3, 18);
    CS969B_SpriteFlags(CS969B_Actor(0), 0);
    CS969B_SpriteFlags(CS969B_Actor(1), 0);
    CS969B_SpriteFlags(CS969B_Actor(2), 0);
    CS969B_SpriteFlags(CS969B_Actor(3), 0);
    actor0 = CS969B_Actor(0);
    actor0->pos.x = 0x15a0000;
    actor0->pos.y = 0x200000;
    actor0->pos.z = 0xcd0000;
    OvlFunc_969_200d688((unsigned int)actor0);
    actor0->__unk63 = 0;
    actor0->motion.y = 0x20000;
    actor1 = CS969B_Actor(1);
    actor1->pos.x = 0x1640000;
    actor1->pos.y = 0x200000;
    actor1->pos.z = 0xc00000;
    OvlFunc_969_200d688((unsigned int)actor1);
    actor1->__unk63 = 0;
    actor1->motion.y = 0x20000;
    actor2 = CS969B_Actor(2);
    actor2->pos.x = 0x1680000;
    actor2->pos.y = 0x200000;
    actor2->pos.z = 0xde0000;
    OvlFunc_969_200d688((unsigned int)actor2);
    actor2->__unk63 = 0;
    actor2->motion.y = 0x20000;
    actor3 = CS969B_Actor(3);
    actor3->pos.x = 0x14e0000;
    actor3->pos.y = 0x200000;
    actor3->pos.z = 0xde0000;
    OvlFunc_969_200d688((unsigned int)actor3);
    actor3->__unk63 = 0;
    actor3->motion.y = 0x20000;
    CS969B_Actor(21)->__unk62 = 0;
    CS969B_Actor(6)->__unk62 = 0;
    CS969B_Actor(23)->__unk55 |= 4;
    CS969B_ActorFlags(23, 4);
    CS969B_API_StartTask(OvlFunc_969_200da28, 0xc80);
    *(int *)(CS969B_Scene + 0x1c8) = 1;
    CS969B_API_MapTransitionIn();
    CS969B_API_Func_8091220(0x7fff, 0);
    CS969B_API_Func_8091200(0x10000, 0);
    CS969B_API_Func_8091254(40);
    CS969B_API_WaitFrames(60);
}
extern void __MessageID(int);
extern void __PlaySound(int);
extern void __Func_8012330(int, int, int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);
extern void __CutsceneWait(int);
extern void __Func_80925cc(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __Func_809259c(int, int);
extern void OvlFunc_969_2008894(int);

static inline void MessageID(int a)
{
    __MessageID(a);
}

static inline void PlaySound(int a)
{
    __PlaySound(a);
}

static inline void Func_8012330(int a, int b, int c)
{
    __Func_8012330(a, b, c);
}

static inline void Func_80933d4(int a, int b)
{
    __Func_80933d4(a, b);
}

static inline void Func_80933f8(int a, int b, int c, int d)
{
    __Func_80933f8(a, b, c, d);
}

static inline void Func_8093530(void)
{
    __Func_8093530();
}

static inline void CutsceneWait(int a)
{
    __CutsceneWait(a);
}

static inline void Func_80925cc(int a, int b)
{
    __Func_80925cc(a, b);
}

static inline void ActorMessage_Wait(int a, int b, int c)
{
    __ActorMessage_Wait(a, b, c);
}

static inline void MapActor_Surprise(int a, int b)
{
    __MapActor_Surprise(a, b);
}

static inline void Func_809259c(int a, int b)
{
    __Func_809259c(a, b);
}

void OvlFunc_969_200cb28(void)
{
    MessageID(0x2829);
    OvlFunc_969_2008894(0x15);
    PlaySound(0x3e);
    Func_8012330(0x10000, 0x10000, 0x10000);
    Func_80933d4(0x4cccc, 0x9999);
    Func_80933d4(0x40000, 0x8000);
    Func_80933f8(0xc00000, 0xffc00000, 0xee0000, 1);
    Func_8093530();
    CutsceneWait(0x28);
    Func_80925cc(0x15, 1);
    ActorMessage_Wait(0x2015, 0, 0x28);
    Func_80925cc(6, 3);
    OvlFunc_969_2008894(6);
    MapActor_Surprise(0x15, 0x102);
    CutsceneWait(0x3c);
    ActorMessage_Wait(0x2015, 0, 0x50);
    MapActor_Surprise(6, 0x102);
    CutsceneWait(0x28);
    Func_809259c(6, 2);
    OvlFunc_969_2008894(6);
}

static inline void AerieCollapseHalf(unsigned char *p, int value) { *(unsigned short *)p = value; }
static inline void AerieCollapseByte(unsigned char *p, int value) { *p = value; }

void OvlFunc_969_200cbec(void)
{
    extern void OvlFunc_969_2008400(unsigned char *);
    extern unsigned char gScript_969__0200e074[];
    extern unsigned char gScript_969__0200e324[];
    extern unsigned char gScript_969__0200e360[];
    extern unsigned char gScript_969__0200e39c[];
    extern unsigned char gScript_969__0200e3c0[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_800c5b4(void);
    extern void __Func_800c5fc(void);
    extern void __Func_800fe9c(void);
    extern void __Func_8019aa0(int, int, int);
    extern int __Func_8091c7c(int, int);
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_969_2008894(int);
    extern void OvlFunc_969_20088a8(int, int);
    extern void OvlFunc_969_200d688(unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    int accepted;
    unsigned char * sceneActor;
    int resetPhase;
    int choice1;
    unsigned char *actor;
    unsigned char *transitionState;
    unsigned char *globalState;

    accepted = 0;
    API_MessageID(0x282e);
    API_MapActor_Surprise(21, 0x102);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x2015, 0, 20);
    API_Func_80925cc(6, 2);
    API_ActorMessage_Wait(6, 0, 20);
    API_MapActor_SetAnim(6, 6);
    API_CutsceneWait(10);
    API_Func_809259c(21, 2);
    API_ActorMessage_Wait(0x2015, 0, 0x28);
    API_MapActor_SetAnim(6, 7);
    API_ActorMessage_Wait(6, 0, 20);
    API_PlaySound(17);
    API_Func_80925cc(6, 2);
    API_MapActor_SetBehavior(6, (int)gScript_969__0200e324);
    API_CutsceneWait(20);
    API_MapActor_Surprise(21, 0x102);
    API_Func_809259c(21, 3);
    API_MapActor_WaitScript(6);
    API_CutsceneWait(0xa0);
    API_Func_80925cc(21, 1);
    API_CutsceneWait(20);
    actor = ((unsigned char *)__MapActor_GetActor(21));
    AerieCollapseHalf(actor + 0x6, 0x5000);
    API_MapActor_SetAnim(21, 0);
    API_CutsceneWait(0x50);
    API_MapActor_DoAnim(21, 4);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(21, 0, 0x28);
    API_MapActor_SetAnim(21, 5);
    API_CutsceneWait(10);
    actor = ((unsigned char *)__MapActor_GetActor(21));
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetAnim(21, 0);
    API_MapActor_Jump(21, 6, 0);
    API_MapActor_SetSpeed(21, 0x30000, 0x18000);
    actor = ((unsigned char *)__MapActor_GetActor(21));
    actor += 0x5a;
    AerieCollapseByte(actor, 0xfe & *actor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(21));
    *(int *)(sceneActor + 0x6c) = (int)OvlFunc_969_2008400;
    AerieCollapseHalf(sceneActor + 0x6, 0x8000);
    API_MapActor_TravelToWait(21, 0xb8, 0xed);
    __MapActor_RunScript(21, gScript_969__0200e360);
    API_CutsceneWait(0x78);
    OvlFunc_969_2008894(0);
    API_PlaySound(0x48);
    API_Func_80933d4(0x40000, 0x8000);
    API_Func_80933f8(0x1560000, 0x200000, 0xd40000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(0x28);
    actor = ((unsigned char *)__MapActor_GetActor(0));
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_Jump(0, 6, 0x3c);
    actor = ((unsigned char *)__MapActor_GetActor(0));
    actor += 0x64;
    AerieCollapseHalf(actor, 10);
    API_MapActor_SetBehavior(0, (int)gScript_969__0200e074);
    API_MapActor_Emote(1, 0x100, 0x50);
    API_ActorMessage_Wait(1, 0, 0x28);
    API_Func_80925cc(2, 1);
    API_CutsceneWait(20);
    OvlFunc_969_2008894(2);
    API_MapActor_Emote(3, 0x102, 0x28);
    OvlFunc_969_2008894(3);
    actor = ((unsigned char *)__MapActor_GetActor(1));
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_Jump(1, 6, 0x3c);
    API_Func_80925cc(2, 1);
    API_CutsceneWait(20);
    actor = ((unsigned char *)__MapActor_GetActor(2));
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetAnim(2, 1);
    API_MapActor_Jump(2, 6, 0x28);
    actor = ((unsigned char *)__MapActor_GetActor(3));
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetAnim(3, 1);
    API_MapActor_Jump(3, 6, 0x3c);
    API_Func_8092adc(1, 0x6000, 0x3c);
    API_MapActor_SetAnim(1, 4);
    OvlFunc_969_2008894(1);
    API_Func_8092adc(2, 0x6000, 20);
    API_MapActor_SetAnim(2, 4);
    OvlFunc_969_2008894(2);
    OvlFunc_969_20088a8(3, 0x6000);
    API_MapActor_SetAnim(3, 4);
    API_ActorMessage_Wait(3, 0, 0x50);
    OvlFunc_969_20088a8(1, 0x4000);
    API_ActorMessage_Wait(1, 0, 0x28);
    API_Func_8092adc(2, 0xc000, 20);
    API_ActorMessage_Wait(2, 0, 0x28);
    API_Func_809259c(1, 1);
    API_Func_80925cc(2, 1);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(2, 0x6000, 20);
    API_Func_80925cc(3, 1);
    API_Func_8092adc(3, 0xe000, 20);
    OvlFunc_969_2008894(3);
    API_MapActor_Emote(1, 0x100, 20);
    OvlFunc_969_20088a8(1, 0x4000);
    OvlFunc_969_2008894(1);
    API_Func_8092adc(2, 0xa000, 0);
    API_MapActor_SetSpeed(1, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(1, 0x14d, 0xc2);
    API_MapActor_TravelToAnimWait(1, 0x14d, 0xce);
    API_Func_8092adc(1, 0, 20);
    API_Func_80925cc(1, 1);
    API_ActorMessage_Wait(1, 0, 0x50);
    API_MapActor_SetIdle(0);
    API_WaitFrames(1);
    *(int *)(sceneActor + 0x18) = 0x10000;
    *(int *)(sceneActor + 0x1c) = 0x10000;
    API_CutsceneWait(0x28);
    API_MapActor_Emote(0, 0x100, 0x50);
    OvlFunc_969_20088a8(1, 0x2000);
    API_MapActor_Jump(1, 4, 0);
    OvlFunc_969_2008894(1);
    OvlFunc_969_20088a8(1, 0xe000);
    __ShowActorMessage_NoWait(1, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(1, 3);
        OvlFunc_969_2008894(1);
        API_Func_80925cc(2, 1);
        OvlFunc_969_2008894(2);
        API_MapActor_SetAnim(3, 4);
        OvlFunc_969_2008894(3);
        accepted = 1;
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 3);
        API_CutsceneWait(0x3c);
        OvlFunc_969_2008894(1);
        API_Func_80925cc(2, 1);
        OvlFunc_969_2008894(2);
        API_MapActor_SetAnim(3, 4);
        OvlFunc_969_2008894(3);
    }
    if (accepted != 0) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 3);
    }
    OvlFunc_969_20088a8(0, 0x4000);
    API_MapActor_Surprise(0, 0x102);
    API_CutsceneWait(0x50);
    API_PlaySound(17);
    API_MapActor_Emote(1, 0x100, 20);
    API_Func_8092adc(1, 0xa000, 20);
    API_Func_8092adc(1, 0xe000, 0x28);
    API_Func_8092adc(1, 0x8000, 20);
    API_MapActor_Emote(2, 0x101, 0x28);
    OvlFunc_969_2008894(2);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x2000, 20);
    API_MapActor_SetAnim(1, 4);
    OvlFunc_969_2008894(1);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0x8000, 0x28);
    API_Func_8092adc(2, 0xa000, 0);
    API_Func_8092adc(3, 0xc000, 0x28);
    API_MapActor_Surprise(3, 0x102);
    API_CutsceneWait(0x3c);
    OvlFunc_969_2008894(3);
    API_PlaySound(0x8d);
    API_Func_8012330(0x60000, 0x60000, 0x10000);
    API_CutsceneWait(0x28);
    API_PlaySound(0x91);
    API_CopyMapTiles(0x6e, 0x69, 0x4a, 4, 18, 23);
    API_CopyMapTiles(0x5c, 0x56, 0x53, 4, 8, 23);
    API_CopyMapTiles(0x4b, 28, 0x4b, 4, 8, 23);
    API_CopyMapTiles(0x5c, 0x56, 11, 0x48, 16, 20);
    API_CopyMapTiles(19, 0x5c, 19, 0x44, 8, 21);
    sceneActor = ((unsigned char *)__MapActor_GetActor(0));
    resetPhase = 0;
    *(int *)(sceneActor + 0x10) = (*(int *)(sceneActor + 0x10) + 0xffe00000);
    *(unsigned short *)(sceneActor + 0x66) = resetPhase;
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(1));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfffc0000);
    *(int *)(sceneActor + 0x10) = (*(int *)(sceneActor + 0x10) + 0xffe00000);
    *(unsigned short *)(sceneActor + 0x66) = resetPhase;
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(2));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfffc0000);
    *(int *)(sceneActor + 0x10) = (*(int *)(sceneActor + 0x10) + 0xffe00000);
    *(unsigned short *)(sceneActor + 0x66) = resetPhase;
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(3));
    ((Fx32Parts *)(sceneActor + 0x8))->raw += 0xfffc0000;
    ((Fx32Parts *)(sceneActor + 0x10))->raw += 0xffee0000;
    *(unsigned short *)(sceneActor + 0x66) = resetPhase;
    OvlFunc_969_200d688((unsigned int)sceneActor);
    actor = ((unsigned char *)__MapActor_GetActor(23));
    *(int *)(actor + 0xc) = 0x380000;
    API_Func_80933f8(0x1520000, 0x200000, 0xb40000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_Emote(2, 0x100, 0);
    API_MapActor_Emote(3, 0x100, 0);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 0);
    API_MapActor_Jump(2, 6, 0);
    API_MapActor_Jump(3, 6, 0);
    API_MapActor_SetBehavior(0, (int)gScript_969__0200e3c0);
    API_MapActor_SetBehavior(1, (int)gScript_969__0200e3c0);
    API_MapActor_SetBehavior(2, (int)gScript_969__0200e3c0);
    API_MapActor_SetBehavior(3, (int)gScript_969__0200e3c0);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_CutsceneWait(0x50);
    API_Func_8012330(0x60000, 0x60000, 0x10000);
    API_CutsceneWait(0x28);
    API_PlaySound(0x91);
    API_Func_8010704(0x6e, 0x6a, 18, 14, 10, 5);
    API_CopyMapTiles(0x6e, 0x69, 0x4a, 4, 18, 23);
    API_CopyMapTiles(0x5c, 0x56, 11, 0x44, 16, 20);
    sceneActor = ((unsigned char *)__MapActor_GetActor(0));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(1));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(2));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(3));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(8));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0x100000);
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(9));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0x100000);
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(10));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)sceneActor);
    sceneActor = ((unsigned char *)__MapActor_GetActor(11));
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfff00000);
    OvlFunc_969_200d688((unsigned int)sceneActor);
    API_Func_80933f8(0x1420000, 0x200000, 0xb40000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_MapActor_Surprise(2, 0x102);
    API_MapActor_Surprise(3, 0x102);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 0);
    API_MapActor_Jump(2, 6, 0);
    API_MapActor_Jump(3, 6, 0);
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(0x50);
    API_PlaySound(0x121);
    API_CutsceneWait(0x28);
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_MapActor_SetIdle(2);
    API_MapActor_SetIdle(3);
    API_CutsceneWait(0x78);
    API_MapActor_Emote(2, 0x105, 0x78);
    API_Func_80925cc(2, 1);
    API_Func_8092adc(2, 0xa000, 20);
    OvlFunc_969_2008894(2);
    API_MapActor_DoAnim(1, 3);
    API_Func_8092adc(1, 0x2000, 0);
    OvlFunc_969_2008894(1);
    API_Func_8092adc(3, 0xe000, 20);
    API_MapActor_SetAnim(3, 4);
    OvlFunc_969_2008894(3);
    API_MapActor_Jump(2, 2, 20);
    OvlFunc_969_2008894(2);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    OvlFunc_969_20088a8(1, 0);
    OvlFunc_969_2008894(1);
    API_Func_8092adc(0, 0x8000, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    API_MapActor_SetBehavior(1, (int)gScript_969__0200e39c);
    API_MapActor_SetBehavior(2, (int)gScript_969__0200e39c);
    API_MapActor_SetBehavior(3, (int)gScript_969__0200e39c);
    API_CutsceneWait(0x3c);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0x110, 0xd8);
    API_MapActor_TravelToAnim(0, 0x110, 0xfe);
    API_CutsceneWait(0x50);
    transitionState = *(unsigned char **)CS_iwram_3001ebc;
    *(int *)(transitionState + 0x1c0) = 0x201;
    *(int *)(transitionState + 0x1c8) = 16;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneWait(0x50);
    __Func_800c5b4();
    globalState = *(unsigned char **)(CS_iwram_3001ebc - 0x30);
    *(unsigned short *)(globalState + 0x12f4) = resetPhase;
    *(unsigned short *)(globalState + 0x12f6) = resetPhase;
    __Func_8019aa0(0x284f, 0, 0);
    __Func_800c5fc();
    API_CutsceneWait(0x50);
}

void OvlFunc_969_200d688(unsigned int arg0) {
    unsigned int r3;
    r3 = 0x80 << 24;
    *(unsigned int *)(arg0 + 0x38) = r3;
    *(unsigned int *)(arg0 + 0x3c) = r3;
    *(unsigned int *)(arg0 + 0x40) = r3;
    r3 = 0;
    *(unsigned int *)(arg0 + 0x24) = r3;
    *(unsigned int *)(arg0 + 0x28) = r3;
    *(unsigned int *)(arg0 + 0x2c) = r3;
    *(unsigned short *)(arg0 + 0x64) = r3;
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200d6a0.s");

void OvlFunc_969_200d9f0(struct Actor *actor) {
    if (actor->__unk63 != 0) {
        actor->pos.y = actor->__unk4C + ((actor->__unk62 >> 2) << 16);
        OvlFunc_969_200d688((unsigned int)actor);
        if (actor->__unk62 != 0) {
            if (actor->__unk62 <= 0x1f) {
                actor->__unk62 += 1;
            }
        }
    }
}




extern int _divsi3_RAM(int, int);
extern void __Actor_SetScript(struct Actor *, const void *);
extern void __Func_80929d8(struct Actor *, int);
extern unsigned int __Random(void);
extern int __sin(int);
extern void OvlFunc_969_200db90(struct Actor *);
extern const u8 gScript_969__0200e734[];
extern void *iwram_3001e70;
extern unsigned int iwram_3001e40;

void OvlFunc_969_200da28(void)
{
    struct Actor *actor;
    struct Actor *newActor;
    struct Sprite *sprite;
    u8 *ptr;
    s16 *gate;
    int r8;
    int flags;
    u32 randVal;

    actor = __MapActor_GetActor(0x17);
    ptr = (u8 *)iwram_3001e70;
    r8 = ((__Random() * 48) >> 16) << 16;
    gate = (s16 *)(ptr + 0xe8);
    if (gate[1] <= 0x81) {
        if (iwram_3001e40 & 1) {
            API_MapActor_SetPos(0x17, 0x1300000, 0xa40000);
            __MapActor_GetActor(0x17)->scale.x = 0x10000;
            __MapActor_GetActor(0x17)->scale.y = 0x10000;
        } else {
            API_MapActor_SetPos(0x17, 0x1300000, 0xab0000);
            __MapActor_GetActor(0x17)->scale.x = 0x14ccc;
            __MapActor_GetActor(0x17)->scale.y = 0x14ccc;
        }
    } else {
        API_MapActor_SetPos(0x17, 0, 0);
    }

    if (actor != NULL) {
        flags = iwram_3001e40 & 0xf;
        if (flags == 0) {
            newActor = API_CreateActor(0x11c,
                                     actor->pos.x + 0x80000,
                                     actor->pos.y + r8 + 0x80000,
                                     actor->pos.z);
            r8 = _divsi3_RAM(r8, 0x60000);
            r8 <<= 16;
            if (newActor != NULL) {
                sprite = newActor->sprite;
                __Actor_SetScript(newActor, gScript_969__0200e734);
                __Func_80929d8(newActor, 5);
                newActor->__unk55 = flags;
                randVal = __Random() & 0x0ffff000;
                newActor->waveCounter = randVal;
                newActor->__unk66 = flags;
                newActor->linkedActor = actor;
                newActor->update = (actorfun_t)OvlFunc_969_200db90;
                newActor->speed = (__sin((r8 & 0xfffff) >> 4) * 24) >> 16;
                *(char *)&sprite->flags = 0;
                sprite->oam.priority = actor->sprite->oam.priority;
            }
        }
    }
}
extern int __cos(int);
extern int __sin(int);

void OvlFunc_969_200db90(struct Actor *actor)
{
    u16 angle = actor->waveCounter;
    struct Actor *linked = actor->linkedActor;

    actor->pos.x = linked->pos.x + __cos(angle) * (actor->speed + 0x1c);
    actor->pos.z = (0xa4 << 16) + (__sin(angle) << 4);
    actor->prevPos.x = actor->pos.x;
    actor->prevPos.z = actor->pos.z;
    actor->waveCounter -= 0x200;
}
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/venus_lighthouse_aerie_data.s");
