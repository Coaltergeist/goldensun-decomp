#include "gba/types.h"


typedef struct {
    u16 unit;
    u16 target;
} EffectArgs;

extern void *_GetUnit(int unitId);
extern void **GetBattleActor(int unitId);
extern void _Actor_SetAnim(void *actor, int animation);
extern void _Func_802281c(EffectArgs *args);
extern void Func_80ba918(void *actor, int animation);
extern void WaitFrames(int frames);
extern int Func_80b6cd0(int unitId);
extern void _Func_801f200(int value);
extern u8 *iwram_3001e74;

void Func_80babdc(int unitId)
{
    u16 args[2];
    register u16 *argp asm("r6");
    register int count asm("r8");

    _GetUnit(unitId);
    _Actor_SetAnim(*GetBattleActor(unitId), 5);

    __asm__ volatile (
        "mov r3, #1\n\t"
        "mov %0, sp\n\t"
        "mov %1, r3"
        : "=r" (argp), "=r" (count)
        :
        : "r3");
    do {
        __asm__ volatile (
            "mov r3, #255\n\t"
            "mov r0, r6\n\t"
            "strh r3, [r6, #2]\n\t"
            "strh r7, [r6]\n\t"
            "bl _Func_802281c"
            :
            :
            : "r0", "r1", "r2", "r3", "memory", "lr");

        Func_80ba918(*GetBattleActor(unitId), 7);
        WaitFrames(2);

        argp[0] = unitId;
        _Func_802281c((EffectArgs *)argp);

        Func_80ba918(*GetBattleActor(unitId), Func_80b6cd0(unitId));
        WaitFrames(2);
        count--;
    } while (count >= 0);

    _Func_801f200(iwram_3001e74[0x41]);
}
