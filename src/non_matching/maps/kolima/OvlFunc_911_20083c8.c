#include "api.h"
#include "actor.h"

void OvlFunc_911_20083c8(void)
{
    extern unsigned char gScript_884__0200ae34[];
    extern struct Actor * CS911_GetActor(unsigned int) __asm__("__MapActor_GetActor");
    extern void CS911_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
    extern void CS911_Anim(struct Actor *, int) __asm__("__Actor_SetAnim");
    extern void CS911_Script(struct Actor *, void *) __asm__("__Actor_SetScript");
    extern unsigned int CS911_Random(void) __asm__("__Random");
    extern unsigned char gScript_911__0200ae20[];
    unsigned char *actor;
    struct Actor *debris;
    unsigned int i;
    int x;

    API_CutsceneStart();
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0xa80000, 0, 0xf60000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_MapActor_Emote(8, 0x100, 0x28);
    API_Func_80925cc(8, 2);
    API_MessageID(0x1786);
    API_ActorMessage(8, 0);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0xa80000, 0, 0xea0000, 1);
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0, 0xae, 0x116);
    API_Func_8092adc(0, 0xe000, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(8, 3);
    API_ActorMessage(8, 0);
    API_Func_8092adc(8, 0x9000, 20);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    actor = (unsigned char *)CS911_GetActor(8);
    actor += 0x5a;
    *actor = (0xfe & *actor);
    API_MapActor_SetSpeed(8, 0x20000, 0x10000);
    API_MapActor_Jump(8, 2, 0);
    API_MapActor_TravelToWait(8, 0xe0, 0xc5);
    API_PlaySound(0xb0);
    API_CutsceneWait(10);
    API_MapActor_TravelToWait(8, 0xea, 0xc8);
    API_CutsceneWait(10);
    API_PlaySound(0xc6);
    API_CutsceneWait(30);
    API_CopyMapTiles(0x5b, 0, 0x48, 9, 5, 4);
    API_CutsceneWait(12);
    API_CopyMapTiles(0x5b, 4, 0x48, 9, 5, 4);
    API_CutsceneWait(9);
    API_Func_8092adc(0, 0xc000, 0);
    API_CopyMapTiles(0x5b, 8, 0x48, 9, 5, 5);
    API_CutsceneWait(6);
    API_CopyMapTiles(0x5b, 13, 0x48, 9, 5, 6);
    API_CutsceneWait(3);
    API_PlaySound(0xbc);
    x = 0x940000;
    for (i = 0; i < 10; ++i) {
        debris = API_CreateActor(0xde, x, 0, 0x1020000);
        if (debris != 0) {
            debris->__unk55 = 0;
            CS911_SpriteFlags(debris, 0);
            debris->sprite->oam.priority = 0;
            debris->waveCounter = ((CS911_Random() * 40) >> 16) + 40;
            debris->motion.x = (int)(((i & 3) << 16) + 0x10000) >> 1;
            debris->motion.z = 0x10000;
            if (i & 1) debris->motion.x = -debris->motion.x;
            CS911_Anim(debris, 1);
            CS911_Script(debris, gScript_911__0200ae20);
        }
        x += 0x40000;
    }
    API_CopyMapTiles(0x5b, 19, 0x48, 9, 5, 7);
    API_Func_8010704(23, 11, 5, 7, 8, 11);
    API_Func_8012330(0, 0x40000, 0x10000);
    API_CutsceneWait(10);
    API_MapActor_Jump(0, 6, 0);
    API_CutsceneWait(20);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8092a1c(8, 0x10000, gScript_884__0200ae34);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(0, 0x102, 0x3c);
    API_SetFlag(0x847);
    API_CutsceneEnd();
}
