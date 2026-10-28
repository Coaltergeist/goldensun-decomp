/* rom_7b0400 (overlay file 925): consolidated TU — mercury_lighthouse_aerie map overlay. */

#include "nonmatching.h"
#include "api.h"

extern void *__MapActor_GetActor(int);
extern void __SetFlag(int);
extern void __WaitFrames(int);

extern unsigned char gOvl_0200b938[];

unsigned int MercuryLighthouseAerie_GetEntrances(void) {
    return (unsigned int)gOvl_0200b938;
}

int MercuryLighthouseAerie_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200b9c8[];

void *MercuryLighthouseAerie_GetExits(void) {
    return (void *)gOvl_0200b9c8;
}

extern unsigned char gState[];
extern unsigned char L39d4[] __asm__(".Lm925_39d4");

unsigned int MercuryLighthouseAerie_GetActors(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);
    if (val != 1) {
        __SetFlag(0x253);
    }
    return (unsigned int)L39d4;
}

extern unsigned char gOvl_0200bbe4[];

void *MercuryLighthouseAerie_GetEvents(void) {
    return (void *)gOvl_0200bbe4;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/MercuryLighthouseAerie_MapInit.s");

void OvlFunc_925_200856c(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_800fe9c(void);
    extern void __Func_8078144(void);
    extern unsigned int __Func_8093554(void);
    unsigned int flagValue1;
    struct Actor *actor;

    API_CutsceneStart();
    __Func_8078144();
    actor = (struct Actor *)__MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    actor = (struct Actor *)__MapActor_GetActor(1);
    __Actor_SetSpriteFlags(actor, 0);
    actor = (struct Actor *)__MapActor_GetActor(2);
    __Actor_SetSpriteFlags(actor, 0);
    actor = (struct Actor *)__MapActor_GetActor(3);
    __Actor_SetSpriteFlags(actor, 0);
    API_Func_80933f8(0x1300000, -1, 0x780000, 0);
    API_WaitFrames(1);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_PlaySound(0x8d);
    API_Func_8012330(0x50000, 0x50000, 0x10000);
    API_PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x100;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_Func_8012350();
    API_CutsceneWait(30);
    flagValue1 = __Func_8093554();
    *(unsigned char *)(flagValue1 + 0x55) = 0;
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x2000000, 0xffe80000, 0xa00000, 1);
    API_Func_8093530();
    API_Func_8091220(0x10000, 0);
    API_Func_8091200(0x10005, 0);
    API_Func_8091254(0x32);
    API_CutsceneWait(0x32);
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(30);
    API_CutsceneWait(30);
    API_MapActor_SetPos(0, 0x1f80000, 0xa80000);
    API_MapActor_SetPos(1, 0x2100000, 0x900000);
    API_MapActor_SetPos(2, 0x1e80000, 0x900000);
    API_MapActor_SetPos(3, 0x2000000, 0x980000);
    API_MapActor_SetAnim(0, 19);
    API_MapActor_SetAnim(1, 19);
    API_MapActor_SetAnim(2, 19);
    API_MapActor_SetAnim(3, 19);
    API_CutsceneWait(10);
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(30);
    API_CutsceneWait(30);
    API_CutsceneWait(0x50);
    actor = (struct Actor *)__MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(0, 4);
    API_Func_8092adc(0, 0xc000, 20);
    API_Func_809259c(0, 2);
    API_CutsceneWait(0x3c);
    actor = (struct Actor *)__MapActor_GetActor(1);
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetAnim(1, 1);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0x2000, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0x6000, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0, 0);
    actor = (struct Actor *)__MapActor_GetActor(2);
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetAnim(2, 1);
    API_Func_8092adc(1, 0x6000, 0);
    API_CutsceneWait(0x28);
    actor = (struct Actor *)__MapActor_GetActor(3);
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetAnim(3, 1);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
    API_MapActor_SetAnim(1, 2);
    API_MapActor_SetAnim(2, 2);
    API_MapActor_SetAnim(3, 2);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_CutsceneEnd();
}

extern int Func_8000948(int);

int OvlFunc_925_2008890(int *a, int *b)
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

struct ActorLayer {
    short spriteID;
};

struct ActorSprite {
    char pad[0x28];
    struct ActorLayer *layers[1];
};

struct MapActor {
    char pad[8];
    int pos[3];
    char pad2[0x3c];
    struct ActorSprite *sprite;
};

struct MapActors {
    char pad[0x14];
    struct MapActor *actors[66];
};

extern struct MapActors *iwram_3001ebc;

