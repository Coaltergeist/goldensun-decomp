/* rom_787e04 (overlay file 887): consolidated TU — vale_rooms_2 map overlay. */

#include "nonmatching.h"
#include "gba/io.h"
#include "api.h"
#include "actor.h"
#include "sprite.h"

INCLUDE_ASM("asm/maps/vale_rooms_2/exports.s");

extern int __atan2(int, int);

int OvlFunc_887_2008030(struct Actor *actor)
{
    struct Actor *linked;
    int dz, dx;
    int diff;
    unsigned short angle;

    linked = actor->linkedActor;
    if (linked != 0) {
        actor->__unk5A &= 0xfe;
        dz = linked->pos.z - actor->pos.z;
        dx = linked->pos.x - actor->pos.x;
        angle = __atan2(dz, dx);
        diff = (short)(angle - actor->facing);
        if (diff != 0) {
            if (diff > 0x1000) {
                diff = 0x1000;
            }
            if (diff < (int)0xfffff000) {
                diff = (int)0xfffff000;
            }
            actor->facing = actor->facing + diff;
        }
    }
    return 1;
}

extern unsigned char gLuckyFountainPrizes[];

unsigned int ValeRooms2_GetEntrances(void) {
    return (unsigned int)gLuckyFountainPrizes;
}

int ValeRooms2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char L2198[] __asm__(".Lm887_2198");
extern unsigned int gOvl_0200a1dc;

unsigned int *ValeRooms2_GetExits(void)
{
    if (__GetFlag(0x834))
        return &gOvl_0200a1dc;
    return (unsigned int *)L2198;
}

extern unsigned char L2518[] __asm__(".Lm887_2518");
extern unsigned char L2410[] __asm__(".Lm887_2410");
extern unsigned char L2338[] __asm__(".Lm887_2338");
extern unsigned char L2218[] __asm__(".Lm887_2218");
extern unsigned int gState;

unsigned char * ValeRooms2_GetActors(void) {
    unsigned int r3;
    unsigned int r2;
    unsigned char *r5;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x13) {
        return L2518;
    }
    if (__GetFlag(0x87a) != 0) {
        r5 = L2410;
    } else if (__GetFlag(0x815) != 0) {
        r5 = L2338;
    } else {
        r5 = L2218;
    }
    __Func_808b868(r5);
    return r5;
}

extern void __CutsceneWait(int);
extern int __Func_8091c7c(int, int);

extern unsigned char Lconst_22b9[] __asm__(".Lconst_22b9");
__asm__(".equ .Lconst_22b9, 0x22b9");

void OvlFunc_887_2008118(int arg0) {
    int msg = (int)Lconst_22b9;

    __MessageID(msg);
    __ShowActorMessage_NoWait(arg0, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0xa);
        __MessageID(msg + 1);
    } else {
        __MessageID(msg + 2);
    }
    __ActorMessage(arg0, 0);
}

#include "state/global_state.h"
extern GlobalState gState__a1 __asm__("gState");
extern unsigned char L2c5c[] __asm__(".Lm887_2c5c");
extern unsigned char L2b9c[] __asm__(".Lm887_2b9c");
extern unsigned char L25a8[] __asm__(".Lm887_25a8");
extern unsigned char L2980[] __asm__(".Lm887_2980");
extern unsigned char L2800[] __asm__(".Lm887_2800");
extern unsigned char L26b0[] __asm__(".Lm887_26b0");

unsigned int ValeRooms2_GetEvents(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState__a1;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x13) {
        if (__GetFlag(0x950) != 0) {
            return (unsigned int)L2c5c;
        } else {
            return (unsigned int)L2b9c;
        }
    } else if (__GetFlag(0x834) != 0) {
        return (unsigned int)L25a8;
    } else if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L2980;
    } else if (__GetFlag(0x815) != 0) {
        return (unsigned int)L2800;
    } else {
        return (unsigned int)L26b0;
    }
}

