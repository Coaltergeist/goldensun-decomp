#include "unit.h"

extern u8 *iwram_3001f2c;
extern u8 *_GetItemInfo(u32 itemId);
extern int Func_80a9f10(int moveId, int unitId, int mode, int flag);
extern int _Func_80788c4(int unitId, int slot);
extern int Func_80a3ddc(struct Unit *unit, u16 *list, int mode);

int Func_80a9e48(int slot, int unitId, int mode)
{
    struct Unit *unit;
    u8 *iwram;
    u32 item;
    u8 *info;
    int result;

    unit = _GetUnit(unitId);
    iwram = iwram_3001f2c;
    item = unit->inventory[slot] & 0x1ff;
    info = _GetItemInfo(item);
    result = Func_80a9f10(*(u16 *)(info + 0x28) & 0x3fff, unitId, mode, 1);

    if (result != -1) {
        info = _GetItemInfo(unit->inventory[slot]);
        if (info[0xc] == 1) {
            _Func_80788c4(unitId, slot);
            *(iwram + 0x218) = Func_80a3ddc(unit, (u16 *)(iwram + (0xe4 << 1)), 0);
        }
        if (info[0xc] == 4) {
            if (item == 0xb8) {
                item = 0xb9;
            }
            unit->inventory[slot] = item;
        }
        result = 0;
    }

    return result;
}