int OvlFunc_925_20088cc(void)
{
    struct MapActor *actor0;
    int minDist;
    int bestActor;
    unsigned int i;
    struct MapActors *mgr;

    mgr = iwram_3001ebc;
    bestActor = 0;
    minDist = 0xa0 << 2;
    actor0 = (struct MapActor *)__MapActor_GetActor(0);

    for (i = 8; i <= 0x41; i++) {
        struct MapActor *actor = mgr->actors[i];
        if (actor != 0) {
            if (actor->sprite->layers[0]->spriteID == 0xf2) {
                int dist = OvlFunc_925_2008890(actor0->pos, actor->pos);
                if (dist < minDist) {
                    minDist = dist;
                    bestActor = i;
                }
            }
        }
    }

    return bestActor;
}
struct Actor;

struct ActorData {
    void *script;
    unsigned short scriptPos;
    unsigned short facing;
    int pos[3];
    int floorPos;
    int scale[2];
    unsigned short width;
    unsigned char layer;
    unsigned char flags;
    int motion[3];
    int speed;
    int accel;
    int prevPos[3];
    int bounce;
    int gravity;
    int unk4C;
    void *sprite;
    unsigned char visible;
    unsigned char unk55;
};

void __vec3_translate(int, int, void *);
int __TestCollision(void *, void *);
void __ClearFlag(int);
void OvlFunc_925_2008ad0(void);
void __Actor_SetAnim(struct Actor *, int);
void __PlaySound(int);
void __Actor_SetSpriteFlags(struct Actor *, int);
void __MapActor_TravelToWait(int, int, int);

void OvlFunc_925_2008928(void)
{
    struct ActorData *actor;
    int angle;
    unsigned char unk55;
    int pos[3];

    actor = (struct ActorData *)__MapActor_GetActor(0);
    angle = (actor->facing + (0x80 << 5)) & (0xe0 << 8);
    unk55 = actor->unk55;
    pos[0] = (actor->pos[0] & 0xfff00000) + (0x80 << 12);
    pos[1] = actor->pos[1];
    pos[2] = (actor->pos[2] & 0xfff00000) + (0x80 << 12);
    __vec3_translate(0x80 << 14, angle, pos);
    if (__TestCollision(actor, pos) == 0) {
        __ClearFlag(0x94 << 2);
        OvlFunc_925_2008ad0();
        __Actor_SetAnim((struct Actor *)actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim((struct Actor *)actor, 7);
        actor->speed = 0xc0 << 10;
        actor->accel = 0x80 << 10;
        actor->motion[1] = 0x80 << 11;
        actor->unk55 &= 0x7e;
        __Actor_SetSpriteFlags((struct Actor *)actor, 0);
        __MapActor_TravelToWait(0, pos[0] >> 16, pos[2] >> 16);
        __Actor_SetAnim((struct Actor *)actor, 6);
        __Actor_SetSpriteFlags((struct Actor *)actor, 1);
        actor->unk55 = unk55;
    }
}
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int OvlFunc_925_20088cc(void);
extern int L3c50 __asm__(".Lm925_3c50");

void OvlFunc_925_20089fc(void)
{
    unsigned char *actor1;
    unsigned char *actor2;

    actor1 = (unsigned char *)__MapActor_GetActor(0);
    __CutsceneStart();
    L3c50 = OvlFunc_925_20088cc();
    if (L3c50 != 0) {
        __SetFlag(0x250);
        actor2 = (unsigned char *)__MapActor_GetActor(L3c50);
        actor2[0x55] = 0;
        actor1[0x55] &= 0xfe;
        *(int *)(actor2 + 0xc) += -0x30000;
        *(int *)(actor1 + 0xc) += -0x30000;
        *(int *)(actor1 + 0x14) += -0x30000;
        __WaitFrames(2);
        *(int *)(actor2 + 0xc) += -0x20000;
        *(int *)(actor1 + 0xc) += -0x20000;
        *(int *)(actor1 + 0x14) += -0x20000;
        __WaitFrames(10);
        *(int *)(actor2 + 0xc) += 0x20000;
        *(int *)(actor1 + 0xc) += 0x20000;
        *(int *)(actor1 + 0x14) += 0x20000;
        __WaitFrames(4);
        *(int *)(actor2 + 0xc) += 0x20000;
        *(int *)(actor1 + 0xc) += 0x20000;
        *(int *)(actor1 + 0x14) += 0x20000;
        __WaitFrames(4);
        *(int *)(actor2 + 0xc) += 0x10000;
        *(int *)(actor1 + 0xc) += 0x10000;
        *(int *)(actor1 + 0x14) += 0x10000;
    }
    __CutsceneEnd();
}

void OvlFunc_925_2008ad0(void) {
    *(unsigned char *)(__MapActor_GetActor(0) + 0x55) = 3;
    *(unsigned char *)(__MapActor_GetActor(0xe) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0xf) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x10) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x11) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x12) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x13) + 0x55) = 4;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_2008b24.s");

