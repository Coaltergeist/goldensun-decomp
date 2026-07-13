#include "unit.h"

int TickUnitEffectTimer(int unitId)
{
    struct Unit *unit = _GetUnit(unitId);

    if (unit->effectTimer != 0) {
        unit->effectTimer--;
        if (unit->effectTimer == 0) {
            unit->effectState = 0;
            return 1;
        }
    }

    return 0;
}
