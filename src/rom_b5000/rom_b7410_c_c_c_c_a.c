#include "math.h"

extern int *GetBattleActor(unsigned int unit);
extern void _Actor_Stop(void *actor);
extern void _Actor_TravelTo(int actor, int arg1, int arg2, int arg3);
extern void _Actor_SetAnim(void *actor, int animation);

void Func_80b81c8(unsigned int unit)
{
    register int *battle_actor asm("r6") = GetBattleActor(unit);
    register unsigned char *actor asm("r5") = (unsigned char *)battle_actor[0];

    *(int *)(actor + 0x34) = 0x80 << 9;
    *(int *)(actor + 0x30) = 0x80 << 11;
    *(int *)(actor + 0x28) = 0x80 << 11;
    {
        register int value asm("r3") = 0x9999;
        register unsigned char *field asm("r2");
        register void *stop_arg asm("r0");

        asm volatile("" : "+r"(value));
        field = actor;
        asm volatile("" : "+r"(field), "+r"(value));
        *(int *)(actor + 0x48) = value;
        field += 0x5a;
        value = 0;
        asm volatile("" : "+r"(field), "+r"(value));
        *(int *)(actor + 0x44) = value;
        stop_arg = actor;
        asm volatile("" : "+r"(stop_arg), "+r"(field), "+r"(value));
        *field = value;
        _Actor_Stop(stop_arg);
    }
    _Actor_TravelTo((int)actor,
                    fx32_multiply(battle_actor[3], 0x14ccc),
                    0,
                    battle_actor[4]);
    _Actor_SetAnim(actor, 5);
}