void OvlFunc_887_20081e0(void)
{
    extern unsigned char iwram_3001ebc[];
    unsigned short *r2;
    unsigned short r3;

    API_CutsceneStart();
    API_Func_809259c(0x10, 2);
    API_CutsceneWait(0x1e);
    API_MessageID(0xf5b);
    API_MapActor_TurnToFaceActor(0, 0x10, 0xa);
    API_ActorMessage_Wait(0x10, 0, 6);
    API_MapActor_Emote(0x10, 0x81 << 1, 0);
    API_Func_809259c(0x10, 1);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(0x10, 4);
    API_CutsceneWait(0x14);
    __ShowActorMessage_NoWait(0x10, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
    }
    API_Func_809259c(0x10, 1);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0x10, 0, 4);
    API_CutsceneEnd();
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_887_2008284(void) {
    unsigned short *r2;
    unsigned short r3;

    __CutsceneStart();
    __MapActor_Face(0xe, 0, 0xa);
    __MessageID(0x11aa);
    __ShowActorMessage_NoWait(0xe, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __ActorMessage(0xe, 0);
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        __Func_8093054(0xe, 0);
    }
    __CutsceneEnd();
}

extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int);
extern unsigned int iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void OvlFunc_887_20082e0(int arg0) {
    unsigned char *base;

    if (__GetFlag(0x834) != 0) {
        __Func_8095214();
    }
    base = (unsigned char *)iwram_3001ebc__a1;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(arg0);
}

extern void __PlaySound(int a);

void OvlFunc_887_200831c(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(1);
}


void OvlFunc_887_2008330(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(2);
}


void OvlFunc_887_2008344(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(3);
}


void OvlFunc_887_2008358(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(4);
}


void OvlFunc_887_200836c(void) {
    __PlaySound(0x80);
    OvlFunc_887_20082e0(5);
}


void OvlFunc_887_2008380(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(6);
}


void OvlFunc_887_2008394(void) {
    __PlaySound(0x80);
    OvlFunc_887_20082e0(7);
}


void OvlFunc_887_20083a8(void) {
    __PlaySound(0x81);
    OvlFunc_887_20082e0(8);
}


void OvlFunc_887_20083bc(void) {
    __PlaySound(0x81);
    OvlFunc_887_20082e0(9);
}


void OvlFunc_887_20083d0(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(0xa);
}


void OvlFunc_887_20083e4(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(0xb);
}

struct ValeRooms2StateView {
    unsigned char pad[0x1c2];
    short room;
};

struct ValeRooms2Sub0View {
    unsigned char pad[0x1c0];
    int unk1c0;
    int unk1c4;
    int unk1c8;
    unsigned char pad1cc[0xc];
    unsigned short unk1d8;
    unsigned char pad1da[6];
    struct Actor *cameraActor;
};

struct ValeRooms2Sub3View {
    unsigned char pad[0x1f84];
    short unk1f84;
};

struct ValeRooms2EbcView {
    struct ValeRooms2Sub0View *sub0;
    void *sub1;
    void *sub2;
    struct ValeRooms2Sub3View *sub3;
};

