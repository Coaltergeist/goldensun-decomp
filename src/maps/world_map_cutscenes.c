typedef union { int raw; struct { unsigned short lo; short hi; } half; } Fx32Parts;
/* rom_77a7c8 (overlay file 881): consolidated TU — world_map_cutscenes map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "math.h"
#include "gba/io.h"
#include "dma.h"
#include "sprite.h"

INCLUDE_ASM("asm/maps/world_map_cutscenes/exports.s");

void OvlFunc_881_2008030(void)
{
    extern unsigned char iwram_3001ebc[];
    extern unsigned char gStateBytes[] __asm__("gState");
    extern int _divsi3_RAM(int, int);
    extern unsigned int __Random(void);
    extern void __Func_8091f14(int, int);
    unsigned char *base;
    int *limit;
    int *value;
    int offset = 0x8e;

    base = *(unsigned char **)iwram_3001ebc;
    limit = (int *)((char *)gStateBytes + (offset << 2));
    value = (int *)(base + 0x1ac);
    if (*limit >= _divsi3_RAM(*value * 9, 10)) {
        if (__Random() < 0x8000) {
            __Func_8091f14(0x808, 3);
            *(int *)(base + 0x1a8) = 0;
        } else {
            *limit = *value;
        }
    }
}
void OvlFunc_881_200808c(void) {
    extern unsigned char iwram_3001ebc[];
    extern unsigned char gStateBytes[] __asm__("gState");
    extern void __Func_8091f14(int a, int b);
    extern int _divsi3_RAM(int, int);
    unsigned char *base;
    unsigned char *gs = gStateBytes;

    gs += (0x8e << 2);
    base = *(unsigned char **)iwram_3001ebc;
    if (*(int *)gs >= _divsi3_RAM(*(int *)(base + 0x1ac) * 9, 10)) {
        __Func_8091f14(0x809, 0x2a);
        *(unsigned int *)(base + 0x1a8) = 0;
    }
}
void OvlFunc_881_20080d4(void) {
    extern unsigned char iwram_3001ebc[];
    extern unsigned char gStateBytes[] __asm__("gState");
    extern void __Func_8091f14(int a, int b);
    extern int _divsi3_RAM(int, int);
    unsigned char *base;
    unsigned char *gs = gStateBytes;

    gs += (0x8e << 2);
    base = *(unsigned char **)iwram_3001ebc;
    if (*(int *)gs >= _divsi3_RAM(*(int *)(base + 0x1ac) * 9, 10)) {
        __Func_8091f14(0x80a, 0x18);
        *(unsigned int *)(base + 0x1a8) = 0;
    }
}

void OvlFunc_881_200811c(struct Actor *a) {
    short *wc = &a->waveCounter;

    if (*wc <= 0) {
        *wc += 1;
    } else {
        API_DeleteActor(a);
    }
}

void OvlFunc_881_200813c(struct Actor *a)
{
    extern unsigned int iwram_3001e40;
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Actor_SetAnim(unsigned char *, unsigned int);
    struct Actor *n;

    if (iwram_3001e40 & 4) {
        a->scale.x = 0x14ccc;
        a->scale.y = 0x14ccc;
    } else {
        a->scale.x = 0x10000;
        a->scale.y = 0x10000;
    }
    if (iwram_3001e40 & 2) {
        n = API_CreateActor(0x11d, a->pos.x, a->pos.y, a->pos.z);
        API_PlaySound(0xf6);
        if (n) {
            n->__unk55 = 0;
            n->sprite->oam.priority = 1;
            __Actor_SetSpriteFlags(n, 0);
            __Actor_SetAnim((unsigned char *)n, 1);
            n->waveCounter = 0;
            n->update = OvlFunc_881_200811c;
        }
    }
}
void OvlFunc_881_20081c4(struct Actor *actor)
{
    extern unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int, unsigned int);
    extern int __sin(int);
    extern void __vec3_translate(int, int, void *);

    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap((unsigned int)actor, 10);
    } else {
        __Actor_SetColorswap((unsigned int)actor, 7);
    }

    if (actor->__unk66 == 0) {
        actor->pos.x = 0x15d00000;
        actor->pos.y = fx32_multiply(__sin(actor->waveCounter << 3), 0x40000) + 0x100000;
        actor->pos.z = 0x5300000;
        __vec3_translate(0x100000, actor->waveCounter, &actor->pos);
        actor->facing = actor->waveCounter + 0x4000;
        actor->waveCounter += 0x400;
    }
}


unsigned int OvlFunc_881_2008250(unsigned int arg0) {
    extern int __GetFlag(int kind);
    extern void OvlFunc_881_20081c4(struct Actor *);
    unsigned char *base;

    base = (unsigned char *)arg0;
    if (__GetFlag(0x30) != 0)
        return 0;
    if (__GetFlag(0xb7 << 1) != 0)
        return 0;

    *(unsigned int *)(base + 0x6c) = (unsigned int)OvlFunc_881_20081c4;
    *(unsigned char *)(base + 0x55) = 0;
    *(unsigned short *)(base + 0x64) = 0;
    *(unsigned short *)(base + 0x66) = 0;
    *(unsigned int *)(base + 0x18) = 0x80 << 8;
    *(unsigned int *)(base + 0x1c) = 0x80 << 8;
    return 0;
}


unsigned int WorldMapCutscenes_GetEntrances(void) {
    extern unsigned char gOvl_0200d27c[];
    return (unsigned int)gOvl_0200d27c;
}

int WorldMapCutscenes_GetSpecialExits(void) {
    return 0;
}


unsigned int WorldMapCutscenes_GetExits(void) {
    extern unsigned char gOvl_0200da2c[];
    return (unsigned int)gOvl_0200da2c;
}


unsigned int OvlFunc_881_20082a4(struct Actor *arg0)
{
    extern int OvlFunc_881_20082cc(struct Actor *);
    struct Actor *r5;

    r5 = arg0;
    OvlFunc_881_20082cc(arg0);
    if (__GetFlag(0x847)) {
        __Actor_SetAnim((unsigned char *)r5, 2);
    }
    return 1;
}

struct WorldMapE70View {
    unsigned char pad[0x11a];
    unsigned short unk11a;
};

int OvlFunc_881_20082cc(struct Actor *actor)
{
    extern struct WorldMapE70View *iwram_3001e70_view __asm__("iwram_3001e70");
    struct WorldMapE70View *e70 = iwram_3001e70_view;
    struct Sprite *sprite = actor->sprite;

    sprite->rotation = e70->unk11a;
    sprite->flags = 0;
    return 1;
}



int OvlFunc_881_20082f0(struct Actor *actor)
{
    extern struct WorldMapE70View *iwram_3001e70_view __asm__("iwram_3001e70");
    struct WorldMapE70View *e70 = iwram_3001e70_view;
    struct Sprite *sprite = actor->sprite;

    actor->collision |= 1;
    sprite->rotation = e70->unk11a;
    return 1;
}

int OvlFunc_881_2008314(struct Actor *actor)
{
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Actor_SetColorswap(unsigned int, unsigned int);

    __Actor_SetSpriteFlags(actor, 0);
    __Actor_SetColorswap((unsigned int)actor, 0xa);
    actor->collision = 0;
    if (API_GetFlag(0x8a << 4)) {
        API_SetFlag(0x2f1);
        actor->pos.x = 0;
        actor->pos.y = 0;
    }
    return 0;
}


unsigned int OvlFunc_881_2008350(unsigned char *actor)
{
    extern unsigned int iwram_3001e40;
    unsigned char *p = actor + 0x54;
    if ((1 & *p) != 0 && (iwram_3001e40 & 1) != 0) {
        *p = 1 ^ *p;
    }
    return 1;
}

unsigned int WorldMapCutscenes_GetActors(void)
{
    extern unsigned char gState_ref[] __asm__("gState");
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    extern unsigned char L6154[] __asm__(".Lm881_6154");
    extern unsigned char L604c[] __asm__(".Lm881_604c");
    extern unsigned char L61e4[] __asm__(".Lm881_61e4");
    extern unsigned char L628c[] __asm__(".Lm881_628c");
    extern unsigned char L6394[] __asm__(".Lm881_6394");
    extern unsigned char L63c4[] __asm__(".Lm881_63c4");
    extern unsigned char L625c[] __asm__(".Lm881_625c");
    extern unsigned char L62ec[] __asm__(".Lm881_62ec");
    extern unsigned char L5b84[] __asm__(".Lm881_5b84");
    unsigned char *gs;

    gs = gState_ref;
    gs += (0xe1 << 1);
    switch (*(short *)gs) {
    case 0x31:
        if (__GetFlag(0x94f) == 0 && __GetFlag(0x941) != 0) {
            return (unsigned int)L6154;
        }
        break;

    case 0x40:
        if (__GetFlag(0x85a) == 0) {
            return (unsigned int)L604c;
        }
        break;

    case 0x41:
    case 0x46:
        return (unsigned int)L61e4;

    case 0x47:
        return (unsigned int)L628c;

    case 0x48:
        return (unsigned int)L6394;

    case 0x49:
        return (unsigned int)L63c4;

    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x4b:
        return (unsigned int)L625c;

    case 0x50:
        return (unsigned int)L62ec;
    }

    __SetFlag(0x235);
    return (unsigned int)L5b84;
}
void OvlFunc_881_20084a0(int a, int b, int c)
{
    extern void *__MapActor_GetActor(int);
    extern unsigned char gStateBytes[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    struct Actor *actor;
    struct Actor *other;
    unsigned char *base;
    unsigned char *gs;

    actor = (struct Actor *)__MapActor_GetActor(a - 0x64);
    gs = gStateBytes;
    gs += (0xfa << 1);
    other = (struct Actor *)__MapActor_GetActor(*(int *)gs);
    base = *(unsigned char **)iwram_3001ebc;
    if (other->pos.x < actor->pos.x) {
        *(u16 *)(base + (0xb8 << 1)) = b;
    } else {
        *(u16 *)(base + (0xb8 << 1)) = c;
    }
    API_PlaySound(0x7b);
}
void OvlFunc_881_20084f0(int a, int b, int c)
{
    extern int __MapActor_GetActor(int);
    extern unsigned char gStateBytes[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    struct Actor *target;
    struct Actor *other;
    unsigned char *base;
    unsigned char *gs;

    target = (struct Actor *)__MapActor_GetActor(a - 0x64);
    gs = gStateBytes;
    gs += (0xfa << 1);
    other = (struct Actor *)__MapActor_GetActor(*(int *)gs);
    base = *(unsigned char **)iwram_3001ebc;
    if (other->pos.z < target->pos.z)
        *(u16 *)(base + 0x170) = b;
    else
        *(u16 *)(base + 0x170) = c;
    API_PlaySound(0x7b);
}


void OvlFunc_881_2008540(void) {
    extern void OvlFunc_881_20084a0(int a, int b, int c);
    OvlFunc_881_20084a0(0x82, 6, 0x2f);
}


void OvlFunc_881_2008550(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x96, 0x2e, 0xb);
}


void OvlFunc_881_2008560(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x74, 0x38, 0x15);
}


void OvlFunc_881_2008570(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x97, 0x19, 0x36);
}


void OvlFunc_881_2008580(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x7d, 0x3b, 0x1e);
}


unsigned int WorldMapCutscenes_GetEvents(void) {
    extern unsigned char gOvl_0200e3f4[];
    return (unsigned int)gOvl_0200e3f4;
}

struct WorldMapStateView {
    unsigned char pad0[0x1c0];
    short area;
    short room;
    unsigned short unk1c4;
    unsigned short unk1c6;
    unsigned char pad1[0x1f2 - 0x1c8];
    unsigned char field1f2;
    unsigned char pad2[0x1f4 - 0x1f3];
    int playerActorId;
    unsigned char pad3[0x205 - 0x1f8];
    unsigned char hue;
    unsigned char brightness;
};

struct WorldMapSub0View {
    unsigned char pad0[0x16c];
    unsigned short unk16c;
    unsigned char pad1[0x1c0 - 0x16e];
    int unk1c0;
    int unk1c4;
    int unk1c8;
    unsigned char pad2[0x1d8 - 0x1cc];
    unsigned short unk1d8;
    unsigned char pad3[0x1e0 - 0x1da];
    struct Actor *cameraActor;
};

struct WorldMapEbcView {
    struct WorldMapSub0View *sub0;
};

void OvlFunc_881_2008598(void)
{
    extern struct WorldMapStateView gStateView __asm__("gState");
    extern struct WorldMapEbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    extern u8 gDebugMode;
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern struct Actor *__GetFieldActor(int);
    extern int __GetFlag(int);

    struct Actor *actor;
    struct Actor *target;
    struct WorldMapSub0View *sub0;
    int min_x, max_x;
    int min_z, max_z;
    int actor_range;
    unsigned int i;

    actor = __MapActor_GetActor(gStateView.playerActorId);
    actor_range = actor->sprite->scale * actor->width;

    sub0 = iwram_3001ebc_view.sub0;
    target = sub0->cameraActor;

    min_x = target->pos.x - (0xa0 << 16);
    max_x = target->pos.x + (0xa0 << 16);
    min_z = target->pos.z - (0x12c << 16);
    max_z = target->pos.z + (0xc8 << 16);

    for (i = 8; i <= 0x41; i++) {
        int tx, tz;

        target = __GetFieldActor(i);
        if (target == NULL)
            continue;

        tx = target->pos.x;
        tz = target->pos.z;
        if (tx < min_x || tx > max_x || tz < min_z || tz > max_z) {
            target->visible = 0;
            continue;
        }

        target->visible = 1;
        if (gDebugMode && __GetFlag(0x163))
            continue;

        {
            int scale = target->sprite->scale;
            int dx = ABS(target->pos.x - actor->pos.x);
            int range = actor_range + scale * target->width;

            if (dx + ABS(target->pos.z - actor->pos.z) < range) {
                if (__GetFlag(0x82 << 1) == 0)
                    sub0->unk16c = i + 0x64;
            }
        }
    }
}

void OvlFunc_881_20086b4(void) {
    if (__GetFlag(0x85a) == 0) {
        __Func_8091e9c(0x65);
    } else {
        __PlaySound(0x7b);
        __Func_8091e9c(3);
    }
}


void OvlFunc_881_20086dc(void)
{
    extern void __CutsceneStart(void);
    extern void __Func_8091e9c(int);
	__CutsceneStart();
	__Func_8091e9c(0x4a);
}

static inline void API_Func_8010d48(int a, int b, int c, int d)
{
    extern void __Func_8010d48(int, int, int, int);
    __Func_8010d48(a, b, c, d);
}

__asm__(".equ .Lconst_3a, 0x3a\n.equ .Lconst_bb, 0xbb");
extern unsigned char Lconst_3a[] __asm__(".Lconst_3a");
extern unsigned char Lconst_bb[] __asm__(".Lconst_bb");

int WorldMapCutscenes_MapInit(void)
{
    extern struct WorldMapStateView gStateView __asm__("gState");
    extern struct WorldMapEbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    extern int WorldDialogueActorID __asm__(".Lm881_679c");
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern unsigned int __Func_8078a08(unsigned int);
    extern int __GetFlagByte(int);
    extern void __SetDestMap(int, int);
    extern void OvlFunc_881_2008a8c(void);
    extern void OvlFunc_881_2008c28(void);
    extern void OvlFunc_881_20097fc(void);
    extern void OvlFunc_881_2009888(void);
    extern void OvlFunc_881_2009938(void);
    extern void OvlFunc_881_20099e8(void);
    extern void OvlFunc_881_2009a98(void);
    extern void OvlFunc_881_2009b5c(void);
    extern void OvlFunc_881_200a274(void);
    extern void OvlFunc_881_200a4a8(void);
    extern void OvlFunc_881_200a768();
    extern void OvlFunc_881_200acb4(void);
    extern void OvlFunc_881_200b130(void);
    extern void OvlFunc_881_200b2f0(void);
    extern void OvlFunc_881_200b57c(void);
    extern void OvlFunc_881_200b678(void);
    

    struct WorldMapStateView *state = &gStateView;
    struct WorldMapSub0View *scene;
    struct Actor *actor;

    if (state->room == 99) {
        API_SetFlag(0x160);
        API_SetFlag(0x161);
        API_SetFlag(0x163);
    }
    if (state->room == 90) {
        OvlFunc_881_200b9fc(0);
        __SetDestMap((int)Lconst_3a, 1);
        return 0;
    }
    if (state->room == 91) {
        OvlFunc_881_200b9fc(1);
        __SetDestMap((int)Lconst_bb, 0x5d);
        return 0;
    }
    if (state->room == 78) {
        API_CutsceneStart();
        __Func_8078a08(0xf2);
        API_Func_8091e9c(0x70);
        return 0;
    }
    API_SetFlag(0x144);
    scene = iwram_3001ebc_view.sub0;
    scene->unk1c0 = 0x400;
    scene->unk1c8 = 16;
    API_WaitFrames(1);
    API_Func_80933d4(0x80000, 0x10000);
    API_ClearFlag(0x12f);
    API_StartTask(OvlFunc_881_2008598, 0xc80);
    if (!API_GetFlag(0x90a))
        API_Func_8010d48(0x80, 0x100, 0xb0, 0x38);
    switch (state->room) {
    case 1:
        if (!API_GetFlag(0x815)) {
            API_SetFlag(0x815);
            API_SetFlag(0x85c);
        }
        break;
    case 33:
        if (API_GetFlag(0x109)) {
            if (!API_GetFlag(0x85d) && API_GetFlag(0x234)) {
                WorldDialogueActorID = 55;
                API_MapActor_SetPos(55, 0x17940000, 0xd480000);
                actor = __MapActor_GetActor(WorldDialogueActorID);
                actor->facing = 0x3000;
                OvlFunc_881_200a768(WorldDialogueActorID);
            }
        } else {
            if (!API_GetFlag(0x85d) && !API_GetFlag(0x9b8))
                OvlFunc_881_200a4a8();
        }
        break;
    case 49:
        if (!API_GetFlag(0x94f) && API_GetFlag(0x941))
            OvlFunc_881_2008a8c();
        break;
    case 64:
        if (!API_GetFlag(0x85a))
            OvlFunc_881_2008c28();
        break;
    case 65: OvlFunc_881_20097fc(); break;
    case 66: OvlFunc_881_2009888(); break;
    case 67: OvlFunc_881_2009938(); break;
    case 68: OvlFunc_881_20099e8(); break;
    case 69: OvlFunc_881_2009a98(); break;
    case 70: OvlFunc_881_2009b5c(); break;
    case 71: OvlFunc_881_200a274(); break;
    case 72: OvlFunc_881_200b57c(); break;
    case 73: OvlFunc_881_200b130(); break;
    case 74: case 76: case 77:
        API_SetFlag(0x11c);
        if (__GetFlagByte(0x2f8)) {
            gStateView.field1f2 = 2;
            API_StartTask(OvlFunc_881_200b678, 0xc80);
        }
        break;
    case 75: OvlFunc_881_200b2f0(); break;
    case 80: OvlFunc_881_200acb4(); break;
    default:
        actor = __MapActor_GetActor(53);
        actor->scale.x = 0x14000;
        actor = __MapActor_GetActor(53);
        actor->scale.y = 0x14000;
        break;
    }
    return 0;
}

void OvlFunc_881_2008a8c(void) {
    extern void *__MapActor_GetActor(int);
    extern void __Func_808c44c(void);
    struct Actor *a;

    API_CutsceneStart();
    API_MapTransitionIn();
    API_WaitMapTransition();
    __Func_808c44c();
    API_SetFlag(0x94f);
    API_MapActor_SetPos(0xb, 0xb7 << 21, 0x49c0000);
    API_MapActor_TravelBy(0xb, 0x18, 8);
    API_MapActor_WaitMovement(0xb);
    API_CutsceneWait(0x3c);
    API_MapActor_SetPos(0xc, 0xb7 << 21, 0x49c0000);
    API_MapActor_TravelBy(0xc, 0xc, 0x18);
    API_CutsceneWait(0x1e);
    API_Func_8092adc(0xb, 0xa0 << 7, 0);
    API_Func_8092adc(0xc, 0xd0 << 8, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_SetAnim(0xb, 3);
    API_MapActor_SetAnim(0xc, 3);
    API_CutsceneWait(0x78);
    API_MapActor_SetPos(8, 0x16f80000, 0x97 << 19);
    API_CutsceneWait(0x3c);
    API_MapActor_SetAnim(0xc, 2);
    a = (struct Actor *)__MapActor_GetActor(8);
    if (a != 0) {
        API_MapActor_TravelTo(0xc, ((Fx32Parts *)&a->pos.x)->half.hi, ((Fx32Parts *)&a->pos.z)->half.hi);
    }
    API_MapActor_WaitMovement(0xc);
    API_MapActor_SetPos(0xc, 0, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_SetAnim(0xb, 2);
    a = (struct Actor *)__MapActor_GetActor(8);
    if (a != 0) {
        API_MapActor_TravelTo(0xb, ((Fx32Parts *)&a->pos.x)->half.hi, ((Fx32Parts *)&a->pos.z)->half.hi);
    }
    API_MapActor_WaitMovement(0xb);
    API_MapActor_SetPos(0xb, 0, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_SetAnim(0, 2);
    a = (struct Actor *)__MapActor_GetActor(8);
    if (a != 0) {
        API_MapActor_TravelTo(0, ((Fx32Parts *)&a->pos.x)->half.hi, ((Fx32Parts *)&a->pos.z)->half.hi);
    }
    API_MapActor_WaitMovement(0);
    API_MapActor_SetPos(0, 0, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_SetSpeed(8, 0x80 << 8, 0x80 << 7);
    API_MapActor_TravelBy(8, 0x38, 8);
    API_MapActor_WaitMovement(8);
    API_MapActor_TravelBy(8, 0x28, 0x28);
    API_MapActor_WaitMovement(8);
    API_MapActor_TravelBy(8, 8, 0x58);
    API_MapActor_WaitMovement(8);
    API_MapTransitionOut();
    API_Func_8091e9c(0x6c);
    API_CutsceneEnd();
}

static inline void WorldSceneHalf(unsigned char *p, int value) { *(unsigned short *)p = value; }

void OvlFunc_881_2008c28(void)
{
    extern void OvlFunc_881_20097a4(void);
    extern unsigned char gScript_881__0200c9e4[];
    extern unsigned char gScript_881__0200ca78[];
    extern unsigned char gScript_881__0200cac4[];
    extern unsigned char gScript_881__0200caf4[];
    extern unsigned char gScript_881__0200cb50[];
    extern unsigned char gScript_881__0200cbe4[];
    extern unsigned char gScript_881__0200cc30[];
    extern unsigned char gScript_881__0200cc74[];
    extern unsigned char gScript_881__0200cd08[];
    extern unsigned char gScript_881__0200cd54[];
    extern unsigned char gScript_881__0200cd98[];
    extern unsigned char gScript_881__0200ce2c[];
    extern unsigned char gScript_881__0200ce78[];
    extern unsigned char gScript_881__0200cebc[];
    extern void __Actor_SetAnim(unsigned char *, unsigned int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_808c44c(void);
    extern void __Func_808c4c0(void);
    extern void __Func_8092950(int, int);
    extern void __Func_80936a0(int, int);
    extern unsigned char * __MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_881_200955c(void);
    extern void OvlFunc_881_2009680(void);
    unsigned char * effectActor;
    unsigned char *actor;

    actor = __MapActor_GetActor(15);
    effectActor = (unsigned char *)(actor);
    API_CutsceneStart();
    __Func_80936a0(0x14000, 1);
    API_WaitFrames(4);
    API_MapTransitionIn();
    API_WaitMapTransition();
    __Func_808c44c();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetSpeed(0, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(1, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(0, 0x16fc, 0x628);
    API_Func_8092adc(0, 0x6000, 0);
    API_MapActor_SetPos(8, 0x16d80000, 0x6280000);
    API_WaitFrames(1);
    __Func_8092950(8, 15);
    actor = __MapActor_GetActor(8);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetSpeed(10, 0x19999, 0x6666);
    API_MapActor_SetSpeed(11, 0x19999, 0x6666);
    API_MapActor_SetSpeed(12, 0x19999, 0x6666);
    API_MapActor_SetSpeed(13, 0x19999, 0x6666);
    API_PlaySound(0x8d);
    API_MapActor_SetBehavior(10, (int)gScript_881__0200c9e4);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(11, (int)gScript_881__0200cb50);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(12, (int)gScript_881__0200cc74);
    API_CutsceneWait(20);
    __MapActor_RunScript(13, gScript_881__0200cd98);
    API_PlaySound(0x121);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_TravelToAnimWait(1, 0x1704, 0x640);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0xa000, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0x3c);
    API_MapActor_SetPos(8, 0x16d80000, 0x6380000);
    API_WaitFrames(1);
    API_MessageID(0x1215);
    API_ActorMessage_Wait(8, 0, 10);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x6000, 0x28);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0xa000, 0x3c);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x6000, 10);
    API_PlaySound(0x8d);
    API_MapActor_SetBehavior(10, (int)gScript_881__0200ca78);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(11, (int)gScript_881__0200cbe4);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(12, (int)gScript_881__0200cd08);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0x4000, 10);
    __MapActor_RunScript(13, gScript_881__0200ce2c);
    API_PlaySound(0x121);
    API_CutsceneWait(20);
    __Func_808c4c0();
    API_MapActor_SetAnim(10, 1);
    API_MapActor_SetAnim(11, 1);
    API_MapActor_SetAnim(12, 1);
    API_MapActor_SetAnim(13, 1);
    API_Func_80933f8(0x16080000, -1, 0x6f80000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    __Func_808c44c();
    API_MapActor_SetPos(9, 0x16080000, 0x6d80000);
    API_WaitFrames(1);
    API_MapActor_SetSpeed(9, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(9, 0x1608, 0x6c8);
    API_MapActor_TravelToAnimWait(9, 0x15f8, 0x6c8);
    API_MapActor_TravelToAnimWait(9, 0x15f8, 0x6f8);
    API_CutsceneWait(20);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_MapActor_Surprise(9, 0x102);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(9, 0, 20);
    API_Func_809259c(9, 3);
    API_ActorMessage_Wait(9, 0, 20);
    API_MapActor_SetPos(8, 0x16180000, 0x6f80000);
    API_WaitFrames(1);
    __Func_8092950(8, 0);
    actor = __MapActor_GetActor(8);
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(8, 0x1608, 0x6f8);
    API_CutsceneWait(20);
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(0x2008, 0, 10);
    API_Func_8092adc(8, 0x3000, 0x3c);
    API_Func_8092adc(8, 0x8000, 10);
    API_MapActor_Surprise(8, 0x102);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(9, 0x3000, 0);
    API_Func_8092adc(8, 0x3000, 0x28);
    API_MapActor_Surprise(8, 0x102);
    API_CutsceneWait(0x3c);
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(0x2008, 0, 0x28);
    API_Func_80925cc(9, 1);
    API_Func_8092adc(9, 0, 10);
    API_ActorMessage_Wait(9, 0, 10);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_ActorMessage_Wait(0x2008, 0, 10);
    API_Func_80925cc(8, 1);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(0x2008, 0, 10);
    API_MapActor_Emote(9, 0x101, 0x3c);
    API_ActorMessage_Wait(9, 0, 20);
    API_MapActor_DoAnim(8, 3);
    __Func_808c4c0();
    API_PlaySound(0x6b);
    API_Func_80933d4(0x40000, 0x40000);
    OvlFunc_881_200955c();
    API_PlaySound(0x121);
    API_MapActor_Emote(8, 0x100, 0);
    API_MapActor_Emote(9, 0x100, 0);
    API_Func_8092adc(8, 0x8000, 0);
    API_Func_8092adc(9, 0, 0x28);
    API_Func_8092adc(8, 0xb000, 0);
    API_Func_8092adc(9, 0xb000, 0);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x15e80000, -1, 0x6c80000, 1);
    API_Func_8093530();
    API_MapActor_SetPos(14, 0x15a80000, 0x6a80000);
    API_WaitFrames(1);
    API_MapActor_SetSpeed(14, 0x4ccc, 0x2666);
    API_MapActor_SetBehavior(14, (int)gScript_881__0200cebc);
    API_CutsceneWait(0xa0);
    *(int *)(effectActor + 0x48) = 0x1999;
    *(int *)(effectActor + 0x44) = 0x1999;
    *(int *)(effectActor + 0x18) = 0x18000;
    *(int *)(effectActor + 0x1c) = 0x18000;
    WorldSceneHalf(effectActor + 0x64, 0);
    *(int *)(effectActor + 0xc) = 0x400000;
    WorldSceneHalf(*(unsigned char **)(effectActor + 0x50) + 30, 0xf000);
    __Actor_SetSpriteFlags(effectActor, 0);
    __Actor_SetAnim(effectActor, 2);
    API_WaitFrames(1);
    actor = __MapActor_GetActor(15);
    __Actor_SetSpriteFlags(actor, 0);
    API_StartTask(OvlFunc_881_20097a4, 0xc80);
    do {
        API_WaitFrames(1);
    } while (*(short *)(effectActor + 0x64) == 0);
    actor = __MapActor_GetActor(15);
    __Actor_SetSpriteFlags(actor, 0);
    actor = __MapActor_GetActor(14);
    __Actor_SetSpriteFlags(actor, 0);
    API_CutsceneWait(10);
    actor = __MapActor_GetActor(9);
    *(int *)(actor + 0x28) = 0x60000;
    actor = __MapActor_GetActor(8);
    *(int *)(actor + 0x28) = 0x60000;
    API_PlaySound(0x91);
    API_Func_80933d4(0x40000, 0x40000);
    OvlFunc_881_2009680();
    OvlFunc_881_2009680();
    API_CutsceneWait(0x3c);
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0x16080000, -1, 0x6f80000, 1);
    API_Func_8093530();
    __Func_808c44c();
    API_MapActor_Surprise(9, 0x102);
    API_MapActor_Surprise(8, 0x102);
    API_CutsceneWait(0x3c);
    API_StopTask(OvlFunc_881_20097a4);
    API_WaitFrames(1);
    API_MapActor_SetPos(14, 0, 0);
    API_MapActor_SetPos(15, 0, 0);
    API_Func_8092adc(8, 0x8000, 10);
    API_MapActor_Jump(8, 4, 0x28);
    API_ActorMessage_Wait(0x2008, 0, 10);
    API_Func_8092adc(9, 0, 10);
    API_ActorMessage_Wait(9, 0, 20);
    API_Func_8092adc(8, 0xc000, 0x28);
    API_ActorMessage_Wait(0x2008, 0, 20);
    API_MapActor_Jump(9, 4, 20);
    API_ActorMessage_Wait(9, 0, 10);
    API_Func_80925cc(8, 1);
    API_Func_8092adc(8, 0x8000, 10);
    API_ActorMessage_Wait(0x2008, 0, 10);
    API_MapActor_Surprise(9, 0x102);
    API_CutsceneWait(0x50);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(9, 1);
    API_MapActor_DoAnim(9, 3);
    API_MapActor_TravelToAnimWait(8, 0x1618, 0x6f8);
    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_TravelToAnimWait(9, 0x15f8, 0x6c8);
    API_MapActor_TravelToAnimWait(9, 0x1608, 0x6c8);
    API_MapActor_TravelToAnimWait(9, 0x1608, 0x6d8);
    API_MapActor_SetPos(9, 0, 0);
    API_PlaySound(0x8d);
    API_MapActor_SetBehavior(10, (int)gScript_881__0200cac4);
    API_MapActor_SetBehavior(11, (int)gScript_881__0200cc30);
    API_CutsceneWait(0x28);
    API_MapActor_SetBehavior(12, (int)gScript_881__0200cd54);
    API_CutsceneWait(0x28);
    __MapActor_RunScript(13, gScript_881__0200ce78);
    __Func_808c4c0();
    API_MapActor_SetPos(0, 0x170c0000, 0x6280000);
    API_MapActor_SetPos(1, 0x17140000, 0x6400000);
    API_Func_80933d4(0x40000, 0x8000);
    API_Func_80933f8(0x16d80000, -1, 0x6480000, 1);
    API_Func_8093530();
    API_MapActor_SetBehavior(10, (int)gScript_881__0200caf4);
    API_CutsceneWait(20);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0x16d80000, -1, 0x6080000, 1);
    API_MapActor_SetBehavior(11, (int)gScript_881__0200caf4);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(12, (int)gScript_881__0200caf4);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(1, 0x8000, 0);
    API_MapActor_SetBehavior(13, (int)gScript_881__0200caf4);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_MapActor_WaitScript(13);
    API_PlaySound(0x121);
    API_Func_80933d4(0x40000, 0x8000);
    API_Func_80933f8(0x16f80000, -1, 0x6480000, 1);
    API_Func_8093530();
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0xa000, 0x50);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(1, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x16d80000, -1, 0x6480000, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0x16d8, 0x628);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x85a);
    API_Func_8091e9c(3);
    API_CutsceneEnd();
}
void OvlFunc_881_200955c(void)
{
    API_Func_80933f8(0x160c0000, -1, 0x6f80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16040000, -1, 0x6fc0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160c0000, -1, 0x6f40000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160c0000, -1, 0x6fc0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16040000, -1, 0x6f40000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16080000, -1, 0x6f80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160a0000, -1, 0x6f80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16060000, -1, 0x6fa0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160a0000, -1, 0x6f60000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x160a0000, -1, 0x6fa0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16060000, -1, 0x6f60000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x16080000, -1, 0x6f80000, 1);
    API_WaitFrames(4);
}
void OvlFunc_881_2009680(void)
{
    API_Func_80933f8(0x15ec0000, -1, 0x6c80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e40000, -1, 0x6cc0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ec0000, -1, 0x6c40000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ec0000, -1, 0x6cc0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e40000, -1, 0x6c40000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e80000, -1, 0x6c80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ea0000, -1, 0x6c80000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e60000, -1, 0x6ca0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ea0000, -1, 0x6c60000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15ea0000, -1, 0x6ca0000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e60000, -1, 0x6c60000, 1);
    API_WaitFrames(4);
    API_Func_80933f8(0x15e80000, -1, 0x6c80000, 1);
    API_WaitFrames(4);
}

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

static inline void SetActorAnim(unsigned char *actor, int anim)
{
    extern void __Actor_SetAnim(unsigned char *, unsigned int);
    __Actor_SetAnim(actor, anim);
}

void OvlFunc_881_20097a4(void)
{
    unsigned char *actor;
    unsigned char *other;
    int flag;

    actor = (unsigned char *) __MapActor_GetActor(0xf);
    other = (unsigned char *) __MapActor_GetActor(0xe);
    *(unsigned int *)(actor + 8) = *(unsigned int *)(other + 8);
    *(unsigned int *)(actor + 0x10) = *(unsigned int *)(other + 0x10);
    if (*(int *)(actor + 0xc) < 0xa0000) {

        *(unsigned int *)(actor + 0xc) = 0xa0000;

        flag = GetFlag(0x200);
        if (flag == 0) {
            unsigned short *p;
            unsigned short v;
            __PlaySound(0x91);
            SetActorAnim(actor, 3);
            __SetFlag(0x80 << 2);
            p = (unsigned short *)(actor + 0x64);
            v = 1;
            *p = v;
        }
    }
}

void OvlFunc_881_20097fc(void)
{
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    actor->scale.x = actor->scale.y = 0x14000;
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(8, 0x14a8, 0x918);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x66);
    API_CutsceneEnd();
}
void OvlFunc_881_2009888(void)
{
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern unsigned char gScript_881__0200d158[];
    struct Actor *actor;
    short *wc;
    int zero;

    actor = __MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x1f080000, 0xc8 << 16);
    actor->scale.x = 0xa0 << 9;
    actor->scale.y = 0xa0 << 9;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    wc = &actor->waveCounter;
    zero = 0;
    *wc = zero;
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d158);
    do {
        API_WaitFrames(1);
    } while (*wc == 0);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x67);
    API_CutsceneEnd();
}
void OvlFunc_881_2009938(void)
{
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern unsigned char gScript_881__0200d158[];
    struct Actor *actor;

    actor = __MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x1f080000, 0xc8 << 16);
    actor->scale.x = 0xa0 << 9;
    actor->scale.y = 0xa0 << 9;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    actor->waveCounter = 0;
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d158);
    do {
        API_WaitFrames(1);
    } while (actor->waveCounter == 0);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x68);
    API_CutsceneEnd();
}
void OvlFunc_881_20099e8(void)
{
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern unsigned char gScript_881__0200d158[];
    struct Actor *actor;

    actor = __MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x1f080000, 0xc8 << 16);
    actor->scale.x = 0x14000;
    actor->scale.y = 0x14000;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    actor->waveCounter = 0;
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d158);
    do {
        API_WaitFrames(1);
    } while (actor->waveCounter == 0);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x69);
    API_CutsceneEnd();
}
void OvlFunc_881_2009a98(void)
{
    extern void *__MapActor_GetActor(int);
    extern unsigned int OvlFunc_881_200b41c(void);
    extern unsigned char gScript_881__0200d1b8[];
    extern unsigned char gScript_881__0200d158[];
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x1f080000, 0xc8 << 16);
    actor->scale.x = 0xa0 << 9;
    actor->scale.y = 0xa0 << 9;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    actor->waveCounter = 0;
    if (OvlFunc_881_200b41c() == 11) {
        API_MapActor_SetBehavior(8, (int)gScript_881__0200d1b8);
    } else {
        API_MapActor_SetBehavior(8, (int)gScript_881__0200d158);
    }
    do {
        API_WaitFrames(1);
    } while (actor->waveCounter == 0);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x6a);
    API_CutsceneEnd();
}
void OvlFunc_881_2009b5c(void)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(8);

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x13e80000, 0x9180000);
    actor->scale.y = 0x14000;
    actor->scale.x = 0x14000;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(8, 0x13c8, 0x918);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x93e);
    API_ClearFlag(0x927);
    API_Func_8091e9c(0x6b);
    API_CutsceneEnd();
}
void OvlFunc_881_2009c08(void)
{
    extern void __Func_808c4c0(void);
    extern void __Func_80936a0(int, int);
    extern void __Func_8093710(void);
    extern void __Func_808c44c(void);
    extern void __Func_802899c(int, int);
    extern void __Func_80aa56c(void);
    extern void __StartMapBattle(int, int);

    __Func_808c4c0();
    __Func_80936a0(0x10000, 6);
    __Func_8093710();
    __Func_808c44c();
    API_Func_80925cc(8, 2);
    API_MessageID(0xc66);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0x1e);
    API_PlaySound(0x6f);
    __Func_802899c(0, 2);
    API_ClearFlag(0x16f);
    API_ClearFlag(0x171);
    __Func_80aa56c();
    API_MapActor_Jump(8, 4, 0x1e);
    API_MessageID(0xc67);
    API_ActorMessage(8, 0);
    API_ClearFlag(0x16f);
    API_SetFlag(0x171);
    __Func_80aa56c();
    API_CutsceneWait(0x1e);
    __StartMapBattle(0xc, 6);
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_2009ca4.s");

void OvlFunc_881_200a274(void) {
    extern void *__MapActor_GetActor(int);
    struct Actor *a;

    a = (struct Actor *)__MapActor_GetActor(0xa);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_WaitFrames(1);
    a->scale.x = 0xc0 << 9;
    a->scale.y = 0xc0 << 9;
    a->facing = 0x80 << 7;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x14);
    API_MapActor_SetPos(0xa, 0x15680000, 0x8380000);
    API_WaitFrames(1);
    API_PlaySound(0x8d);
    API_MapActor_SetSpeed(0xa, 0x19999, 0x6666);
    API_MapActor_SetAnim(0xa, 2);
    API_MapActor_TravelToWait(0xa, 0x156d, 0x858);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0x15b80000, -1, 0x8580000, 1);
    API_MapActor_TravelToWait(0xa, 0x159e, 0x858);
    API_MapActor_TravelToWait(0xa, 0x15a8, 0x86e);
    API_MapActor_TravelToWait(0xa, 0x15e8, 0x878);
    API_MapActor_SetAnim(0xa, 1);
    API_PlaySound(0x121);
    API_CutsceneWait(0x14);
    API_MapActor_SetPos(0, 0x15d80000, 0x8780000);
    API_WaitFrames(1);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnimWait(0, 0x15c8, 0x878);
    API_Func_8092adc(0, 0, 0x28);
    API_PlaySound(0x8d);
    API_MapActor_SetAnim(0xa, 2);
    API_MapActor_TravelToWait(0xa, 0x15f8, 0x878);
    API_Func_8092adc(0, 0xe0 << 8, 0);
    API_MapActor_TravelToWait(0xa, 0x15f8, 0x838);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_MapActor_TravelToWait(0xa, 0x15bd, 0x838);
    API_MapActor_TravelToWait(0xa, 0x15b8, 0x853);
    API_Func_8092adc(0, 0xa0 << 8, 0);
    API_MapActor_TravelToWait(0xa, 0x1572, 0x858);
    API_MapActor_TravelToWait(0xa, 0x1568, 0x838);
    API_MapActor_SetPos(0xa, 0, 0);
    API_PlaySound(0x121);
    API_CutsceneWait(0x28);
    API_Func_80933f8(0x15d80000, -1, 0x8580000, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0x15d8, 0x858);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x14);
    API_CutsceneEnd();
}

/* pooled literal (ldr rN, =2 in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_2, 2");
extern unsigned char Lconst_2[] __asm__(".Lconst_2");

void OvlFunc_881_200a4a8(void)
{
    extern int WorldDialogueActorID __asm__(".Lm881_679c");
    extern unsigned char gScript_881__0200cf20[];
    extern struct WorldMapStateView gStateView __asm__("gState");
    extern void __Func_808c44c(void);
    extern void __Func_808c4c0(void);
    extern void __Func_808f1c0(int, int);
    extern int __Func_8091a58(int, int);
    extern void __Func_80936a0(int, int);
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern void OvlFunc_881_200a768();
    struct Actor *actor;

    API_CutsceneStart();
    WorldDialogueActorID = 0x37;
    OvlFunc_881_200a768(0x37);
    API_MapTransitionIn();
    API_WaitMapTransition();
    __Func_808c44c();
    actor = __MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_SetPos(WorldDialogueActorID, actor->pos.x, actor->pos.z);
    }
    API_MapActor_SetSpeed(WorldDialogueActorID, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(WorldDialogueActorID, 0x1768, 0xd78);
    API_Func_8092adc(WorldDialogueActorID, 0, 20);
    API_MapActor_Emote(WorldDialogueActorID, 0x100, 0x3c);
    API_Func_809259c(WorldDialogueActorID, 2);
    API_MessageID(0x263c);
    API_ActorMessage_Wait(WorldDialogueActorID | 0x1000, 0, 10);
    API_Func_8092adc(0, 0, 0);
    __Func_808c4c0();
    __Func_80936a0(0x16666, 10);
    API_Func_80933d4(0x80000, 0x10000);
    API_Func_80933f8(0x17880000, -1, 0xd680000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    __Func_808c44c();
    API_MapActor_Surprise(WorldDialogueActorID, 0x102);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(WorldDialogueActorID, 1);
    API_ActorMessage_Wait(WorldDialogueActorID | 0x3000, 0, 0x28);
    API_MapActor_TravelToAnimWait(WorldDialogueActorID, 0x1768, 0xd48);
    API_MapActor_TravelToAnimWait(WorldDialogueActorID, 0x1794, 0xd48);
    API_Func_8092adc(WorldDialogueActorID, 0x3000, 20);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetBehavior(0, (int)gScript_881__0200cf20);
    API_CutsceneWait(20);
    API_Func_80925cc(WorldDialogueActorID, 1);
    API_ActorMessage_Wait(WorldDialogueActorID, 0, 10);
    while (__MapActor_GetActor(0)->waveCounter == 0) {
        API_WaitFrames(1);
    }
    API_Func_8092adc(0, 0x4000, 20);
    API_MapActor_Emote(WorldDialogueActorID, 0x106, 0);
    API_Func_80925cc(WorldDialogueActorID, 2);
    API_ActorMessage_Wait(WorldDialogueActorID, 0, 10);
    API_Func_8092adc(WorldDialogueActorID, 0x8000, 10);
    API_ActorMessage(WorldDialogueActorID, 0);
    API_Func_8092adc(0, 0, 20);
    __MapActor_GetActor(WorldDialogueActorID)->__unk5A &= ~1;
    API_MapActor_TravelToAnimWait(WorldDialogueActorID, 0x178c, 0xd48);
    API_CutsceneWait(1);
    __MapActor_GetActor(WorldDialogueActorID)->__unk5A |= 1;
    API_CutsceneWait(20);
    __MapActor_GetActor(WorldDialogueActorID)->__unk5A &= ~1;
    API_MapActor_TravelToAnimWait(WorldDialogueActorID, 0x1794, 0xd48);
    API_CutsceneWait(1);
    __MapActor_GetActor(WorldDialogueActorID)->__unk5A |= 1;
    __Func_808f1c0(0xf2, 3);
    __Func_8091a58(0xf2, 0);
    API_Func_80925cc(WorldDialogueActorID, 1);
    API_MessageID(0x2642);
    API_ActorMessage_Wait(WorldDialogueActorID, 0, 10);
    API_Func_8092adc(WorldDialogueActorID, 0x3000, 0);
    __Func_808c4c0();
    __Func_80936a0(0x10000, 10);
    API_CutsceneWait(20);
    API_SetFlag(0x234);
    API_SetFlag(0x9bf);
    gStateView.unk1c4 = (int)Lconst_2;
    gStateView.unk1c6 = 0x4e;
    API_CutsceneEnd();
}

struct CutsceneEvent {
    int type;
    short id;
    short unk6;
    union {
        void (*func)(void);
        int value;
    } u;
};

struct CutsceneActor {
    short id;
    short unk2;
    int unk4;
    int x;
    int y;
    int z;
    short angle;
    short unk22;
};

void OvlFunc_881_200a768()
{
    extern struct CutsceneEvent gOvl_0200e3f4[];
    extern struct CutsceneActor L5b84[] __asm__(".Lm881_5b84");
    extern void OvlFunc_881_200a858(void);
    int i;

    i = 0;
    while (1) {
        if (gOvl_0200e3f4[i].type == 1 && gOvl_0200e3f4[i].id == 0x8a) {
            gOvl_0200e3f4[i].type = 2;
            gOvl_0200e3f4[i].u.func = OvlFunc_881_200a858;
        }
        if (gOvl_0200e3f4[i].type == -1)
            break;
        i++;
    }

    i = 0;
    while (1) {
        if (L5b84[i].id == 0x39) {
            L5b84[i].x = 0x17940000;
            L5b84[i].z = 0xd480000;
            L5b84[i].angle = 0xc0 << 6;
            return;
        }
        i++;
    }
}

void OvlFunc_881_200a7dc(void)
{
    extern struct CutsceneEvent gOvl_0200e3f4[];
    int i;

    for (i = 0; ; i++) {
        if (gOvl_0200e3f4[i].type == 2 && gOvl_0200e3f4[i].id == 0x8a) {
            gOvl_0200e3f4[i].type = 1;
            gOvl_0200e3f4[i].u.value = 0x21;
            return;
        }
        if (gOvl_0200e3f4[i].type == -1)
            return;
    }
}

extern unsigned char L679c[] __asm__(".Lm881_679c");

void OvlFunc_881_200a81c(void) {

    API_CutsceneStart();
    API_MapActor_Face(0x37, 0, 0);
    API_MessageID(0x2642);
    API_ActorMessage(*(unsigned long *)L679c, 0);
    API_Func_8092adc(0x37, 0xc0 << 6, 0);
    API_CutsceneEnd();
}


extern void __CutsceneStart(void);
extern void __Func_808c44c(void);
extern void __MessageID(int);
extern void __ActorMessage(unsigned long, int);
extern void __Func_808c4c0(void);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_881_200a858(void)
{
    extern unsigned char L679c[] __asm__(".Lm881_679c");

    __CutsceneStart();
    __Func_808c44c();
    __MessageID(0x2643);
    __ActorMessage(*(unsigned long *)L679c, 0);
    __Func_808c4c0();
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0x1778, 0xd48);
    __CutsceneEnd();
}


void OvlFunc_881_200a8a8(void) {
    extern unsigned char iwram_3001ebc[];
    void *base;
    short *p;

    API_CutsceneStart();
    __Func_808c44c();
    API_Func_801776c(0x264c, 1);
    if (API_GetFlag(0x8d << 2)) {
        int one;

        base = *(void **)iwram_3001ebc;
        p = (short *)((char *)base + (0xb9 << 1));
        one = 1;
        *p = one;
    }
    __Func_808c4c0();
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/OvlFunc_881_200a8e8.s");

__asm__(".equ .Lconst_0, 0");
extern unsigned char Lconst_0[] __asm__(".Lconst_0");

void OvlFunc_881_200acb4(void)
{
    extern unsigned char gScript_881__0200cf7c[];
    extern unsigned char gScript_881__0200d01c[];
    extern unsigned char gScript_881__0200d0a8[];
    extern struct WorldMapStateView gStateView __asm__("gState");
    extern struct WorldMapEbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    extern void __Func_801173c(void);
    extern void __Func_808c44c(void);
    extern void __Func_80936a0(int, int);
    extern void __Func_8093710(void);
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern void __SetDestMap(int, int);
    extern void __SetUIColor(int, int);
    struct Actor *actor;

    __SetUIColor(gStateView.hue, gStateView.brightness);
    API_CutsceneStart();
    __Func_80936a0(0x10000, 0x12c);
    API_Func_80933f8(-1, -1, -1, 0);
    API_MapActor_SetAnim(5, 19);
    API_MapActor_SetAnim(8, 5);
    API_MapActor_SetPos(0, 0, 0);
    API_WaitFrames(1);
    __Func_80936a0(0x18000, 16);
    iwram_3001ebc_view.sub0->unk1c0 = 0x100;
    API_Func_8091200(0x10003, 1);
    iwram_3001ebc_view.sub0->unk1c8 = 16;
    API_MapTransitionIn();
    __Func_8093710();
    __Func_808c44c();
    API_CutsceneWait(0x28);
    API_Func_80925cc(5, 1);
    API_CutsceneWait(20);
    API_MessageID(0x2913);
    API_ActorMessage_Wait(5, 0, 20);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(5, 0x107, 20);
    API_ActorMessage_Wait(5, 0, 20);
    API_MapActor_Emote(8, 0x105, 0x50);
    API_ActorMessage_Wait(8, 0, 10);
    API_Func_80925cc(5, 2);
    API_ActorMessage_Wait(5, 0, 20);
    API_MapActor_Emote(8, 0x105, 0x64);
    API_MapActor_Emote(5, 0x105, 0x28);
    API_ActorMessage_Wait(5, 0, 20);
    API_ActorMessage_Wait(8, 0, 10);
    API_MapActor_Emote(5, 0x102, 20);
    API_ActorMessage_Wait(5, 0, 10);
    API_MapActor_Surprise(8, 0x102);
    API_CutsceneWait(0x50);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(5, 0x105, 0x50);
    API_ActorMessage_Wait(8, 0, 0x78);
    API_Func_80925cc(5, 1);
    API_ActorMessage_Wait(5, 0, 0x28);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(5, 0x105, 0x28);
    API_ActorMessage_Wait(5, 0, 0x78);
    API_MapActor_SetSpeed(9, 0x6666, 0x3333);
    API_MapActor_SetPos(9, 0x1ddc0000, 0xd840000);
    API_MapActor_TravelToAnimWait(9, 0x1d94, 0xd8c);
    API_MapActor_TravelToAnimWait(9, 0x1d88, 0xda0);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x6009, 0, 20);
    API_MapActor_Emote(8, 0x101, 0);
    API_MapActor_Emote(5, 0x101, 0x3c);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage(0x6009, 0);
    __Func_801173c();
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(9, (int)gScript_881__0200cf7c);
    API_CutsceneWait(0x50);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_Jump(8, 4, 0x28);
    API_MapActor_SetAnim(5, 1);
    API_MapActor_Jump(5, 4, 0x3c);
    API_Func_8092adc(8, 0x3000, 0);
    API_Func_8092adc(5, 0xb000, 0x28);
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    API_MapActor_SetSpeed(5, 0x9999, 0x4ccc);
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d01c);
    API_CutsceneWait(20);
    API_Func_80933d4(0xb333, 0x1666);
    API_Func_80933f8(0x1e380000, -1, 0xdc80000, 1);
    API_MapActor_SetBehavior(5, (int)gScript_881__0200d0a8);
    do {
        API_MapActor_SetAnim(10, 6);
        API_MapActor_SetAnim(6, 8);
        API_WaitFrames(1);
        actor = __MapActor_GetActor(5);
    } while (actor->waveCounter == 0);
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0x8000, 20);
    API_MapActor_Surprise(8, 0x102);
    API_MapActor_Surprise(5, 0x102);
    API_CutsceneWait(0x28);
    __Func_808c44c();
    API_Func_80931ec(5, 7, 13, 2, 12, 8, 9, 4, 4, 3, 0);
    API_CutsceneWait(20);
    __Func_801173c();
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x1e580000, -1, 0xdc80000, 1);
    API_Func_8092adc(9, 0x3000, 0);
    API_MapActor_SetSpeed(8, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(5, 0x19999, 0xcccc);
    API_MapActor_TravelToAnim(8, 0x1e7c, 0xdb8);
    API_MapActor_TravelToAnimWait(5, 0x1e6c, 0xdd8);
    API_MapActor_SetAnim(8, 1);
    __Func_808c44c();
    API_CutsceneWait(0x50);
    API_Func_80925cc(8, 1);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_80925cc(5, 2);
    API_ActorMessage_Wait(0x1005, 0, 0x28);
    API_Func_8092adc(8, 0x8000, 20);
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(8, 0, 0x3c);
    __Func_801173c();
    API_PlaySound(17);
    API_Func_8091200(0, 0);
    API_Func_8091254(0x78);
    API_WaitFrames(0x78);
    __SetDestMap((int)Lconst_0, 10);
}
void OvlFunc_881_200b130(void)
{
    extern unsigned char iwram_3001ebc[];
    extern void __Func_8092950(int, int);
    extern void *__MapActor_GetActor(int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void OvlFunc_881_200b1fc(void);
    unsigned char *base;

    API_CutsceneStart();
    API_PlaySound(0x8d);
    API_Func_8091220(0, 0);
    API_Func_8091200(0, 0);
    API_Func_8091254(1);
    API_WaitFrames(2);

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + (0xe4 << 1)) = 1;

    API_MapTransitionIn();
    API_WaitMapTransition();

    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    API_WaitFrames(1);

    API_Func_80933d4(0x80 << 11, 0x80 << 8);
    API_StartTask(OvlFunc_881_200b1fc, 0xc8 << 4);

    API_Func_8091220(0, 0);
    API_Func_8091200(0x10004, 1);
    API_Func_8091200(0x80 << 9, 2);
    API_Func_8091254(0x28);
    API_CutsceneWait(0xf0);
    API_Func_8091200(0, 0);
    API_Func_8091254(0x50);
    API_WaitFrames(0x5a);
    API_Func_8091e9c(0x6d);
    API_SetFlag(0x8d << 1);
    API_CutsceneEnd();
}

void OvlFunc_881_200b1fc(void)
{
    extern unsigned int __Random(void);
    extern void __Actor_SetAnim(unsigned char *, unsigned int);
    extern void __Actor_SetScript(struct Actor *, const void *);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern void __Func_80933f8(int, int, int, int);
    extern unsigned int iwram_3001e40;
    extern unsigned char gScript_881__0200d14c[];
    struct Actor *actor;
    struct Sprite *sprite;
    int x, z;
    int scale;

    x = (__Random() * 40) >> 16;
    z = (__Random() * 30) >> 16;
    actor = API_CreateActor(0xde, (x << 16) + 0x17b00000, 0, (z << 16) + 0x0c4c0000);
    if (actor != NULL) {
        sprite = actor->sprite;
        scale = 0x13333 + ((__Random() * 0x8000) >> 16);
        sprite->flags = 0;
        sprite->oam.priority = 2;
        actor->__unk55 = 0;
        actor->scale.x = scale;
        actor->scale.y = scale;
        __Actor_SetAnim((unsigned char *)actor, 1);
        __Actor_SetScript(actor, gScript_881__0200d14c);
    }
    if (_umodsi3_RAM(iwram_3001e40, 3) == 0) {
        switch ((__Random() * 4) >> 16) {
        case 0:
            __Func_80933f8(0x17c70000, -1, 0x0c690000, 1);
            break;
        case 1:
            __Func_80933f8(0x17c90000, -1, 0x0c670000, 1);
            break;
        case 2:
            __Func_80933f8(0x17c90000, -1, 0x0c690000, 1);
            break;
        case 3:
            __Func_80933f8(0x17c70000, -1, 0x0c670000, 1);
            break;
        }
    }
}
void OvlFunc_881_200b2f0(void)
{
    extern void *__MapActor_GetActor(int);
    extern void __Func_80936a0(int, int);
    extern unsigned char iwram_3001ebc[];
    struct Actor *actor;
    unsigned char *base;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetAnim(8, 2);
    API_MapActor_SetPos(8, 0x13080000, 0xca << 18);
    actor = (struct Actor *)__MapActor_GetActor(8);
    actor->facing = 0xa0 << 8;
    API_WaitFrames(1);
    __Func_80936a0(0x13333, 1);
    API_MapActor_SetPos(0, 0, 0);
    API_SetCameraTarget(8, 1);
    API_WaitFrames(1);
    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + (0xe0 << 1)) = 0x100;
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    API_MapActor_TravelToWait(8, 0x12d8, 0xb2 << 2);
    API_MapActor_TravelToWait(8, 0x12a8, 0x9a << 2);
    API_MapActor_SetSpeed(8, 0x4ccc, 0x2666);
    API_MapActor_TravelToWait(8, 0x12a8, 0xec << 1);
    API_MapActor_SetSpeed(8, 0x3333, 0x1999);
    API_MapActor_TravelToWait(8, 0x1298, 0xe4 << 1);
    API_MapActor_SetSpeed(8, 0x1999, 0xccc);
    API_MapActor_TravelToWait(8, 0x1298, 0xdc << 1);
    API_MapActor_SetAnim(8, 1);
    API_CutsceneWait(0x28);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x6e);
}


unsigned int OvlFunc_881_200b41c(void)
{
    extern unsigned int OvlFunc_881_200b448(unsigned int);
    unsigned int r5;
    unsigned int r6;

    r6 = OvlFunc_881_200b448(0);
    r6 += OvlFunc_881_200b448(2);
    r5 = OvlFunc_881_200b448(1);
    r5 += OvlFunc_881_200b448(3);
    r6 -= r5;
    return r6;
}

unsigned int OvlFunc_881_200b448(unsigned int arg0)
{
    extern int __GetFlag(int);
    extern unsigned int L6718[] __asm__(".Lm881_6718");
    unsigned int base;
    unsigned int i;

    base = 0;
    switch (arg0) {
    case 0:
        base = 0x92c;
        break;
    case 1:
        base = 0x935;
        break;
    case 2:
        base = 0x917;
        break;
    case 3:
        base = 0x990;
        break;
    }

    for (i = 0; i <= 8; i++) {
        if (__GetFlag(base + i) != 0)
            return L6718[i];
    }
    return 0;
}
void OvlFunc_881_200b4a0(void)
{
    extern unsigned int iwram_3001e40;
    extern struct Actor *__MapActor_GetActor(int);
    extern void *__CreateActor(int, int, int, int);
    extern unsigned int __Random(void);
    extern void __Func_80929d8(struct Actor *, int);
    extern void __Actor_SetAnim(unsigned char *, unsigned int);
    extern unsigned char gScript_881__0200e73c[];
    extern void __Actor_SetScript(struct Actor *, const void *);
    struct Actor *other;
    struct Actor *actor;
    struct Sprite *sprite;

    if (iwram_3001e40 & 0xf) {
        return;
    }

    other = __MapActor_GetActor(8);
    actor = (struct Actor *)__CreateActor(0xde, other->pos.x - 0x200000, other->pos.y, other->pos.z - 0x100000);
    if (actor == NULL) {
        return;
    }

    actor->scale.x = 0x80 << 8;
    actor->scale.y = 0x80 << 8;
    sprite = actor->sprite;

    if ((__Random() * 2) >> 16) {
        int offset = ((__Random() * 48) >> 16) << 16;
        actor->pos.x -= offset >> 1;
        actor->pos.z -= offset;
    } else {
        int offset = ((__Random() * 32) >> 16) << 16;
        actor->pos.x += offset;
        actor->pos.z += offset >> 1;
    }

    sprite->flags = 0;
    sprite->oam.priority = other->sprite->oam.priority;
    actor->flags |= 2;
    actor->__unk55 = other->__unk55;

    __Func_80929d8(actor, 9);
    __Actor_SetAnim((unsigned char *)actor, 2);
    __Actor_SetScript(actor, gScript_881__0200e73c);
}


void OvlFunc_881_200b57c(void)
{
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern void __Func_80936a0(int, int);
    extern void __Func_8092950(int, int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern const unsigned char gScript_881__0200d218[];
    
    extern struct WorldMapEbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    struct Actor *actor;

    actor = __MapActor_GetActor(8);
    API_CutsceneWait(60);
    API_CutsceneStart();
    __Func_80936a0(0x9999, 1);
    actor->scale.x = 0x13333;
    actor->scale.y = 0x13333;
    API_SetCameraTarget(8, 1);
    API_WaitFrames(1);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    actor->waveCounter = 0;
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d218);
    API_StartTask(OvlFunc_881_200b4a0, 0xc8 << 4);

    iwram_3001ebc_view.sub0->unk1c0 = 0x100;
    API_Func_8091200(0x10003, 1);
    iwram_3001ebc_view.sub0->unk1c8 = 0x20;
    API_MapTransitionIn();
    API_CutsceneWait(120);
    __Func_80936a0(0x16666, 300);
    API_CutsceneWait(270);
    iwram_3001ebc_view.sub0->unk1c8 = 0x10;
    *(volatile u16 *)0x05000000 = 0x7fff;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x6f);
}
void OvlFunc_881_200b678(void)
{
    extern unsigned char gState_ovl[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    extern unsigned int iwram_3001e40;
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern int __GetFlagByte(int);
    extern int __GetFlag(int);
    extern void __SetFlagByte(int, int);

    unsigned char *gs;
    struct Actor *actor;
    void *base;
    short *p;
    int flag;
    int val;

    gs = gState_ovl;
    gs += (0xfa << 1);
    actor = __MapActor_GetActor(*(int *)gs);
    base = *(void **)iwram_3001ebc;
    actor->facing = iwram_3001e40 << 12;

    flag = __GetFlagByte(0xbe << 2);
    if (flag != 0) {
        if (flag == 1) {
            p = (short *)((char *)base + (0xc1 << 1));
            val = 0x63;
            *p = val;
        } else if (!__GetFlag(0x83 << 1)) {
            flag--;
        }
    }
    __SetFlagByte(0xbe << 2, flag);
}
void OvlFunc_881_200b6dc(int arg0)
{
    extern unsigned char gStateBytes[] __asm__("gState");
    extern unsigned char iwram_3001ebc[];
    extern void *__MapActor_GetActor(int);







    extern void OvlFunc_881_200b678(void);



    extern void __SetFlagByte(int, int);

    unsigned char *gs;
    struct Actor *actor;
    short *target;
    unsigned char *base;
    int leaderId;
    int flag;

    gs = gStateBytes;
    leaderId = *(int *)(gs + (0xfa << 1));
    actor = (struct Actor *)__MapActor_GetActor(leaderId);
    flag = API_GetFlag(0xbc << 2);
    if (flag != 0)
        return;

    API_CutsceneStart();
    API_MapActor_Surprise(leaderId, 0x101);
    API_MapActor_SetAnim(leaderId, 9);
    target = (short *)__MapActor_GetActor(arg0);
    if (target != NULL) {
        API_MapActor_TravelTo(leaderId, target[5], target[9]);
    }
    API_MapActor_WaitMovement(leaderId);
    API_PlaySound(0xf4);
    API_StartTask(OvlFunc_881_200b678, 0xc8 << 4);
    actor->__unk55 = flag;
    API_Actor_TravelTo(actor, actor->pos.x, actor->pos.y + (0x80 << 14), actor->pos.z);
    API_MapActor_WaitMovement(leaderId);
    actor->motion.y = flag;
    actor->__unk55 = 4;
    *(gs + (0xf9 << 1)) = 2;
    API_SetFlag(0xbc << 2);
    __SetFlagByte(0xbe << 2, 0xb4);
    API_CutsceneEnd();
    base = *(unsigned char **)iwram_3001ebc;
    *(u16 *)(base + (0xbe << 1)) = flag;
}


void OvlFunc_881_200b7bc(void) {
    extern void OvlFunc_881_200b6dc(int);
    OvlFunc_881_200b6dc(0x36);
}


void OvlFunc_881_200b7c8(void) {
    extern unsigned int iwram_3001f30;
    unsigned int ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}

#include "state/global_state.h"
    extern unsigned char iwram_3001ebc[];   /* @ 0x03001EBC */
    extern GlobalState gState;   /* GlobalState @ 0x02000240 */

