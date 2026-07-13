/* Cluster CheckItem..CheckItem extracted from goldensun/asm/rom_77000/rom_78414_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78414_c_c_a_a.o and asm/rom_77000/rom_78414_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
#include "unit.h"

int CheckItem(int unitId, int itemId)
{
    struct Unit *unit;
    unsigned short *inventory;
    int i;

    unit = GetUnit(unitId);
    inventory = unit->inventory;
    for (i = 0; i <= 0xe; i++) {
        if ((inventory[i] & 0x1ff) == itemId)
            return i;
    }
    return -1;
}
