#include "gba/types.h"

typedef struct {
    u8 pad[0xd8];
    u16 items[15];
} Unit;

typedef struct {
    u8 pad[0xf];
    u8 flags;
} TextObject;

extern Unit *_GetUnit(int);
extern void _Func_8016478(void *);
extern int _FindEmptyInventorySlot(int);
extern void _DrawSmallText(int, void *, int, int);
extern TextObject *_Func_801eb90(int, int, void *, int, int);

void Func_80b1dec(void *window, int unitId)
{
    Unit *unit = _GetUnit(unitId);
    int x = 8;
    int y = 0;
    int i;

    if (window == 0)
        return;
    _Func_8016478(window);
    if (_FindEmptyInventorySlot(unitId) == 0) {
        _DrawSmallText(0xc91, window, 8, 0x14);
        return;
    }
    for (i = 0; i <= 14; i++) {
        if (unit->items[i] != 0) {
            TextObject *object = _Func_801eb90(unit->items[i], 0x1b,
                                               window, x, y);
            object->flags = 0xfc;
        }
        x += 0x10;
        if (i == 4) {
            x = 8;
            y += 0x10;
        }
        if (i == 9) {
            x = 8;
            y += 0x10;
        }
    }
}