void OvlFunc_881_200b7d8(void)
{
    extern unsigned char iwram_3001ebc[];   /* @ 0x03001EBC */
    extern GlobalState gState;   /* GlobalState @ 0x02000240 */
    void *base;
    short *p;
    unsigned char *gs;
    int arg0;
    unsigned char *actor;
    unsigned short zero;
    unsigned short a0_flagbyte;
    unsigned long long t1;
    unsigned short a0_b;

    base = *(void **)iwram_3001ebc;
    p = (short *)((char *)base + (0xc1 << 1));
    if (*p == 0x63) {
        zero = 0;
        *p = zero;
    }
    __ClearFlag(0xbc << 2);
    __SetFlag(0x2f1);

    a0_flagbyte = 0xbe << 2;
    do { a0_flagbyte = (unsigned short) a0_flagbyte; } while (0);
    __SetFlagByte(a0_flagbyte, 0);

    t1 = 0x62;
    do { t1 = (unsigned long) t1; } while (0);
    __StartMapBattle((unsigned long) t1, 5);

    gs = (unsigned char *)&gState;
    gs[0x22b] = 3;

    a0_b = 0x62;
    do { a0_b = (unsigned short) a0_b; } while (0);
    __StartMapBattle(a0_b, 7);

    gs += (0xfa << 1);
    arg0 = *(unsigned int *)gs;
    actor = (unsigned char *)__MapActor_GetActor(arg0);
    actor[0x55] = 2;
}

