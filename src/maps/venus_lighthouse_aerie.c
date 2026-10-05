/* rom_7f6e64 (overlay file 969): consolidated TU — venus_lighthouse_aerie map overlay. */

#include "nonmatching.h"
#include "actor.h"

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
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20083a0.s");

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

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20084bc.s");
void OvlFunc_969_20086c0(void);
void __vec3_translate(int, int, vec3_t *);
int __TestCollision(struct Actor *, vec3_t *);
void __ClearFlag(int);
void __Actor_SetAnim(struct Actor *, int);
void __WaitFrames(int);
void __PlaySound(int);
void __Actor_SetSpriteFlags(int, int);
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
        __Actor_SetSpriteFlags((int)actor, 0);
        __MapActor_TravelToWait(0, vec.x >> 16, vec.z >> 16);
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags((int)actor, 1);
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

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/VenusLighthouseAerie_MapInit.s");

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
extern void __Actor_SetSpriteFlags(int actor, int flags);
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

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a15c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a1ac.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a200.s");

extern void __Func_8096fb0(int a, int b);

void OvlFunc_969_200a334(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_969_200a344(void) {
    __Func_8097194();
}

extern void __MapActor_GetActor(int);

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
extern struct Actor *MapActor_GetActor(int) __asm__("__MapActor_GetActor");
extern int __cos(int);
extern int __sin(int);

void OvlFunc_969_200b660(struct Actor *actor)
{
    struct Actor *other = MapActor_GetActor(0x17);
    u16 *waveCounter = (u16 *)&actor->waveCounter;
    u16 angle = *waveCounter;

    actor->pos.x = other->pos.x + __cos(angle) * (actor->speed + actor->__unk62 + 6);
    actor->pos.z = other->pos.z + __sin(angle) * (actor->__unk62 + 4);
    actor->prevPos.x = actor->pos.x;
    actor->prevPos.z = actor->pos.z;
    *waveCounter -= 0x800;
}
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b6d0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b7c4.s");

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

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b924.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200bbc8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200be9c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200c23c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200c8d8.s");
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
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200cbec.s");

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

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200da28.s");
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
