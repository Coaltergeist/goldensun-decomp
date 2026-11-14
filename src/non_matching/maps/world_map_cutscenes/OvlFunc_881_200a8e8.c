/* Remaining diff: exact 0x3cc byte size and pool layout (with `.Lconst_2644` for the CSE'd
 * `0x2644` / `0x264a` message IDs); 0..0xeb and 0x104..end match 100%, leaving only 1 reload
 * scratch-register allocation diff in the `if (sceneActor != NULL)` block at +0xec..+0x102
 * (`movs r1, #0; adds r0, #85` reusing return reg `r0` vs `adds r2, r7, #0; movs r3, #0`).
 */
#include "actor.h"
#include "api.h"
#include "sprite.h"

__asm__(".equ .Lconst_2644, 0x2644");
extern unsigned char Lconst_2644[] __asm__(".Lconst_2644");

struct WorldMapEbcSub0 {
    unsigned char pad[0x1c0];
    int unk1c0;
    int pad1c4;
    int unk1c8;
    unsigned char pad1cc[0xc];
    unsigned short unk1d8;
};

struct WorldMapEbcView {
    struct WorldMapEbcSub0 *sub0;
};

void OvlFunc_881_200a8e8(void)
{
    extern int WorldDialogueActorID __asm__(".Lm881_679c");
    extern struct WorldMapEbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    extern void __Actor_Stop(void *);
    extern void __Actor_WaitMovement(void *);
    extern void __DeleteFieldActor(int);
    extern unsigned int __Func_8078a08(unsigned int);
    extern void __Func_808c44c(void);
    extern void __Func_808c4c0(void);
    extern void __Func_80936a0(int, int);
    extern void __LoadItemIcon(unsigned int);
    extern struct Actor *__MapActor_GetActor(int);
    extern void OvlFunc_881_200813c(struct Actor *);
    extern void OvlFunc_881_200a7dc(void);
    extern unsigned int __UploadSpriteGFX(unsigned int, unsigned int, void *);
    extern void *__galloc_iwram(int, unsigned int);
    extern void __gfree(int);
    struct Actor *leader;
    struct Actor *sceneActor;
    struct Sprite *itemSprite;
    unsigned char *iconBuffer;
    struct Actor *actor;

    leader = __MapActor_GetActor(0);
    API_CutsceneStart();
    __Func_808c4c0();
    __Func_80936a0(0x16666, 6);
    API_Func_80933d4(0x30000, 0x6000);
    API_Func_80933f8(0x17880000, -1, 0xd680000, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetAnim(0, 2);
    sceneActor = NULL;
    leader->stop = 0;
    __Actor_Stop(leader);
    if (leader->pos.z > 0xd680000) {
        if (leader->pos.x > 0x176e0000) {
            API_Actor_TravelTo(leader, 0x176e0000, leader->pos.y, 0xd7d0000);
            __Actor_WaitMovement(leader);
        }
    } else if (leader->pos.x > 0x177a0000) {
        API_Actor_TravelTo(leader, 0x177a0000, sceneActor->pos.y, 0xd480000);
        __Actor_WaitMovement(leader);
    }
    API_Actor_TravelTo(leader, 0x17690000, 0, 0xd680000);
    __Actor_WaitMovement(leader);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(0, 0, 0x28);
    __Func_808c44c();
    API_Func_80925cc(0, 2);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 28);
    sceneActor = API_CreateActor(22, leader->pos.x + 0x20000, 0x260000, leader->pos.z);
    if (sceneActor != NULL) {
        sceneActor->__unk55 = 0;
        itemSprite = sceneActor->sprite;
        itemSprite->flags = 0;
        itemSprite->numLayers = 0;
        itemSprite->oam.attr0Bits.bpp = 0;
        itemSprite->oam.palette = 0;
        iconBuffer = __galloc_iwram(17, 0x608);
        __LoadItemIcon(0xf2);
        __UploadSpriteGFX(itemSprite->slot, 0x80, iconBuffer + 0x400);
        __gfree(17);
        API_CutsceneWait(20);
        sceneActor->update = OvlFunc_881_200813c;
        API_CutsceneWait(0x50);
    }
    actor = __MapActor_GetActor(WorldDialogueActorID);
    actor->facing = 0x3000;
    API_MapActor_Emote(WorldDialogueActorID, 0x100, 0);
    API_Func_80925cc(WorldDialogueActorID, 2);
    API_MessageID((int)Lconst_2644);
    API_ActorMessage_Wait(WorldDialogueActorID, 0, 0x50);
    if (sceneActor != NULL) {
        API_DeleteActor(sceneActor);
    }
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(0x28);
    API_MapActor_Jump(WorldDialogueActorID, 6, 0x28);
    API_ActorMessage_Wait(WorldDialogueActorID, 0, 20);
    API_Func_8092adc(0, 0xe000, 0);
    API_Func_8092adc(WorldDialogueActorID, 0xd000, 20);
    API_ActorMessage_Wait(WorldDialogueActorID | 0x9000, 0, 0x28);
    API_MapActor_DoAnim(WorldDialogueActorID, 4);
    API_ActorMessage_Wait(WorldDialogueActorID | 0x9000, 0, 20);
    API_Func_8092adc(WorldDialogueActorID, 0x3000, 20);
    API_ActorMessage_Wait(WorldDialogueActorID, 0, 10);
    API_MapActor_SetSpeed(WorldDialogueActorID, 0xcccc, 0x6666);
    API_MapActor_SetAnim(WorldDialogueActorID, 2);
    sceneActor = __MapActor_GetActor(0x37);
    API_Actor_TravelTo(sceneActor, 0x177a0000, sceneActor->pos.y, 0xd480000);
    __Actor_WaitMovement(sceneActor);
    API_Actor_TravelTo(sceneActor, 0x17710000, 0, 0xd580000);
    __Actor_WaitMovement(sceneActor);
    API_MapActor_SetAnim(0x37, 1);
    API_Func_8092adc(WorldDialogueActorID, 0x5000, 10);
    API_Func_80925cc(WorldDialogueActorID, 1);
    API_ActorMessage_Wait(WorldDialogueActorID | 0x1000, 0, 20);
    API_MapActor_SetSpeed(WorldDialogueActorID, 0x10000, 0x8000);
    __MapActor_GetActor(0x37)->__unk5A &= ~1;
    API_MapActor_SetAnim(0x37, 2);
    API_Actor_TravelTo(sceneActor, 0x176d0000, 0, 0xd600000);
    __Actor_WaitMovement(sceneActor);
    API_MapActor_SetAnim(0x37, 1);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0x37, 2);
    API_Actor_TravelTo(sceneActor, 0x17710000, 0, 0xd580000);
    __Actor_WaitMovement(sceneActor);
    API_MapActor_SetAnim(0x37, 1);
    API_Func_801776c((int)Lconst_2644 + 6, 1);
    iwram_3001ebc_view.sub0->unk1d8++;
    __Func_8078a08(0xf2);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(WorldDialogueActorID, 4);
    API_ActorMessage_Wait(WorldDialogueActorID, 0, 10);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(WorldDialogueActorID, 3);
    API_MapActor_SetAnim(WorldDialogueActorID, 2);
    actor = __MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_TravelTo(WorldDialogueActorID, actor->pos.x >> 16, actor->pos.z >> 16);
    }
    API_MapActor_WaitMovement(WorldDialogueActorID);
    API_MapActor_SetPos(WorldDialogueActorID, 0, 0);
    __Func_808c4c0();
    __Func_80936a0(0x10000, 6);
    API_CutsceneWait(20);
    OvlFunc_881_200a7dc();
    __DeleteFieldActor(WorldDialogueActorID);
    API_ClearFlag(0x234);
    API_SetFlag(0x85d);
    API_CutsceneEnd();
}
