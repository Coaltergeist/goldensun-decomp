/* Remaining diffs vs asm/maps/vale_rooms_2/OvlFunc_887_20093e4.s:
 * 1. Scratch regalloc at +0x5e (`movs r2, #0` vs `movs r5, #0` for `actor->__unk55 = 0; sprite->numLayers = 0;`).
 * 2. `sub0->unk1c0 = 0x202` allocates `0x1c0` to `r1` and `0x202` to `r2` (adding `.word 0x202` to pool instead of `move2add` `adds r2, #0x42`).
 */
#include "api.h"
#include "actor.h"
#include "sprite.h"

struct ValeRooms2Sub0View {
    unsigned char pad[0x1c0];
    int unk1c0;
};

struct ValeRooms2EbcView {
    struct ValeRooms2Sub0View *sub0;
};

extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern unsigned int __UploadSpriteGFX(unsigned int, unsigned int, void *);
extern void __gfree(int);
extern void __Actor_SetScript(struct Actor *, const void *);
extern void __Actor_WaitScript(struct Actor *);
extern void __DeleteActor(struct Actor *);
extern unsigned char gScript_887__02009eac[];
extern unsigned char gScript_887__02009ecc[];

void OvlFunc_887_20093e4(void)
{
    extern struct ValeRooms2EbcView iwram_3001ebc_view __asm__("iwram_3001ebc");
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *icon;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(0x12, 0xf0 << 17, 0xca << 16);
    API_WaitFrames(1);
    API_SetCameraTarget(0x12, 1);

    actor = API_CreateActor(0x16, 0xa4 << 17, 0x80 << 10, 0xc3 << 16);
    actor->__unk55 = 0;
    sprite = actor->sprite;
    actor->pos.y = 0xa0 << 11;
    sprite->numLayers = 0;
    sprite->oam.attr0Bits.bpp = 0;
    sprite->oam.palette = 0;

    icon = __galloc_iwram(0x11, 0x608);
    __LoadItemIcon(0xe0);
    icon += 0x400;
    __UploadSpriteGFX(sprite->slot, 0x80, icon);
    __gfree(0x11);

    iwram_3001ebc_view.sub0->unk1c0 = 0x202;

    API_MapTransitionIn();
    API_MapActor_SetSpeed(0x12, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0x12, 0xf0 << 1, 0xb0);
    API_MapActor_TravelToAnimWait(0x12, 0xd2 << 1, 0xa4);
    API_MapActor_TravelToAnimWait(0x12, 0xa3 << 1, 0xb9);
    API_Func_8092adc(0x12, 0x80 << 7, 0xa);

    __Actor_SetScript(actor, gScript_887__02009eac);
    __Actor_WaitScript(actor);
    __Actor_SetScript(actor, gScript_887__02009ecc);
    __Actor_WaitScript(actor);
    API_CutsceneWait(0x14);
    __DeleteActor(actor);

    API_MapActor_Jump(0x12, 2, 0x14);
    API_Func_8092adc(0x12, 0, 0x28);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x16);
}