int ValeRooms2_MapInit(void)
{
    extern struct ValeRooms2StateView gStateView __asm__("gState");
    extern struct ValeRooms2EbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    extern void __ClearFlag(int);
    extern void __SetFlag(int);
    extern void __MapActor_SetPos(int, int, int);
    extern void OvlFunc_887_20093b4(void);
    extern void __Func_8092b08(int, int);
    extern struct Actor *__MapActor_GetActor(int);
    extern void __Actor_SetSpriteFlags(struct Actor *, int);
    extern void __Func_80118a8(int);
    extern void __MapActor_SetAnim(int, int);
    extern void OvlFunc_887_2008a0c(void);
    extern void OvlFunc_887_2008578(void);
    extern void OvlFunc_887_20093e4(void);
    extern void __StartThunder(void);
    extern void __Func_8095240(void);
    extern void __WaitFrames(int);
    extern void __MapTransitionIn(void);
    extern void __Func_8095268(void);
    extern void __Func_800fe9c(void);

    if (gStateView.room == 0x13) {
        __ClearFlag(0x12f);
        iwram_3001ebc_view.sub0->unk1c0 = 0x209;
        return 0;
    }

    if (__GetFlag(0x834) != 0) {
        __MapActor_SetPos(0xb, 0, 0);
        __MapActor_SetPos(0xc, 0, 0);
        __MapActor_SetPos(0xd, 0, 0);
        __MapActor_SetPos(0xe, 0, 0);
        __MapActor_SetPos(0xf, 0, 0);
        __MapActor_SetPos(0x10, 0, 0);
    } else {
        OvlFunc_887_20093b4();
    }
    __Func_8092b08(0xd, 1);

    if (__GetFlag(0x87a) != 0) {
        __Actor_SetSpriteFlags(__MapActor_GetActor(0x11), 0);
        if (gStateView.room >= 6 && gStateView.room <= 7) {
            if (__GetFlag(0x109) != 0) {
                if (__GetFlag(0x203) != 0) {
                    __Func_80118a8(0xc);
                }
            } else {
                __Func_80118a8(0xb);
                __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
                __MapActor_SetAnim(8, 0xa);
            }
        }
    } else if (gStateView.room == 0x15) {
        OvlFunc_887_2008a0c();
    } else if (gStateView.room == 0x14) {
        __SetFlag(0x834);
        OvlFunc_887_2008578();
    } else if (gStateView.room == 0x16) {
        OvlFunc_887_20093e4();
    } else {
        iwram_3001ebc_view.sub0->unk1c0 = 0x209;
        if (__GetFlag(0x834) != 0) {
            __StartThunder();
            iwram_3001ebc_view.sub3->unk1f84 = 1;
            __Func_8095240();
            __WaitFrames(0x1e);
            __MapTransitionIn();
            __WaitMapTransition();
            __Func_8095268();
        } else {
            __Func_800fe9c();
            __WaitFrames(1);
        }
    }
    return 0;
}
struct ValeRooms2E70View {
    unsigned char pad[0xec];
    int unkEc;
    int unkF0;
    int unkF4;
    int unkF8;
};

__asm__(".equ .Lconst_e52, 0xe52");
extern unsigned char Lconst_e52[] __asm__(".Lconst_e52");

