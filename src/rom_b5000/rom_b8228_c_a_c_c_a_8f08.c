#include "unit.h"

extern int Func_80b6b40(int mode, short *actors);
extern unsigned int Random(void);

int Func_80b8f08(short *arg0)
{
    short targetId = arg0[5];
    struct Unit *unit = _GetUnit(targetId);

    if (unit->hp != 0) {
        return targetId;
    } else {
        short actors[14];
        int count;

        if (targetId > 0x7f) {
            count = Func_80b6b40(2, actors);
        } else {
            count = Func_80b6b40(1, actors);
        }

        if (count == 0) {
            return 0x100;
        }

        return actors[(Random() * count) >> 16];
    }
}
