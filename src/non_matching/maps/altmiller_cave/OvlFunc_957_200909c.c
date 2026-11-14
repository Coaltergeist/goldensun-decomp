#include "api.h"
#include "actor.h"

/*
 * Remaining diffs vs asm/maps/altmiller_cave/OvlFunc_957_200909c.s:
 * 1. Original C used `/` (`__divsi3`) and `%` (`__modsi3`), which have
 *    CONST_CALL_P = 1 and allow GCSE to hoist `PuzzleOrbit957` across division,
 *    whereas the overlay imports veneer names `_divsi3_RAM` / `_modsi3_RAM`
 *    (ordinary calls, CONST_CALL_P = 0).
 * 2. Under `-fno-strict-aliasing`, `short` stores (`strh`) to `PuzzleOrbit957`
 *    fields invalidate the global `PuzzleOrbit957` pointer load (`ldr r3, [r6]`),
 *    whereas caching `orbit = PuzzleOrbit957` causes GCSE to hoist `HImode 0`.
 */

struct PuzzleOrbit957 {
    short phase;
    short timer;
    short unused;
    short angle;
    short speed;
    short soundAngle;
};

extern struct PuzzleOrbit957 *PuzzleOrbit957 __asm__(".Lm957_3f6c");
extern signed char PuzzleBytes957[] __asm__("ewram_2001001");
extern unsigned char PuzzleCount957 __asm__("ewram_2001000");
extern int _divsi3_RAM(int, int);
extern int _modsi3_RAM(int, int);
extern void OvlFunc_957_2008f10(int, int, int);
extern void OvlFunc_957_2008f94(void);
extern void OvlFunc_957_200bad4(void);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __Func_808e118(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __PlaySound(int);
extern void __WaitFrames(int);
extern void __MapActor_SetPos(int, int, int);
extern int __StartTask(void (*)(void), unsigned int);
extern int __StopTask(void (*)(void));
extern void __Func_8012330(int, int, int);
extern int __Random(void);

void OvlFunc_957_200909c(int selectedActor)
{
    int advance = 0;
    int i, actorId, scale, radius;
    signed char state, target;
    unsigned char count;
    short angle;
    struct Actor *actor;

    __CutsceneStart();
    __Func_808e118();
    __MessageID(0x21db);
    __ActorMessage(16, 0);
    __CutsceneEnd();
    for (i = 0; i <= 4; i++) {
        actor = (struct Actor *)__MapActor_GetActor(i + 11);
        actor->update = 0;
        actor->scale.x = 0x10000;
        actor->scale.y = 0x10000;
    }
    state = PuzzleBytes957[0];
    target = PuzzleBytes957[1];
    PuzzleOrbit957->angle = _divsi3_RAM(target << 16, 5) + 0x4000;
    if (state == 0) {
        if (selectedActor == 16) {
            state = 1;
            __PlaySound(0x6e);
        } else {
            __PlaySound(0x72);
        }
        PuzzleCount957 = 0;
    } else if (state == 1) {
        if (selectedActor == 16) {
            __PlaySound(0x6e);
        } else if (selectedActor == 20) {
            state = 2;
            __PlaySound(0x6e);
            __WaitFrames(30);
            angle = PuzzleOrbit957->angle;
            for (i = 0; i <= 4; i++) {
                actorId = i + 11;
                OvlFunc_957_2008f10(actorId, 0x180000, (unsigned short)angle);
                __PlaySound(0x97);
                actor = (struct Actor *)__MapActor_GetActor(actorId);
                actor->scale.x = 0;
                scale = 0x6666;
                do {
                    actor->scale.y = scale;
                    actor->scale.x = scale;
                    __WaitFrames(1);
                    scale += 0xc00;
                } while (actor->scale.x <= 0xffff);
                angle -= 0x3333;
            }
            __WaitFrames(30);
            advance = 1;
        } else {
            __PlaySound(0x72);
            state = 0;
        }
    } else if (state == 2) {
        if (selectedActor != target + 16) {
            state = 0;
            __PlaySound(0x72);
            __WaitFrames(30);
            for (i = 0; i <= 4; i++) {
                actorId = i + 11;
                actor = (struct Actor *)__MapActor_GetActor(actorId);
                __PlaySound(0x97);
                scale = actor->scale.x;
                if (scale > 0x6666) {
                    do {
                        actor->scale.y = scale;
                        actor->scale.x = scale;
                        __WaitFrames(1);
                        scale -= 0xc00;
                    } while (actor->scale.x > 0x6666);
                }
                __MapActor_SetPos(actorId, 0, 0);
            }
        } else {
            __PlaySound(0x6e);
            advance = 1;
            __WaitFrames(30);
        }
    }
    PuzzleBytes957[0] = state;
    if (advance != 0) {
        {
            unsigned char *counter = (unsigned char *)PuzzleBytes957 - 1;
            count = ++*counter;
        }
        target = (((unsigned int)__Random() << 2) >> 16) + target + 1;
        PuzzleBytes957[1] = _modsi3_RAM(target + 5, 5);
        PuzzleOrbit957->phase = 0;
        PuzzleOrbit957->timer = 0;
        PuzzleOrbit957->speed = 0x200;
        PuzzleOrbit957->soundAngle = 0x3000;
        __StartTask(OvlFunc_957_2008f94, 0xc80);
        if (count <= 2) {
            while (PuzzleOrbit957->phase != 99)
                __WaitFrames(1);
            __WaitFrames(10);
            __PlaySound(0x6e);
        } else {
            PuzzleBytes957[0] = 99;
            while (PuzzleOrbit957->phase != 2)
                __WaitFrames(1);
            PuzzleOrbit957->phase = 2;
            PuzzleOrbit957->timer = 0;
            __Func_8012330(0x20000, 0x20000, 0x10000);
            __CutsceneWait(20);
            __Func_8012330(0x40000, 0x40000, 0x10000);
            PuzzleOrbit957->phase = 99;
            __PlaySound(0xbe);
            radius = 0x180000;
            angle = PuzzleOrbit957->angle;
            do {
                for (i = 0; i <= 4; i++) {
                    actorId = i + 11;
                    actor = (struct Actor *)__MapActor_GetActor(actorId);
                    actor->scale.x -= 16;
                    actor->scale.y -= 16;
                    OvlFunc_957_2008f10(actorId, radius, (unsigned short)angle);
                    angle -= 0x3333;
                }
                angle += 0xc00;
                radius -= 0x3333;
                __WaitFrames(1);
            } while (radius > 0);
            for (i = 0; i <= 4; i++)
                __MapActor_SetPos(i + 11, 0, 0);
            OvlFunc_957_200bad4();
            __PlaySound(0x50);
        }
        __StopTask(OvlFunc_957_2008f94);
    }
}