void OvlFunc_887_2008578(void)
{
    extern unsigned char ActorCmd_ARRAY_887__02009ab4[];
    extern unsigned char gScript_887__02009b04[];
    extern unsigned char gScript_887__02009b34[];
    extern struct ValeRooms2EbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    extern void __Actor_AddSpriteLayer(struct Actor *, int);
    extern void __Actor_SetSpriteFlags(struct Actor *, int);
    extern void __Func_800c5b4(void);
    extern void __Func_800c5fc(void);
    extern void __Func_800fe9c(void);
    extern void __Func_8019aa0(int, int, int);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8092950(unsigned int, unsigned int);
    extern void __Func_8093304(int);
    extern void __Func_8095240(void);
    extern void __Func_8095268(void);
    extern struct Actor *__MapActor_GetActor(int);
    extern void OvlFunc_887_20097e4(void);
    extern void __StartThunder(void);

    struct ValeRooms2Sub0View *initialMap = iwram_3001ebc_view.sub0;
    struct ValeRooms2E70View *levelData = *(struct ValeRooms2E70View **)((char *)&iwram_3001ebc_view - 0x4c);
    struct Actor *cameraActor = initialMap->cameraActor;
    struct Sprite *sprite = __MapActor_GetActor(17)->sprite;
    struct ValeRooms2Sub0View *map;
    int message;

    API_CutsceneStart();
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(13, 0, 0);
    API_MapActor_SetPos(14, 0, 0);
    API_MapActor_SetPos(15, 0, 0);
    API_MapActor_SetPos(16, 0, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    API_MapActor_SetAnim(0, 18);
    sprite->rotation = 0x555;
    __MapActor_GetActor(17)->__unk55 = 0;
    __Actor_SetSpriteFlags(__MapActor_GetActor(17), 0);
    API_MapActor_SetPos(17, 0x2400000, 0x28a0000);
    API_Func_80118a8(7);
    API_MapActor_SetPos(8, 0x2160000, 0x2b00000);
    __Func_800c5b4();
    __Func_8093304(8);
    message = (int)Lconst_e52;
    __Func_8019aa0(message, 1, 0);
    API_CutsceneWait(0x28);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    __Func_8093304(8);
    __Func_8019aa0(message + 1, 1, 0);
    __Func_800c5fc();
    API_CutsceneWait(0x28);
    levelData->unkEc = 0x1480000;
    levelData->unkF0 = 0x2580000;
    levelData->unkF4 = 0x2700000;
    levelData->unkF8 = 0x3300000;
    cameraActor->pos.x = 0x2340000;
    cameraActor->pos.y = 0;
    cameraActor->pos.z = 0x2b30000;
    __Func_800fe9c();
    API_WaitFrames(1);
    map = iwram_3001ebc_view.sub0;
    map->unk1c0 = 0x209;
    map->unk1c8 = 0x40;
    __StartThunder();
    iwram_3001ebc_view.sub3->unk1f84 = 1;
    __Func_8095240();
    API_WaitFrames(30);
    message += 2;
    API_MapTransitionIn();
    API_WaitMapTransition();
    __Func_8095268();
    API_MapActor_DoAnim(8, 4);
    API_MessageID(message);
    API_ActorMessage_Wait(0x9008, 0, 0x3c);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(0x28);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x9008, 0, 20);
    API_Func_80925cc(0, 2);
    API_Func_80118c0(7);
    API_CutsceneWait(20);
    API_Func_80118a8(8);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetAnim(0, 19);
    API_MapActor_TravelToWait(0, 0x22d, 0x2a7);
    API_Func_80118c0(8);
    API_Func_80118a8(9);
    API_MapActor_TravelToWait(0, 0x22b, 0x2a8);
    API_CutsceneWait(30);
    API_Func_8092adc(8, 0xd000, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 1);
    API_MapActor_Jump(0, 4, 0);
    API_MapActor_TravelToAnimWait(0, 0x21f, 0x2a2);
    API_Func_8092b08(0, 3);
    API_Func_8092adc(0, 0x4000, 0x28);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage(0x9008, 0);
    OvlFunc_887_20097e4();
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(0x9008, 0, 20);
    __MapActor_GetActor(8)->__unk5A &= ~1;
    API_MapActor_TravelToAnimWait(8, 0x21e, 0x2a8);
    API_CutsceneWait(1);
    __MapActor_GetActor(8)->__unk5A |= 1;
    API_CutsceneWait(10);
    API_Func_80925cc(8, 2);
    __Actor_AddSpriteLayer(__MapActor_GetActor(0), 0xe2);
    API_SetFlag(0x21);
    API_PlaySound(0x7e);
    __Func_8092950(0, 7);
    API_CutsceneWait(10);
    __Func_8092950(0, 0);
    API_CutsceneWait(20);
    __MapActor_GetActor(8)->__unk5A &= ~1;
    API_MapActor_TravelToAnimWait(8, 0x216, 0x2b0);
    API_CutsceneWait(1);
    __MapActor_GetActor(8)->__unk5A |= 1;
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(8, 0x18000, 0xc000);
    API_MapActor_SetSpeed(0, 0x18000, 0xc000);
    API_SetCameraTarget(8, 1);
    __MapActor_GetActor(0)->flags |= 1;
    API_MapActor_SetBehavior(8, (int)ActorCmd_ARRAY_887__02009ab4);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(0, (int)ActorCmd_ARRAY_887__02009ab4);
    API_MapActor_WaitScript(8);
    API_MapActor_TravelToAnimWait(8, 0x1a3, 0x295);
    API_MapActor_TravelToAnimWait(8, 0x198, 0x295);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(8, 0x4000, 10);
    API_ShowActorMessage_NoWait(0x8008, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        iwram_3001ebc_view.sub0->unk1d8++;
    }
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x8008, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(8, (int)gScript_887__02009b04);
    API_MapActor_SetBehavior(0, (int)gScript_887__02009b34);
    API_CutsceneWait(20);
    map = iwram_3001ebc_view.sub0;
    map->unk1c0 = 0x201;
    map->unk1c8 = 16;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(20);
}

