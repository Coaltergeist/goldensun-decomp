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
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20092c8.s");

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

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a200.s");

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
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200c23c.s");

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
    *(int *)(sceneActor + 0x8) = (*(int *)(sceneActor + 0x8) + 0xfffc0000);
    *(int *)(sceneActor + 0x10) = (*(int *)(sceneActor + 0x10) + 0xffee0000);
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
                sprite->flags = 0;
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
