/* Periodic status timers.  Each helper decrements one unit timer, reports
 * expiry immediately, and otherwise gives the status-specific refresh helper
 * a chance to finish the effect early. */
typedef unsigned char u8;

extern u8 *_GetUnit(int unitId);
extern int Func_80bf208(int unitId, int remaining, int period);

int Func_80bf37c(int unitId)
{
    u8 *timer = _GetUnit(unitId) + 0x138;

    if (*timer != 0) {
        (*timer)--;
        if (*timer == 0)
            return 1;
        if (Func_80bf208(unitId, *timer, 0x1e) != 0) {
            *timer = 0;
            return 1;
        }
    }
    return 0;
}
asm(".align 2, 0\n.size Func_80bf37c, . - Func_80bf37c");

int Func_80bf3bc(int unitId)
{
    u8 *timer = _GetUnit(unitId) + 0x139;

    if (*timer != 0) {
        (*timer)--;
        if (*timer == 0)
            return 1;
        if (Func_80bf208(unitId, *timer, 0x3c) != 0) {
            *timer = 0;
            return 1;
        }
    }
    return 0;
}
asm(".align 2, 0\n.size Func_80bf3bc, . - Func_80bf3bc");

int Func_80bf400(int unitId)
{
    u8 *timer = _GetUnit(unitId) + 0x13a;

    if (*timer != 0) {
        (*timer)--;
        if (*timer == 0)
            return 1;
        if (Func_80bf208(unitId, *timer, 0x46) != 0) {
            *timer = 0;
            return 1;
        }
    }
    return 0;
}
asm(".align 2, 0\n.size Func_80bf400, . - Func_80bf400");

int Func_80bf440(int unitId)
{
    u8 *timer = _GetUnit(unitId) + 0x13b;

    if (*timer != 0) {
        (*timer)--;
        if (*timer == 0)
            return 1;
        if (Func_80bf208(unitId, *timer, 0x28) != 0) {
            *timer = 0;
            return 1;
        }
    }
    return 0;
}
asm(".align 2, 0\n.size Func_80bf440, . - Func_80bf440");

int Func_80bf484(int unitId)
{
    u8 *timer = _GetUnit(unitId) + 0x13c;

    if (*timer != 0) {
        (*timer)--;
        if (*timer == 0)
            return 1;
        if (Func_80bf208(unitId, *timer, 0x32) != 0) {
            *timer = 0;
            return 1;
        }
    }
    return 0;
}
asm(".align 2, 0\n.size Func_80bf484, . - Func_80bf484");
