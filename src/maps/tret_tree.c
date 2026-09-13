/* rom_7a5214 (overlay file 918): consolidated TU — tret_tree map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

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

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_2008334.s");

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

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_200869c.s");
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_2008918.s");
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
INCLUDE_ASM("asm/maps/tret_tree/TretTree_MapInit.s");

/* OvlFunc_918_2009224; inline DMA3: SAD=0x05000000 (palette RAM, built as
 * 0xa0<<19), DAD=*iwram_3001ed0, CNT=0x84000070 (DMA_ENABLE|32bit, 0x70 words
 * = 0x1c0 bytes). Uses the existing DMA3_COPY helper (stmia r3!,{r0,r1,r2}). */
#include "dma.h"
extern void *iwram_3001ed0;

void OvlFunc_918_2009224(void) {
    DMA3_COPY((void *)(0xa0 << 19), iwram_3001ed0, 0x1c0);
}

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_2009244.s");
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
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_200962c.s");

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_20097ec.s");

extern void __StopTask(void (*fn)(void));
extern void OvlFunc_918_2009244(void);

void OvlFunc_918_200984c(void) {
    __StopTask(OvlFunc_918_2009244);
}



extern void OvlFunc_918_200985c(struct Actor *);
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_200985c.s");
extern void __Func_800fe9c(void);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern int __cos(int);
extern int __sin(int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
extern void __Func_8012330(int, int, int);
extern void __Func_8012350(void);
extern void __CutsceneEnd(void);

static inline void Func_80933f8_macro(int a, int b, int c, int d)
{
    __Func_80933f8(-a, -b, -c, d);
}

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
INCLUDE_ASM("asm/maps/tret_tree/tret_tree_data.s");