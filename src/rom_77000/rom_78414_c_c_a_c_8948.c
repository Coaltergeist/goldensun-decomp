#include "unit.h"

extern int Func_80788c4(int unitId, int slot);
extern void Func_8078ad0(unsigned int itemId, int mode);
extern void _Func_8091858(void);

int Func_8078948(int unitId, int slot)
{
    unsigned int item = GetUnit(unitId)->inventory[slot];
    int result = Func_80788c4(unitId, slot);

    if (result != -1) {
        register int mode asm("r1") = 1;

        asm("" : "+r"(mode));
        Func_8078ad0(item, mode);
        _Func_8091858();
    }

    return result;
}
