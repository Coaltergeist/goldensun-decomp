#include "unit.h"

extern const int Func_8079008_Table[] asm(".L7a830");

int Func_8079008(u32 unitId, int level)
{
    struct Unit *unit = GetUnit(unitId);

    if (unit->classId == 0) {
        return -1;
    }
    if (level <= 0) {
        return 0;
    }
    if (level > 0x63) {
        return -1;
    }
    if (unit->unitType <= 7) {
        return Func_8079008_Table[unit->unitType * 99 + level - 1];
    }
    return -1;
}