void OvlFunc_881_200b84c(void)
{
    extern unsigned char gStateBytes[] __asm__("gState");
    extern int __GetFlag(int);
    extern struct Actor *__MapActor_GetActor(int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __SetDestMap(int, int);
    struct Actor *a;
    struct Actor *b;
    int i;

    {
        unsigned char *gs = gStateBytes;
        gs += 0x1f4;
        a = __MapActor_GetActor(*(int *)gs);
    }
    b = __MapActor_GetActor(0x36);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_PlaySound(0xdb);
    __Actor_SetSpriteFlags(a, 0);
    b->__unk55 = 0;
    a->__unk55 = 0;
    a->motion.y = 0;
    a->__unk61 = 1;
    b->__unk61 = 1;
    for (i = 0x3b; i >= 0; i--) {
        a->motion.y += 0x3333;
        b->motion.y += 0x3333;
        API_WaitFrames(1);
    }
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneEnd();
    API_SetFlag(0x122);
    __SetDestMap((int)Lconst_2, 0x1b);
}
void OvlFunc_881_200b8fc(void)
{
    extern void __SetRegAnimDest(unsigned int reg, unsigned int value);
    extern unsigned int iwram_3001e40;
    extern unsigned short L67a0 __asm__(".Lm881_67a0");

    __SetRegAnimDest(0x04000050, 0x3f41);
    if (iwram_3001e40 & 2) {
        __SetRegAnimDest(0x04000052, L67a0 | 0xc);
    } else {
        __SetRegAnimDest(0x04000052, L67a0 | 0x10);
    }
}
void OvlFunc_881_200b95c(void)
{
    extern GlobalState gState;
    extern unsigned int iwram_3001e40;
    extern void *__MapActor_GetActor(int);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern unsigned int __Random(void);
    extern void __Func_80933f8(int, int, int, int);
    unsigned char *gs;
    unsigned char *actor;
    short x;
    short z;
    int y;

    gs = (unsigned char *)&gState;
    gs += (0xfa << 1);
    actor = (unsigned char *)__MapActor_GetActor(*(int *)gs);
    y = -1;
    x = *(short *)(actor + 0xa);
    z = *(short *)(actor + 0x12);

    if (_umodsi3_RAM(iwram_3001e40, 3) != 0)
        return;

    switch ((__Random() * 4) >> 16) {
    case 0:
        __Func_80933f8((x << 16) - 0x10000, y, (z << 16) + 0x10000, 1);
        break;
    case 1:
        __Func_80933f8((x << 16) + 0x10000, y, (z << 16) - 0x10000, 1);
        break;
    case 2:
        __Func_80933f8((x << 16) + 0x10000, y, (z << 16) + 0x10000, 1);
        break;
    case 3:
        __Func_80933f8((x << 16) - 0x10000, y, (z << 16) - 0x10000, 1);
        break;
    }
}






#define QUEUE_WORLD_DMA(queue, dest_val, src_expr, ctrl_val)         \
    do {                                                             \
        u32 savedIme = REG_IME;                                      \
        s32 count;                                                   \
        u32 *task;                                                   \
        s32 slot;                                                    \
        SET_IO(REG_IME, REG_ADDR_IME);                               \
        count = *(queue);                                            \
        if (count < 32) {                                            \
            slot = count * 12;                                       \
            count++;                                                 \
            task = (u32 *)(slot + (u32)(queue));                     \
            *(queue) = count;                                        \
            task++;                                                  \
            *task++ = (u32)(src_expr);                               \
            *task++ = (dest_val);                                    \
            *task = (ctrl_val);                                      \
        }                                                            \
        SET_IO(REG_IME, savedIme);                                   \
    } while (0)

void OvlFunc_881_200b9fc(int palette)
{
    extern void *__alloc_ewram(unsigned int);
    extern void __free(void *);
    extern unsigned int __DecompressLZ(const void *, void *);
    extern void __Func_8011590(void);
    extern void __Func_8011644(void);
    extern void OvlFunc_881_200b8fc(void);
    extern void OvlFunc_881_200b95c(void);
    extern struct Actor *__MapActor_GetActor(int);
    extern unsigned char WorldTransitionTiles[] __asm__(".Lm881_47a6");
    extern unsigned char WorldTransitionPalettes[] __asm__(".Lm881_44ac");
    extern unsigned char WorldTransitionFrames[] __asm__("gScript_943__0200c4ec");
    extern unsigned short WorldTransitionHeight __asm__(".Lm881_67a0");
    extern struct WorldMapStateView gStateView __asm__("gState");
    extern struct WorldMapEbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    unsigned char *graphics;
    u16 *queue;
    struct Actor *actor;

    graphics = __alloc_ewram(0x4000);
    API_WaitFrames(1);
    API_ClearFlag(0x109);
    __Func_8011590();
    __DecompressLZ(WorldTransitionTiles, graphics);
    __DecompressLZ(WorldTransitionFrames, graphics + 0x1000);
    queue = (u16 *)&gDMATaskCount;
    QUEUE_WORLD_DMA(queue, 0x50001c0, WorldTransitionPalettes + palette * 32, 0x80000010);
    QUEUE_WORLD_DMA(queue, 0x6001000, graphics, 0x84000400);
    API_StartTask(OvlFunc_881_200b8fc, 0xc80);
    API_CutsceneStart();
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x3a80, 0x84000140);
    actor = __MapActor_GetActor(gStateView.playerActorId);
    actor->visible = 0;
    iwram_3001ebc_view.sub0->unk1c8 = 0x10;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_PlaySound(0xf6);
    WorldTransitionHeight = 0xe00;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x3480, 0x84000140);
    API_CutsceneWait(2);
    WorldTransitionHeight = 0xd00;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x2e80, 0x84000140);
    API_CutsceneWait(2);
    WorldTransitionHeight = 0xc00;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x2880, 0x84000140);
    API_CutsceneWait(2);
    WorldTransitionHeight = 0xb00;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x2280, 0x84000140);
    API_CutsceneWait(2);
    WorldTransitionHeight = 0xa00;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x1c80, 0x84000140);
    API_CutsceneWait(2);
    WorldTransitionHeight = 0x900;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x1680, 0x84000140);
    API_CutsceneWait(2);
    WorldTransitionHeight = 0x800;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x1080, 0x84000140);
    API_CutsceneWait(140);
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x1680, 0x84000140);
    API_CutsceneWait(4);
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x1c80, 0x84000140);
    API_CutsceneWait(4);
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x2280, 0x84000140);
    API_CutsceneWait(4);
    WorldTransitionHeight = 0x900;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x2880, 0x84000140);
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xa00;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x2e80, 0x84000140);
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xb00;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x3480, 0x84000140);
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xc00;
    QUEUE_WORLD_DMA(queue, 0x6002000, graphics + 0x3a80, 0x84000140);
    __Func_8011644();
    API_StartTask(OvlFunc_881_200b95c, 0xc80);
    API_PlaySound(0x8d);
    WorldTransitionHeight = 0xd00;
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xe00;
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xf00;
    API_CutsceneWait(4);
    WorldTransitionHeight = 0x1000;
    API_CutsceneWait(45);
    API_MapTransitionOut();
    API_WaitMapTransition();
    __free(graphics);
    API_SetFlag(0x101);
}