void OvlFunc_887_2008a0c(void)
{
    extern unsigned char gScript_887__02009b78[];
    extern unsigned char gScript_887__02009bb4[];
    extern unsigned char gScript_887__02009c04[];
    extern unsigned char gScript_887__02009c54[];
    extern unsigned char gScript_887__02009ca4[];
    extern unsigned char gScript_887__02009cec[];
    extern unsigned char gScript_887__02009d38[];
    extern struct ValeRooms2EbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(struct Actor *, int);
    extern void __Func_8011ae0(void);
    extern void __Func_8095240(void);
    extern struct Actor *__MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, void *);
    extern void __StartThunder(void);

    struct Actor *sceneActor = __MapActor_GetActor(10);
    struct Sprite *sceneSprite = sceneActor->sprite;
    struct ValeRooms2Sub0View *finalMap;
    unsigned int frame;

    API_CutsceneStart();
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(13, 0, 0);
    API_MapActor_SetPos(14, 0, 0);
    API_MapActor_SetPos(15, 0, 0);
    API_MapActor_SetPos(16, 0, 0);
    API_MapActor_SetPos(8, 0x1af0000, 0x1870000);
    API_MapActor_SetPos(10, 0x1cf0000, 0x1940000);
    __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
    sceneActor->flags &= ~1;
    sceneActor->__unk55 = 0;
    sceneSprite->oam.priority = 1;
    API_MapActor_SetBehavior(10, (int)gScript_887__02009cec);
    iwram_3001ebc_view.sub0->unk1c0 = 0x201;
    API_CopyMapTiles(0x53, 15, 0x53, 19, 5, 4);
    API_CopyMapTiles(0x5a, 16, 0x5a, 20, 5, 4);
    API_CopyMapTiles(0x4d, 23, 0x52, 23, 5, 7);
    API_CopyMapTiles(0x53, 0x21, 0x55, 0x21, 2, 2);
    API_CopyMapTiles(0x5b, 28, 0x5a, 28, 1, 1);
    API_CopyMapTiles(0x5b, 28, 0x58, 30, 1, 1);
    API_CopyMapTiles(0x5e, 27, 0x5e, 23, 6, 4);
    API_CopyMapTiles(0x5c, 28, 0x57, 23, 4, 4);
    API_CopyMapTiles(0x41, 0x35, 0x58, 24, 2, 2);
    __Func_8011ae0();
    SET_IO(REG_BLDCNT, 0x3f42);
    SET_IO(REG_BLDALPHA, 0x100c);
    __StartThunder();
    iwram_3001ebc_view.sub3->unk1f84 = 1;
    __Func_8095240();
    API_WaitFrames(30);
    API_SetCameraTarget(8, 1);
    API_MapActor_SetSpeed(8, 0x18000, 0xc000);
    API_MapActor_SetSpeed(0, 0x18000, 0xc000);
    API_MapActor_SetSpeed(9, 0x18000, 0xc000);
    API_MapActor_SetBehavior(0, (int)gScript_887__02009bb4);
    API_MapActor_SetBehavior(8, (int)gScript_887__02009b78);
    API_MapTransitionIn();
    API_MapActor_WaitScript(8);
    API_PlaySound(0x9e);
    API_MapActor_Emote(8, 0x100, 0);
    API_Func_80925cc(8, 2);
    API_Func_8092adc(8, 0x4000, 10);
    API_Func_80933d4(0x40000, 0x8000);
    API_Func_80933f8(0x19e0000, -1, 0x2120000, 1);
    API_MapActor_SetPos(9, 0x19e0000, 0x2120000);
    API_MapActor_TravelToAnimWait(9, 0x1ab, 0x1e3);
    API_Func_8093530();
    API_MessageID(0xe5b);
    API_ActorMessage_Wait(0x8009, 0, 10);
    API_Func_80933d4(0x18000, 0x3000);
    API_Func_80933f8(0x1e00000, -1, 0x1bc0000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_8092adc(8, 0x8000, 20);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(9, 3);
    API_MapActor_TravelToAnim(9, 0x19f, 0x24d);
    API_CutsceneWait(10);
    API_MapActor_SetBehavior(8, (int)gScript_887__02009c04);
    API_MapActor_SetBehavior(0, (int)gScript_887__02009c54);
    API_PlaySound(0xea);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(10, (int)gScript_887__02009d38);
    frame = 0;
    do {
        SET_IO(REG_BLDALPHA, frame + 0x100e);
        API_WaitFrames(1);
        frame++;
    } while (frame <= 3);
    API_PlaySound(0xca);
    API_WaitFrames(10);
    frame = 0;
    do {
        SET_IO(REG_BLDALPHA, 0x100f - frame);
        API_WaitFrames(1);
        frame++;
    } while (frame <= 15);
    API_MapActor_WaitScript(0);
    API_MapActor_SetAnim(8, 1);
    API_Func_809259c(8, 2);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(10);
    API_Func_8092adc(8, 0xc000, 0);
    API_Func_8092adc(0, 0xc000, 20);
    API_MapActor_Surprise(8, 0x102);
    API_MapActor_Surprise(0, 0x102);
    API_CutsceneWait(0x50);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_TurnToFaceActor(8, 0, 20);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x28);
    API_Func_80933d4(0xcccc, 0x1999);
    API_SetCameraTarget(8, 1);
    API_MapActor_SetBehavior(8, (int)gScript_887__02009ca4);
    __MapActor_RunScript(0, gScript_887__02009ca4);
    finalMap = iwram_3001ebc_view.sub0;
    finalMap->unk1c0 = 0x100;
    finalMap->unk1c8 = 0x20;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(21);
}
extern struct Actor *__MapActor_GetActor(int);
extern void __Func_80b3284(int, int);