/* Record at graphics-state + 0x164; only its word at +0x0c is used here. */
struct MercuryGraphicsSlice { int prefix[3]; int fieldC; };

void OvlFunc_925_2009af0(void)
{
    /* iwram_3001ebc is iwram_3001e70 + 0x4c; both are addressed from one base below. */
    extern unsigned char CS_iwram_3001e70[] __asm__("iwram_3001e70");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(struct Actor *, int);
    extern void __Func_800fe9c(void);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8092950(int, int);
    extern void * __Func_8093554(void);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_925_200af18(void);
    extern void OvlFunc_925_200b060(void);
    extern void OvlFunc_925_200b208(void);
    extern void OvlFunc_925_200b324(void);
    extern void __PlayMapMusic(void);
    extern int __ShowActorMessage_NoWait(int, int);
    void * firstCamera;
    int choice2;
    int choice3;
    void * secondCamera;
    int choice5;
    int choice6;
    int choice7;
    int choice8;
    unsigned char *actor;

    API_CutsceneStart();
    actor = __MapActor_GetActor(9);
    actor += 0x55;
    *actor = 0;
    API_MapActor_SetPos(0, 0x1580000, 0xe00000);
    API_MapActor_SetPos(1, 0x1480000, 0xe00000);
    API_MapActor_SetPos(2, 0x1580000, 0xe80000);
    API_MapActor_SetPos(3, 0x1480000, 0xe80000);
    API_Func_8092adc(0, 0xa000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_MapActor_SetPos(22, 0x1500000, 0xb00000);
    API_MapActor_SetAnim(22, 9);
    actor = __MapActor_GetActor(22);
    __Actor_SetSpriteFlags((struct Actor *)actor, 0);
    API_Func_80933f8(0x1500000, -1, 0xd00000, 0);
    API_WaitFrames(1);
    __Func_800fe9c();
    API_WaitFrames(1);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x100;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x3c);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0, 20);
    API_MessageID(0x15d4);
    API_ActorMessage_Wait(1, 0, 20);
    API_Func_8092adc(0, 0x8000, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(22, 0, 20);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 20);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_ActorMessage_Wait(2, 0, 20);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(22, 0, 30);
    API_MapActor_SetPos(24, 0x1380000, 0x700000);
    API_PlaySound(0x120);
    API_ActorMessage_Wait(24, 0, 20);
    API_MapActor_Emote(3, 0x100, 0x3c);
    API_ActorMessage_Wait(3, 0, 30);
    API_PlaySound(29);
    API_Func_80933d4(0xcccc, 0x1999);
    firstCamera = __Func_8093554();
    *(unsigned char *)(((unsigned char *)firstCamera) + 0x55) = 0;
    API_Func_80933f8(0x1500000, -1, 0xa80000, 1);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(24, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(24, 0x158, 0x88);
    API_Func_8092adc(24, 0x5000, 20);
    API_Func_8093530();
    API_ActorMessage_Wait(3, 0, 30);
    API_Func_80933f8(0x1500000, -1, 0xb80000, 1);
    API_MapActor_TravelToAnimWait(24, 0x158, 0xa0);
    API_MapActor_TravelToAnimWait(24, 0x148, 0xa8);
    API_MapActor_TravelToAnimWait(24, 0x138, 0xb0);
    API_Func_8092adc(24, 0x3000, 20);
    API_Func_8093530();
    API_MapActor_DoAnim(24, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(2, 0x8000, 20);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_DoAnim(24, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_8092adc(1, 0x2000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_Func_8092adc(3, 0xe000, 0x3c);
    API_Func_8092adc(24, 0xb000, 20);
    API_Func_8092adc(0, 0xa000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_Func_8092adc(3, 0xc000, 20);
    API_ActorMessage_Wait(24, 0, 20);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_809259c(24, 2);
    API_MapActor_Emote(24, 0x100, 0x3c);
    API_Func_8092adc(24, 0x3000, 20);
    API_ActorMessage_Wait(24, 0, 20);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_MapActor_DoAnim(24, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_DoAnim(24, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_TravelToAnimWait(24, 0x138, 0xb8);
    API_Func_8092adc(24, 0x3000, 20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0, 20);
    __ShowActorMessage_NoWait(1, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        API_Func_80925cc(1, 2);
        API_ActorMessage_Wait(1, 0, 20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_Func_80925cc(1, 1);
        API_ActorMessage_Wait(1, 0, 20);
    }
    API_ActorMessage_Wait(2, 0, 20);
    API_Func_8092adc(1, 0xc000, 20);
    API_MapActor_DoAnim(24, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_8092adc(24, 0xd000, 20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_8092adc(24, 0x3000, 20);
    API_MapActor_DoAnim(24, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(24, 0, 20);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_DoAnim(24, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_8092adc(24, 0xb000, 20);
    API_ActorMessage_Wait(24, 0, 20);
    API_CutsceneWait(10);
    API_Func_80925cc(24, 2);
    API_CutsceneWait(30);
    API_ActorMessage(24, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(24, 0x2000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(24, 4);
    API_CutsceneWait(20);
    API_ActorMessage(24, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(24, 2);
    API_CutsceneWait(30);
    API_ActorMessage(24, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x100, 0x3c);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(24, 3);
    API_CutsceneWait(30);
    API_ActorMessage(24, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(24, 2);
    API_CutsceneWait(30);
    API_ActorMessage(24, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(24, 0x1000, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(24, 0x108, 0x3c);
    API_CutsceneWait(10);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(22, 8);
    API_CutsceneWait(0x2d);
    API_MapActor_SetAnim(22, 1);
    actor = __MapActor_GetActor(22);
    __Actor_SetSpriteFlags((struct Actor *)actor, 1);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(2, 0x102, 0x3c);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(22, 0x2000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(22, 4);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(24, 0x2000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(24, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(24, 22, 0);
    API_CutsceneWait(0x23);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(24, 3);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnimWait(24, 0x148, 0xb0);
    API_Func_8092adc(24, 0x3000, 20);
    API_MapActor_SetAnim(24, 5);
    API_MapActor_SetAnim(22, 7);
    API_CutsceneWait(20);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(24, 0x101, 0x3c);
    __ShowActorMessage_NoWait(24, 0);
    API_CutsceneWait(30);
    API_Func_809259c(1, 2);
    API_Func_809259c(2, 2);
    API_Func_80925cc(3, 2);
    API_Func_8092adc(1, 0, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xe000, 0);
    API_CutsceneWait(20);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 0) {
        API_CutsceneWait(30);
        API_ActorMessage(24, 0);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(30);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage(24, 0);
    }
    API_CutsceneWait(20);
    API_MapActor_DoAnim(24, 4);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(24, 0);
    API_Func_80925cc(22, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(22, 0, 20);
    OvlFunc_925_200af18();
    API_CutsceneWait(20);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(2, 2);
    API_Func_80925cc(3, 2);
    API_Func_8092adc(0, 0, 5);
    API_Func_8092adc(1, 0xe000, 5);
    API_Func_8092adc(2, 0xa000, 5);
    API_Func_8092adc(3, 0x8000, 5);
    API_Func_8092adc(0, 0xe000, 5);
    API_Func_8092adc(1, 0xa000, 5);
    API_Func_8092adc(2, 0x8000, 5);
    API_Func_8092adc(3, 0, 5);
    secondCamera = __Func_8093554();
    *(unsigned char *)(((unsigned char *)secondCamera) + 0x55) = 0;
    API_Func_80933f8(0x1180000, -1, 0xe80000, 1);
    API_Func_8093530();
    __Func_8092950(22, 15);
    __Func_8092950(24, 15);
    API_MapActor_SetPos(22, 0xf00000, 0xd00000);
    API_MapActor_SetPos(24, 0xe80000, 0xd00000);
    API_Func_8092adc(22, 0x5000, 0);
    API_Func_8092adc(24, 0x3000, 0);
    OvlFunc_925_200b060();
    API_Func_8092adc(0, 0x8000, 10);
    API_Func_8092adc(1, 0x8000, 15);
    API_Func_8092adc(2, 0x8000, 0);
    API_Func_8092adc(3, 0x8000, 20);
    API_MapActor_TravelToAnim(0, 0x148, 0xd0);
    API_MapActor_TravelToAnim(2, 0x150, 0xe0);
    API_MapActor_TravelToAnimWait(1, 0x138, 0xd8);
    API_Func_8092adc(1, 0x8000, 0);
    API_MapActor_WaitMovement(2);
    API_Func_8092adc(2, 0x8000, 0);
    API_MapActor_WaitMovement(0);
    API_Func_8092adc(0, 0x8000, 30);
    API_ActorMessage_Wait(1, 0, 20);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(1, 0x5000, 20);
    API_ActorMessage_Wait(1, 0, 20);
    API_Func_8092adc(1, 0x8000, 20);
    API_Func_80925cc(2, 1);
    API_Func_8092adc(2, 0x6000, 20);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(2, 0x8000, 20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_80933d4(0x30000, 0x6000);
    API_Func_80933f8(0x980000, -1, 0xd80000, 1);
    ((struct MercuryGraphicsSlice *)(*(unsigned char **)CS_iwram_3001e70 + 0x164))->fieldC = 0x3800000;
    __Func_800fe9c();
    API_WaitFrames(1);
    actor = __MapActor_GetActor(9);
    actor += 0x55;
    *actor = 0;
    API_MapActor_SetPos(9, 0x680000, 0x1080000);
    actor = __MapActor_GetActor(9);
    *(int *)(actor + 0xc) = 0xffe00000;
    actor = __MapActor_GetActor(9);
    *(int *)(actor + 0x3c) = 0xffe00000;
    API_CopyMapTiles(29, 0x4a, 4, 0x4a, 5, 4);
    API_Func_8092b08(17, 0);
    API_Func_8092b08(18, 0);
    OvlFunc_925_200b324();
    API_Func_8092b08(17, 1);
    API_Func_8092b08(18, 1);
    API_Func_8093530();
    API_CutsceneWait(30);
    API_Func_8092adc(24, 0x8000, 20);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_80933f8(0x1180000, -1, 0xd80000, 1);
    API_Func_8093530();
    API_Func_8092adc(24, 0x3000, 20);
    API_MapActor_SetAnim(24, 5);
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(2, 0xa000, 20);
    API_ActorMessage_Wait(2, 0, 20);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_Emote(24, 0x101, 0x3c);
    __ShowActorMessage_NoWait(24, 0);
    choice5 = __Func_8091c7c(0, 0);
    if (choice5 == 0) {
        API_CutsceneWait(20);
        API_Func_80925cc(22, 2);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(22, 0, 20);
        *(unsigned short *)(*(int *)(CS_iwram_3001e70 + 0x4c) + 0x1d8) = (*(unsigned short *)(*(int *)(CS_iwram_3001e70 + 0x4c) + 0x1d8) + 1);
    } else {
        *(unsigned short *)(*(int *)(CS_iwram_3001e70 + 0x4c) + 0x1d8) = (*(unsigned short *)(*(int *)(CS_iwram_3001e70 + 0x4c) + 0x1d8) + 1);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(22, 0, 20);
    }
    API_Func_80925cc(24, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(24, 0, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0x3c);
    __ShowActorMessage_NoWait(24, 0);
    choice6 = __Func_8091c7c(0, 0);
    if (choice6 == 0) {
        API_CutsceneWait(20);
        API_Func_80925cc(24, 2);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(24, 0, 20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_CutsceneWait(20);
        API_Func_80925cc(24, 1);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(24, 0, 20);
    }
    API_CutsceneWait(20);
    OvlFunc_925_200af18();
    API_CutsceneWait(20);
    API_Func_80933f8(0x800000, -1, 0xc80000, 1);
    API_Func_8093530();
    API_MapActor_SetAnim(22, 1);
    API_MapActor_SetAnim(24, 1);
    __Func_8092950(22, 15);
    __Func_8092950(24, 15);
    API_MapActor_SetPos(22, 0x780000, 0x980000);
    API_MapActor_SetPos(24, 0x700000, 0xa00000);
    API_Func_8092adc(22, 0x5000, 0);
    API_Func_8092adc(24, 0x3000, 0);
    OvlFunc_925_200b060();
    API_CutsceneWait(30);
    API_Func_8092adc(24, 0, 20);
    __ShowActorMessage_NoWait(24, 0);
    choice7 = __Func_8091c7c(0, 0);
    if (choice7 == 0) {
        API_MapActor_DoAnim(24, 3);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(24, 0, 20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_MapActor_DoAnim(24, 4);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(24, 0, 20);
    }
    API_ActorMessage_Wait(24, 0, 20);
    API_Func_80925cc(22, 1);
    API_CutsceneWait(20);
    API_Func_8092adc(22, 0, 20);
    API_ActorMessage_Wait(22, 0, 20);
    API_CutsceneWait(20);
    API_Func_8092adc(24, 0, 20);
    API_Func_8092b08(17, 0);
    API_Func_8092b08(18, 0);
    OvlFunc_925_200b208();
    API_Func_8092b08(17, 1);
    API_Func_8092b08(18, 1);
    API_PlaySound(17);
    API_Func_80933f8(0x1500000, -1, 0xd80000, 1);
    API_Func_8093530();
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    __PlayMapMusic();
    API_ActorMessage_Wait(2, 0, 20);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0x3000, 22);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(10);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_Emote(3, 0x105, 0x3c);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(3, 0xa000, 20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(3, 0x8000, 20);
    API_MapActor_SetAnim(3, 16);
    actor = __MapActor_GetActor(3);
    *(int *)(actor + 0x18) = 0xffff0000;
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 0x28);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(2, 0xa000, 20);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(2, 0);
    API_MapActor_SetAnim(3, 1);
    actor = __MapActor_GetActor(3);
    *(int *)(actor + 0x18) = 0x10000;
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(3, 0xc000, 20);
    choice8 = __Func_8091c7c(0, 0);
    if (choice8 == 0) {
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(2, 0, 20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_Func_80925cc(2, 2);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(2, 0, 20);
    }
    API_Func_8092adc(2, 0x6000, 20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_Func_8092adc(3, 0xe000, 30);
    API_Func_8092adc(1, 0x2000, 20);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(10);
    API_ActorMessage_Wait(1, 0, 20);
    API_Func_8092adc(3, 0xa000, 20);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_80925cc(3, 1);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(3, 0x148, 0xd8);
    API_Func_8092adc(2, 0xa000, 0);
    actor = __MapActor_GetActor(1);
    actor += 0x5a;
    *actor = (0xfe & *actor);
    API_MapActor_TravelToAnim(1, 0x138, 0xc8);
    API_MapActor_TravelToAnim(3, 0x118, 0xd8);
    API_MapActor_WaitMovement(1);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_MapActor_WaitMovement(3);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(30);
    API_Func_8092adc(3, 0, 20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_DoAnim(3, 3);
    API_Func_809259c(0, 2);
    API_Func_809259c(2, 2);
    API_Func_809259c(1, 2);
    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_MapActor_Surprise(2, 0x102);
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(3, 0xe000, 20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(3, 0, 20);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 30);
    API_Func_8092adc(1, 0x2000, 0);
    API_Func_8092adc(2, 0xa000, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(2, 0x6000, 0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_TravelToAnim(0, 0x138, 0xd8);
    API_MapActor_TravelToAnim(1, 0x138, 0xd8);
    API_MapActor_TravelToAnim(2, 0x138, 0xd8);
    API_MapActor_TravelToAnim(3, 0x138, 0xd8);
    API_MapActor_WaitMovement(0);
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    ((struct MercuryGraphicsSlice *)(*(unsigned char **)CS_iwram_3001e70 + 0x164))->fieldC = 0x4000000;
    __Func_800fe9c();
    API_WaitFrames(1);
    API_CopyMapTiles(4, 0x46, 4, 0x4a, 5, 4);
    API_SetFlag(0x880);
    API_SetFlag(0x881);
    API_CutsceneEnd();
}
extern unsigned char iwram_3001e70[];

void __CutsceneStart(void);
void __Func_800fe9c(void);
void __WaitFrames(int);
void __MapActor_SetPos(int, int, int);
void *__Func_8093554(void);
void __Func_80933d4(int, int);
void __Func_80933f8(int, int, int, int);
void __Func_8093530(void);
void __CutsceneWait(int);
void __CopyMapTiles(int, int, int, int, int, int);
void __Func_8092b08(int, int);
void OvlFunc_925_200b324(void);
void __SetFlag(int);
void __CutsceneEnd(void);

void OvlFunc_925_200addc(void)
{
    unsigned char *ptr;
    unsigned char *actor;
    int zero;
    int neg_y;
    int four;

    ptr = *(unsigned char **)iwram_3001e70 + (0xb2 << 1);
    __CutsceneStart();
    *(int *)(ptr + 0xc) = 0xe0 << 18;
    __Func_800fe9c();
    __WaitFrames(1);
    zero = 0;
    ((unsigned char *)__MapActor_GetActor(9))[0x55] = zero;
    __MapActor_SetPos(9, 0xd0 << 15, 0x84 << 17);
    neg_y = -0x200000;
    actor = (unsigned char *)__MapActor_GetActor(9);
    *(int *)(actor + 0xc) = neg_y;
    actor = (unsigned char *)__MapActor_GetActor(9);
    *(int *)(actor + 0x3c) = neg_y;
    ((unsigned char *)__Func_8093554())[0x55] = zero;
    __Func_80933d4(0xcccc, 0x1999);
    __Func_80933f8(0x80 << 16, -1, 0xb8 << 16, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);
    four = 4;
    __CopyMapTiles(0x1d, 0x4a, four, 0x4a, 5, four);
    __Func_8092b08(0x11, 0);
    __Func_8092b08(0x12, 0);
    OvlFunc_925_200b324();
    __Func_8092b08(0x11, 1);
    __Func_8092b08(0x12, 1);
    __CutsceneWait(0x14);
    __SetFlag(0x251);
    __CutsceneEnd();
}

extern void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __Func_8092adc(int, int, int);
extern unsigned int __Func_8091e9c(unsigned int);
extern void OvlFunc_925_200b208(void);
static inline void MapActor_SetSpeed(unsigned int actor, int speed, int accel)
{
    __MapActor_SetSpeed(actor, speed << 8, accel << 7);
}
static inline void Func_8092adc(int actor, int value, int frames)
{
    __Func_8092adc(actor, value << 7, frames);
}
static inline void Func_80933f8(int x, int y, int z, int mode)
{
    __Func_80933f8(-x, -y, -z, mode);
}

void OvlFunc_925_200aeb8(void)
{
    unsigned int actor;
    unsigned int firstActor;
    unsigned int secondActor;

    __CutsceneStart();
    MapActor_SetSpeed(0, 0x80, 0x80);
    actor = 0;
    __MapActor_TravelToAnimWait(actor, 0x68, 0x98);
    Func_8092adc(0, 0x80, 0x3c);
    firstActor = 0x11;
    __Func_8092b08(firstActor, 0);
    secondActor = 0x12;
    __Func_8092b08(secondActor, 0);
    OvlFunc_925_200b208();
    Func_80933f8(1, 1, 1, 0);
    __Func_8091e9c(1);
    __CutsceneEnd();
}

#include "actor.h"

extern void __PlaySound(int);
extern void __Func_8092950(int, int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern unsigned int __Random(void);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
static inline void call_8092950(int actor, int flag) {
    __Func_8092950(actor, flag << 1);
}

#include "overlays/common0_effect.h"

void OvlFunc_925_200af18(void)
{
    struct Actor *actor1;
    struct Actor *actor2;
    unsigned int i;
    struct EffectData data;

    actor1 = __MapActor_GetActor(0x16);
    actor2 = __MapActor_GetActor(0x18);
    __PlaySound(0xbe);
    call_8092950(0x16, 0x80);
    call_8092950(0x18, 0x80);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);

    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x8e << 1;
    data.unk8 = 0x6666;
    data.unkc = 0xc0 << 10;

    i = 0;
    do {
        __CutsceneWait(1);
        if (i & 1) {
            int x = actor1->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            int y = actor1->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + 0xfff00000;
            OvlFunc_common0_10c(x, y, actor1->pos.z, 0, 0x80 << 11, 0, 0xd8 << 13, &data);
        } else {
            int x = actor2->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            int y = actor2->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + 0xfff00000;
            OvlFunc_common0_10c(x, y, actor2->pos.z, 0, 0x80 << 11, 0, 0xd8 << 13, &data);
        }
        i++;
    } while (i <= 0x1f);

    __MapActor_SetPos(0x16, 0, 0);
    __MapActor_SetPos(0x18, 0, 0);
}
#include "actor.h"

void OvlFunc_925_200b060(void)
{
    struct Actor *actor1;
    struct Actor *actor2;
    unsigned int i;
    struct EffectData data;

    actor1 = __MapActor_GetActor(0x16);
    actor2 = __MapActor_GetActor(0x18);
    __PlaySound(0xbe);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);

    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x8e << 1;
    data.unk8 = 0x6666;
    data.unkc = 0xc0 << 10;

    i = 0;
    do {
        __CutsceneWait(1);
        if (i & 1) {
            int x = actor1->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            int y = actor1->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + (0x80 << 14);
            OvlFunc_common0_10c(x, y, actor1->pos.z, 0, 0xfffc0000, 0, 0xd8 << 13, &data);
        } else {
            int x = actor2->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            int y = actor2->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + (0x80 << 14);
            OvlFunc_common0_10c(x, y, actor2->pos.z, 0, 0xfffc0000, 0, 0xd8 << 13, &data);
        }
        if (i == 0x14) {
            call_8092950(0x16, 0x80);
            call_8092950(0x18, 0x80);
        }
        i++;
    } while (i <= 0x1f);

    __Func_8092950(0x16, 0);
    __Func_8092950(0x18, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 1);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 1);
}
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b1c0.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b208.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b324.s");

void OvlFunc_925_200b438(void)
{
  int new_var3;
  int new_var2;
  int new_var6;
  int new_var5;
  int new_var7;
  short new_var4;
  unsigned long long new_var8;
  int new_var;
  new_var4 = (new_var7 = 0x5d);
  new_var3 = new_var4;
  new_var8 = new_var3;
  new_var = new_var8;
  new_var2 = 9;
 do { __Func_8096fb0(new_var, 1); new_var6 = 0x18; new_var5 = new_var6; __Func_80970f8(new_var5, new_var2); __Func_809728c(); } while (0);
  __FieldMove(1);
  __Func_8097174();
  __Func_8097194();
}

extern int __cos(int);
extern int __sin(int);

void OvlFunc_925_200b460(struct Actor *actor)
{
    u16 angle = actor->waveCounter;
    struct Actor *linkedActor = actor->linkedActor;

    actor->pos.x = linkedActor->pos.x + __cos(angle) * (actor->speed + 0x1c);
    actor->pos.z = (0x90 << 16) + (__sin(angle) << 4);
    actor->prevPos.x = actor->pos.x;
    actor->prevPos.z = actor->pos.z;
    actor->waveCounter -= 0x200;
}
static inline void API925_MapActor_SetPos(int a0, int a1, int a2)
{
    extern void __MapActor_SetPos(int, int, int);
    __MapActor_SetPos(a0, a1, a2);
}
static inline void *API925_CreateActor(int a, int x, int y, int z) { extern void *__CreateActor(int, int, int, int); return __CreateActor(a, x, y, z); }

extern int _divsi3_RAM(int, int);
extern void __Actor_SetScript(struct Actor *, const void *);
extern void __Func_80929d8(struct Actor *, int);
extern unsigned int __Random(void);
extern int __sin(int);
extern const u8 gScript_925__0200bc54[];
extern void *iwram_3001e70_p __asm__("iwram_3001e70");
extern unsigned int iwram_3001e40;
void OvlFunc_925_200b4bc(void)
{
    struct Actor *actor;
    struct Actor *newActor;
    struct Sprite *sprite;
    u8 *ptr;
    s16 *gate;
    int r8;
    int flags;
    u32 randVal;

    actor = __MapActor_GetActor(8);
    ptr = (u8 *)iwram_3001e70_p;
    r8 = ((__Random() * 48) >> 16) << 16;
    gate = (s16 *)(ptr + 0xe8);
    if (gate[1] <= 0x81) {
        if (iwram_3001e40 & 1) {
            API925_MapActor_SetPos(8, 0x1300000, 0x900000);
            ((struct Actor *)__MapActor_GetActor(8))->scale.x = 0x10000;
            ((struct Actor *)__MapActor_GetActor(8))->scale.y = 0x10000;
        } else {
            API925_MapActor_SetPos(8, 0x1300000, 0x970000);
            ((struct Actor *)__MapActor_GetActor(8))->scale.x = 0x14ccc;
            ((struct Actor *)__MapActor_GetActor(8))->scale.y = 0x14ccc;
        }
    } else {
        API925_MapActor_SetPos(8, 0x80000, 0x80000);
    }

    if (actor != NULL) {
        flags = iwram_3001e40 & 0xf;
        if (flags == 0) {
            newActor = API925_CreateActor(0x11c,
                                     actor->pos.x + 0x80000,
                                     actor->pos.y + r8 + 0x80000,
                                     actor->pos.z);
            r8 = _divsi3_RAM(r8, 0x60000);
            r8 <<= 16;
            if (newActor != NULL) {
                sprite = newActor->sprite;
                __Actor_SetScript(newActor, gScript_925__0200bc54);
                __Func_80929d8(newActor, 3);
                newActor->__unk55 = flags;
                randVal = __Random() & 0x0ffff000;
                newActor->waveCounter = randVal;
                newActor->__unk66 = flags;
                newActor->linkedActor = actor;
                newActor->update = (actorfun_t)OvlFunc_925_200b460;
                newActor->speed = (__sin((r8 & 0xfffff) >> 4) * 24) >> 16;
                sprite->flags = 0;
                sprite->oam.priority = actor->sprite->oam.priority;
            }
        }
    }
}
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/mercury_lighthouse_aerie_data.s");
