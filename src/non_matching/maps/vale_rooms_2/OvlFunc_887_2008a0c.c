#include "api.h"
#include "sprite.h"
#include "actor.h"

__asm__(".equ .Lvale_thunder_blend, 0x3f42");
extern unsigned char ValeThunderBlend[] __asm__(".Lvale_thunder_blend");

static inline void ValeBlendControl(int value) { *(volatile unsigned short *)0x04000050 = value; }

static inline void ValeBlend(int value) { *(volatile unsigned short *)0x04000052 = value; }

static inline void ValeSceneByte(unsigned char *field, int value) { *field = value; }

void OvlFunc_887_2008a0c(void)
{
    #define REG_BLDALPHA ((unsigned char *)0x4000052)
    #define REG_BLDCNT ((unsigned char *)0x4000050)
    extern unsigned char gScript_887__02009b78[];
    extern unsigned char gScript_887__02009bb4[];
    extern unsigned char gScript_887__02009c04[];
    extern unsigned char gScript_887__02009c54[];
    extern unsigned char gScript_887__02009ca4[];
    extern unsigned char gScript_887__02009cec[];
    extern unsigned char gScript_887__02009d38[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_8011ae0(void);
    extern void __Func_8095240(void);
    extern int __MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, void *);
    extern void __StartThunder(void);
    unsigned char * sceneActor;
    unsigned char * sceneSprite;
    unsigned int frame;
    unsigned char * finalMap;
    unsigned char *actor;

    sceneActor = (unsigned char *)__MapActor_GetActor(10);
    sceneSprite = (unsigned char *)(*(int *)(sceneActor + 0x50));
    API_CutsceneStart();
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(13, 0, 0);
    API_MapActor_SetPos(14, 0, 0);
    API_MapActor_SetPos(15, 0, 0);
    API_MapActor_SetPos(16, 0, 0);
    API_MapActor_SetPos(8, 0x1af0000, 0x1870000);
    API_MapActor_SetPos(10, 0x1cf0000, 0x1940000);
    actor = (unsigned char *)__MapActor_GetActor(10);
    __Actor_SetSpriteFlags(actor, 0);
    ((struct Actor *)sceneActor)->flags &= 0xfe;
    ((struct Actor *)sceneActor)->__unk55 = 0;
    ((struct Sprite *)sceneSprite)->oam.priority = 1;
    API_MapActor_SetBehavior(10, (int)gScript_887__02009cec);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x201;
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
    ValeBlendControl((unsigned int)ValeThunderBlend);
    ValeBlend(0x100c);
    __StartThunder();
    *(unsigned short *)(*(int *)((unsigned int)CS_iwram_3001ebc + 0xc) + 0x1f84) = 1;
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
        ValeBlend((frame + 0x100e));
        API_WaitFrames(1);
        frame++;
    } while (frame <= 3);
    API_PlaySound(0xca);
    API_WaitFrames(10);
    frame = 0;
    do {
        ValeBlend((0x100f - frame));
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
    finalMap = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    *(int *)(finalMap + 0x1c0) = 0x100;
    *(int *)(finalMap + 0x1c8) = 0x20;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(21);
}