static inline int GetFlagShl2(int base) { return __GetFlag(base << 2); }
static inline void SetFlagShl2(int base) { __SetFlag(base << 2); }

extern void __Func_80925cc(int, int);
extern void __Func_8092adc(int a, int b, int c);

void OvlFunc_887_2008e34(void)
{
    struct Actor *actor;
    int rangeHi;
    unsigned int diff;

    actor = __MapActor_GetActor(0);
    rangeHi = 0x90;
    diff = actor->facing + (int)0xffffe000;
    rangeHi <<= 8;
    if (diff > (unsigned int)rangeHi) {
        __Func_80b3284(0, 0xd);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x87a)) {
            __Func_80925cc(0xd, 2);
            __MapActor_Face(0xd, 0, 0xa);
            if (!GetFlagShl2(0xc0)) {
                __MessageID(0x1c14);
                __ActorMessage(0xd, 0);
                SetFlagShl2(0xc0);
            }
            __MessageID(0x1c15);
            __Func_8093054(0xd, 0);
            __Func_8092adc(0xd, rangeHi, 0xa);
        } else {
            if (__GetFlag(0x815)) {
                __MessageID(0x11a9);
            } else {
                __MessageID(0xf58);
            }
            __ActorMessage(0xd, 0);
        }
        __CutsceneEnd();
    }
}

extern void __CutsceneStart(void);
extern void __MapActor_Face(int a, int b, int c);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __Func_8092adc(int a, int b, int c);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_887_2008ef8(void) {
    __CutsceneStart();
    __MapActor_Face(0x10, 0, 0xa);
    __MessageID(0x1c13);
    __ActorMessage(0x10, 0);
    __Func_8092adc(0x10, 0xb000, 0xa);
    __SetFlag(0x301);
    __CutsceneEnd();
}

void OvlFunc_887_2008f38(void) {
    __CutsceneStart();
    __MessageID(0x1c1b);
    __ActorMessage(0xd, 0);
    __SetFlag(0x81c);
    __CutsceneEnd();
}

void OvlFunc_887_2008f64(void) {
    __CutsceneStart();
    __MessageID(0x1c1a);
    __ActorMessage(0x10, 0);
    __SetFlag(0x81c);
    __CutsceneEnd();
}

