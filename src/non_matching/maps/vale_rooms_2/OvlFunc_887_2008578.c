/* Remaining diffs vs asm/maps/vale_rooms_2/OvlFunc_887_2008578.s:
 * 1. Early `mov r3, #0; mov r10, r3` hoisted to +0x1e vs +0x7a (minipool at +0xc4 matches 100% via `hidden = 0` rematerialization).
 * 2. GCSE hoists `0x8008` into `r5` across `if (__Func_8091c7c(0, 0) == 0)` at +0x3b2 instead of reloading `=0x8008` at +0x3c0 and +0x3ea (+4 bytes).
 */
#include "api.h"
#include "actor.h"
#include "sprite.h"

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
    extern int __ShowActorMessage_NoWait(int, int);
    extern void __StartThunder(void);

    struct ValeRooms2Sub0View *initialMap = iwram_3001ebc_view.sub0;
    struct ValeRooms2E70View *levelData = *(struct ValeRooms2E70View **)((char *)&iwram_3001ebc_view - 0x4c);
    struct Actor *cameraActor = initialMap->cameraActor;
    unsigned char hidden = 0;
    struct Sprite *sprite = __MapActor_GetActor(17)->sprite;
    struct ValeRooms2Sub0View *map;
    int zero;
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
    zero = 0;
    sprite->rotation = 0x555;
    __MapActor_GetActor(17)->__unk55 = hidden;
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
    cameraActor->pos.y = zero;
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
    __ShowActorMessage_NoWait(0x8008, 0);
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
