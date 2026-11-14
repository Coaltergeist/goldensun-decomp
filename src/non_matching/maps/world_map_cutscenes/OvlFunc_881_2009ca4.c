/* Remaining diff (exact 0x5d0 byte size and both minipools +0x188 / +0x5a8 match 100%):
 * 1) `-fcse-skip-blocks` records `API_GetFlag(0x16e) == 0` (`r0 -> r5`) across `if (a != NULL)`
 *    instead of hoisting `movs r5, #0` before `bl __GetFlag` (+0x46) and using `r5` at +0x27c;
 * 2) minor Thumb scratch register swaps at +0x2e (`mov r9, r3` vs `ldr r1`), +0x362 (`ldr r0` vs `ldr r2`),
 *    and +0x4f4 (`mov r3, sl; mov r2, r9` vs `mov r3, r9; asrs r1, r3, #16`).
 */
#include "actor.h"
#include "api.h"

__asm__(".equ .Lconst_c64, 0xc64");
extern unsigned char Lconst_c64[] __asm__(".Lconst_c64");

void OvlFunc_881_2009ca4(void)
{
    extern unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int, unsigned int);
    extern void __Func_8019908(unsigned int, unsigned int);
    extern void __Func_802899c(int, int);
    extern void __Func_807808c(unsigned int);
    extern int __Func_807a458(int, int, int);
    extern void __Func_808c44c(void);
    extern void __Func_808c4c0(void);
    extern int __Func_8091c7c(int, int);
    extern void __Func_80936a0(int, int);
    extern void __Func_8093710(void);
    extern void __Func_80955b0(unsigned int, unsigned int, unsigned int);
    extern void __Func_8096fb0(int, int);
    extern void __Func_8097194(void);
    extern void __Func_80aa56c(void);
    extern int __GiveDjinni(int, int, int);
    extern struct Actor *__MapActor_GetActor(int);
    extern void __MessageID(int);
    extern void OvlFunc_881_2009c08(void);
    extern void OvlFunc_881_200c058(unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    extern void __Actor_TravelTo(void *, int, int, int);
    struct Actor *djinn;
    struct Actor *actor;
    int midpointX, midpointZ, counter, replies, message;

    djinn = __MapActor_GetActor(8);
    actor = __MapActor_GetActor(0);
    midpointX = (actor->pos.x - 0x15d00000) / 2 + 0x15d00000;
    midpointZ = (actor->pos.z - 0x5300000) / 2 + 0x5300000;
    if (API_GetFlag(0x16e) == 0) {
        __Func_807808c(1);
        API_SetFlag(0x16e);
        API_CutsceneStart();
        {
            struct Actor *a = __MapActor_GetActor(0);
            if (a != NULL) {
                API_MapActor_SetPos(8, a->pos.x, a->pos.z);
            }
        }
        __GiveDjinni(0, 0, 0);
        __Func_807a458(0, 0, 0);
        __Func_808c44c();
        API_MapActor_Face(0, 8, 0);
        API_CutsceneWait(10);
        API_MapActor_Emote(0, 0x101, 0x3c);
        djinn->__unk66 = 1;
        API_MapActor_Face(8, 0, 0);
        API_WaitFrames(16);
        API_MessageID(0xc4f);
        API_ActorMessage(8, 0);
        __Func_808c4c0();
        __Func_80936a0(0x13333, 6);
        __Func_8093710();
        __Func_808c44c();
        djinn->__unk55 = 2;
        djinn->gravity = 0x4000;
        djinn->speed = 0x10000;
        djinn->accel = 0x10000;
        djinn->motion.y = 0;
        djinn->floorPos = 0;
        __Actor_TravelTo(djinn, 0x15d00000, 0, 0x5300000);
        for (counter = 0; counter < 16; counter++) {
            djinn->scale.x += 0x800;
            djinn->scale.y += 0x800;
            API_WaitFrames(1);
        }
        API_MapActor_Face(8, 0, 0);
        API_MapActor_Face(0, 8, 0);
        API_WaitFrames(16);
        djinn->update = NULL;
        __Actor_SetColorswap((unsigned int)djinn, 0);
        djinn->gravity = 0x10000;
        API_ActorMessage(8, 0);
        API_PlaySound(0x83);
        __Func_8096fb0(0x8c, 0);
        for (counter = 0; counter < 60; counter++) {
            if (iwram_3001e40 & 2) {
                __Actor_SetColorswap((unsigned int)djinn, 7);
            } else {
                __Actor_SetColorswap((unsigned int)djinn, 0);
            }
            if ((iwram_3001e40 & 15) == 0) {
                OvlFunc_881_200c058((unsigned int)djinn);
            }
            API_WaitFrames(1);
        }
        __Func_8097194();
        __Actor_SetColorswap((unsigned int)djinn, 0);
        API_Func_80925cc(8, 2);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(0, 0x102, 30);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(0, 0x101, 30);
        API_MapActor_TravelToAnimWait(8, midpointX >> 16, midpointZ >> 16);
        API_MapActor_SetAnim(0, 22);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(0, 0x101, 0x28);
        API_MapActor_Jump(8, 4, 30);
        __Func_8019908(0x12c, 4);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(0, 0x100, 30);
        API_ActorMessage(8, 0);
        API_Func_80925cc(0, 2);
        API_ActorMessage(8, 0);
        API_MapActor_Jump(8, 2, 30);
        API_ActorMessage(8, 0);
        djinn->__unk55 = 0;
        API_Actor_TravelTo(djinn, midpointX, 0x100000, midpointZ);
        for (counter = 0; counter < 16; counter++) {
            djinn->facing += 0x1000;
            API_WaitFrames(1);
        }
        API_MapActor_SetAnim(0, 1);
        API_ActorMessage(8, 0);
        djinn->__unk55 = 2;
        djinn->motion.y = 0;
        djinn->floorPos = 0;
        for (counter = 0; counter < 8; counter++) {
            djinn->facing += 0x1000;
            API_WaitFrames(1);
        }
        API_MapActor_SetAnim(0, 22);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(8, 0x102, 30);
        API_MapActor_Face(8, 0, 0);
        API_Func_80925cc(8, 2);
        API_ActorMessage(8, 0);
        API_MapActor_Jump(8, 2, 30);
        __ShowActorMessage_NoWait(8, 0);
        replies = 0;
    prompt_loop:
        if (__Func_8091c7c(0, 0) == 1) {
            API_MapActor_Jump(8, 2, 20);
            API_MapActor_Jump(8, 2, 20);
            if (replies == 6) {
                API_MessageID(0xc62);
                API_ActorMessage(8, 0);
            } else {
                __MessageID(replies + 0xc5c);
                __ShowActorMessage_NoWait(8, 0);
                replies++;
                goto prompt_loop;
            }
        } else {
            API_MapActor_SetAnim(0, 22);
            API_MapActor_Jump(8, 2, 20);
            API_MapActor_Jump(8, 4, 20);
            API_MessageID(0xc63);
            API_ActorMessage(8, 0);
        }
        __Func_8019908(0x12c, 4);
        API_PlaySound(0x51);
        message = (int)Lconst_c64;
        API_Func_801776c(message++, 3);
        API_MessageID(message);
        API_MapActor_Jump(8, 2, 20);
        API_ActorMessage(8, 0);
        API_PlaySound(9);
        OvlFunc_881_2009c08();
        __Func_808c4c0();
    } else {
        API_CutsceneStart();
        {
            struct Actor *a = __MapActor_GetActor(0);
            if (a != NULL) {
                API_MapActor_SetPos(8, a->pos.x, a->pos.z);
            }
        }
        djinn->motion.y = 0xa0000;
        API_Actor_TravelTo(djinn, midpointX, 0, midpointZ);
        API_CutsceneWait(30);
        __Func_808c44c();
        API_MapActor_Face(8, 0, 0);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_SetAnim(0, 22);
        API_MessageID(0xc68);
        API_MapActor_Jump(8, 2, 20);
        API_MapActor_Jump(8, 2, 20);
        API_ActorMessage(8, 0);
        API_Func_80925cc(8, 2);
        API_ActorMessage(8, 0);
        API_PlaySound(0x6f);
        __Func_802899c(0, 2);
        API_SetFlag(0x16f);
        API_ClearFlag(0x171);
        __Func_80aa56c();
        API_MessageID(0xc6a);
        __Actor_TravelTo(djinn, 0x15d00000, 0, 0x5300000);
        API_CutsceneWait(30);
        API_ActorMessage(8, 0);
        API_MapActor_Face(8, 0, 0);
        API_ActorMessage(8, 0);
        __ShowActorMessage_NoWait(8, 0);
        if (__Func_8091c7c(0, 0) == 1) {
            API_MapActor_SetAnim(0, 22);
            API_Func_80925cc(8, 2);
            API_MessageID(0xc6d);
            __ShowActorMessage_NoWait(8, 0);
            if (__Func_8091c7c(0, 0) != 1) {
                API_ActorMessage(8, 0);
                API_MapActor_TravelToAnimWait(8, midpointX >> 16, midpointZ >> 16);
                OvlFunc_881_2009c08();
                __Func_808c4c0();
                return;
            }
        }
        API_MapActor_SetAnim(0, 22);
        API_MessageID(0xc6f);
        API_MapActor_Jump(8, 2, 20);
        API_MapActor_Jump(8, 2, 20);
        API_MapActor_DoAnim(0, 3);
        API_MapActor_Emote(8, 0x100, 30);
        API_ActorMessage(8, 0);
        API_SetFlag(0x16f);
        API_SetFlag(0x171);
        __Func_80aa56c();
        API_MapActor_Jump(8, 2, 20);
        API_ActorMessage(8, 0);
        __Func_808c4c0();
        __Func_80955b0(8, 0, 0);
        API_PlaySound(0x2a);
        API_CutsceneEnd();
        API_ClearFlag(0x16e);
        API_ClearFlag(0x16f);
        API_ClearFlag(0x171);
    }
}