/* pooled literal (ldr rN, =0x1c6f in the original) */
__asm__(".equ .Lconst_1c6f, 0x1c6f");
extern unsigned char ValeInteriorChoiceMessage[] __asm__(".Lconst_1c6f");
static inline void InteriorByte(unsigned char *field, int value) { *field = value; }
static inline void InteriorHalf(unsigned short *field, int value) { *field = value; }

void OvlFunc_887_2008f90(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern int ValeInteriorActor(int) __asm__("__MapActor_GetActor");
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    int flagValue2;
    int choice3;
    int flagValue4;
    unsigned char *actor;

    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0, 0x239, 0x189);
    API_Func_8092adc(0, 0x4000, 0x28);
    API_Func_809259c(8, 2);
    API_MessageID(0x1c66);
    API_ActorMessage_Wait(8, 0, 0x50);
    API_MapActor_Emote(8, 0x101, 0x3c);
    API_Func_809259c(8, 1);
    API_ActorMessage_Wait(8, 0, 0x3c);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x50);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_TravelTo(8, 0x248, 0x196);
    API_Func_80118c0(11);
    API_Func_80118a8(12);
    API_MapActor_SetAnim(8, 12);
    API_CutsceneWait(0x50);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_MapActor_Emote(8, 0x108, 0x28);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_MapActor_Emote(0, 0x105, 0x3c);
    API_MapActor_DoAnim(8, 13);
    API_MapActor_Emote(8, 0x103, 0);
    API_MapActor_SetAnim(8, 11);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(8, 12);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x102, 0x3c);
    API_MapActor_SetAnim(8, 13);
    __ShowActorMessage_NoWait(8, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 1) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    flagValue2 = API_GetFlag(0x81c);
    if (flagValue2 != 0) {
        API_MapActor_Emote(8, 0x102, 0x3c);
    }
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_MapActor_Emote(8, 0x107, 0x3c);
    API_MessageID((int)ValeInteriorChoiceMessage);
    __ShowActorMessage_NoWait(8, 0);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 1) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    flagValue4 = API_GetFlag(0x81c);
    if (flagValue4 != 0) {
        API_MapActor_Emote(8, 0x102, 0x3c);
    }
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_MapActor_Emote(8, 0x107, 0x3c);
    API_MessageID((int)ValeInteriorChoiceMessage + 3);
    API_ActorMessage(8, 0);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 13);
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x28);
    actor = (unsigned char *)ValeInteriorActor(0);
    InteriorHalf((unsigned short *)(actor + 6), 0);
    API_WaitFrames(1);
    actor = (unsigned char *)ValeInteriorActor(0);
    actor += 0x5a;
    InteriorByte(actor, 0xfe & *actor);
    API_MapActor_TravelTo(0, 0x22e, 0x184);
    API_MapActor_SetSpeed(8, 0x13333, 0x9999);
    API_MapActor_SetAnim(8, 14);
    API_MapActor_TravelToWait(8, 0x24a, 0x190);
    API_CutsceneWait(0x28);
    API_MapActor_TravelToAnimWait(8, 0x244, 0x17e);
    API_Func_8092adc(8, 0x8000, 0x28);
    actor = (unsigned char *)ValeInteriorActor(0);
    actor += 0x5a;
    InteriorByte(actor, 1 | *actor);
    API_Func_8092adc(8, 0xc000, 8);
    API_Func_8092adc(8, 0, 8);
    API_Func_8092adc(8, 0x4000, 8);
    API_Func_8092adc(8, 0x8000, 10);
    API_MapActor_Jump(8, 4, 20);
    API_MapActor_Jump(8, 6, 0x28);
    API_MapActor_Jump(8, 4, 20);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(8, 0x23c, 0x180);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_SetFlag(0x81e);
    API_SetFlag(0x203);
    API_CutsceneEnd();
}
extern void __Func_80925cc(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern void __Func_801776c(int, int);
extern unsigned char gScript_887__02009e6c[];
extern unsigned char Lconst_1c79[] __asm__(".Lconst_1c79");
__asm__(".equ .Lconst_1c79, 0x1c79");

void OvlFunc_887_200933c(void)
{
    int msg;

    __CutsceneStart();
    if (__GetFlag(0x203)) {
        API_Func_8092a1c(8, 0x10000, gScript_887__02009e6c);
        __CutsceneWait(0x14);
        __MessageID(0x1c77);
        __ActorMessage(8, 0);
    } else {
        __Func_80925cc(8, 2);
        __CutsceneWait(0x28);
        msg = (int)Lconst_1c79;
        __MessageID(msg);
        msg++;
        __ActorMessage_Wait(8, 0, 0x28);
        __Func_801776c(msg, 1);
    }
    __CutsceneEnd();
}

extern void __CopyMapTiles(int, int, int, int, int, int);
void OvlFunc_887_20093b4(void) {
	__CopyMapTiles(0x16, 0x55, 0x19, 0x55, 2, 2);
	API_Func_8010704(0x19, 0xf, 2, 2, 0x19, 0x19);
}

INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_20093e4.s");

extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_887_200968c(unsigned int a);

void OvlFunc_887_2009544(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if (!(iwram_3001e40 & 0xf)) {
        OvlFunc_887_200968c(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a1 __asm__("iwram_3001e40");
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);

void OvlFunc_887_2009580(arg0) unsigned int arg0;
{
    if (iwram_3001e40__a1 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a1 >> 1, 6));
    }
    if ((iwram_3001e40__a1 & 0xf) == 0) {
        OvlFunc_887_200968c(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");

void OvlFunc_887_20095bc(arg0) int arg0;
{
    if (iwram_3001e40__a2 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a2 >> 1, 6));
    }
}

extern int __sin(int);
extern void __DeleteActor(struct Actor *);

void OvlFunc_887_20095e8(struct Actor *actor)
{
    struct Actor *linked;
    fx32 sinVal;

    linked = actor->linkedActor;
    actor->waveCounter++;
    if (actor->waveCounter > 0x1f) {
        __DeleteActor(actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = sinVal;
        actor->pos.x = linked->pos.x;
        actor->pos.y = actor->pos.y + (0x80 << 9);
        actor->pos.z = linked->pos.z + (0x10000 - sinVal) * 5 + (0x80 << 12);
    }
}

void OvlFunc_887_2009638(struct Actor *actor) {
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

void OvlFunc_887_200968c(unsigned int arg0)
{
    extern struct E30SlotView *iwram_3001f30_view __asm__("iwram_3001f30");
    extern struct SpriteSlot gSpriteSlots[];
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern void __Func_8003f3c(int);
    extern void OvlFunc_887_20095e8(struct Actor *);
    extern void OvlFunc_887_2009638(struct Actor *);

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

    actors[0]->update = OvlFunc_887_2009638;
    ((struct SpriteOamBitView *)&actors[0]->sprite->oam)->priority = 2;
    ((struct SpriteOamBitView *)&actors[1]->sprite->oam)->priority = 2;
    actors[1]->update = OvlFunc_887_20095e8;
    actors[1]->flags = 2;
}


extern void __Func_8096fb0(int a, int b);

void OvlFunc_887_20097a8(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_887_20097b8(void) {
    __Func_8097194();
}

void OvlFunc_887_20097c4(void) {
    __MapActor_GetActor(8);
    OvlFunc_887_2009580();
}


void OvlFunc_887_20097d4(void) {
    __MapActor_GetActor(0x11);
    OvlFunc_887_20095bc();
}

void OvlFunc_887_20097e4(void)
{
  unsigned long long new_var5;
  int new_var2;
  int new_var;
  int new_var3;
  int new_var4;
  new_var2 = 0x94;
  new_var5 = new_var2;
  new_var3 = new_var5;
  new_var2 = (new_var4 = 0x11);
  new_var5 = 1;
 do { new_var = new_var5; } while ((double) 0);
  __Func_8096fb0(new_var3, new_var);
  __Func_80970f8(8, new_var2);
  __Func_809728c();
  new_var2 = new_var5;
  __FieldMove(new_var2);
  __Func_8097174();
  __Func_8097194();
}

INCLUDE_ASM("asm/maps/vale_rooms_2/vale_rooms_2_data.s");

INCLUDE_ASM("asm/maps/vale_rooms_2/imports.s");
