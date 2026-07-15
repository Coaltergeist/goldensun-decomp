typedef unsigned char u8;
typedef signed short s16;

extern u8 *_GetUnit(int unitId);
extern void **GetBattleActor(int unitId);
extern void _Actor_SetAnim(void *actor, int animation);
extern int _Actor_SetAnimSpeed(void *actor, int speed);

int Func_80b7aac(int unitId)
{
    u8 *unit = _GetUnit(unitId);
    int animation = 1;
    void **actor;
    void *actorValue;
    int speed;

    if (*(s16 *)(unit + 0x38) != 0) {
        if (unit[0x13c] != 0 || unit[0x13b] != 0 || unit[0x145] != 0)
            animation = (unit[0x12a] != 1) << 2;
    } else {
        register int state asm("r3") = unit[0x12a];
        __asm__ (
            "eor %0, %1\n\t"
            "neg r2, %0\n\t"
            "orr r2, %0\n\t"
            "lsr %1, r2, #31"
            : "+r" (state), "+r" (animation) :: "r2");
        animation = 5 - animation;
    }

    _Actor_SetAnim(*GetBattleActor(unitId), animation);
    actor = GetBattleActor(unitId);
    speed = unitId & 3;
    __asm__ volatile ("ldr %0, [%1]" : "=r" (actorValue) : "r" (actor));
    return _Actor_SetAnimSpeed(actorValue, speed + 0xe);
}