void OvlFunc_881_200bf10(unsigned int arg0)
{
    extern unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
    
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_881_200c058(arg0);
    }
}


void OvlFunc_881_200bf4c(unsigned int arg0)
{
    extern volatile unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int a, int b);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_881_200c058(arg0);
    }
}

void OvlFunc_881_200bf88(int arg0)
{
    extern volatile unsigned int iwram_3001e40;
    extern int _umodsi3_RAM(unsigned int a, int b);
    extern void __Actor_SetColorswap(int a, int b);
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
}

void OvlFunc_881_200bfb4(struct Actor *actor)
{
    extern int __sin(int);
    struct Actor *linked;
    short counter;
    int s;

    linked = actor->linkedActor;
    counter = ++actor->waveCounter;
    if (counter > 31) {
        API_DeleteActor((int)actor);
    } else {
        s = __sin(counter << 10);
        actor->scale.x = s;
        actor->scale.y = s;
        actor->pos.x = linked->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = linked->pos.z + (0x10000 - s) * 5 + 0x80000;
    }
}

void OvlFunc_881_200c004(struct Actor *actor) {
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

#include "sprite.h"

struct SpriteOamBitView {
    void *dest;
    u16 posY : 8;
    u16 affineMode : 2;
    u16 objMode : 2;
    u16 mosaic : 1;
    u16 bpp : 1;
    u16 shape : 2;
    u16 posX : 9;
    u16 affineParam : 5;
    u16 size : 2;
    u16 tileNum : 10;
    u16 priority : 2;
    u16 palette : 4;
};

struct E30SlotView {
    unsigned char pad[0x46];
    u16 slot;
};

void OvlFunc_881_200c058(unsigned int arg0)
{
    extern struct E30SlotView *iwram_3001f30_view __asm__("iwram_3001f30");
    extern struct SpriteSlot gSpriteSlots[];
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern void __Func_8003f3c(int);
    extern void OvlFunc_881_200bfb4(struct Actor *);
    extern void OvlFunc_881_200c004(struct Actor *);

    struct E30SlotView *e30 = iwram_3001f30_view;
    struct Actor *parent = (struct Actor *)arg0;
    struct Actor *actors[2];
    int i;

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
                struct SpriteOamBitView *oam = (struct SpriteOamBitView *)&sprite->oam;

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

    actors[0]->update = OvlFunc_881_200c004;
    ((struct SpriteOamBitView *)&actors[0]->sprite->oam)->priority = 1;
    ((struct SpriteOamBitView *)&actors[1]->sprite->oam)->priority = 1;
    actors[1]->update = OvlFunc_881_200bfb4;
    actors[1]->flags = 2;
}

INCLUDE_ASM("asm/maps/world_map_cutscenes/world_map_cutscenes_data.s");

INCLUDE_ASM("asm/maps/world_map_cutscenes/imports.s");
