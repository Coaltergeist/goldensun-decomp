/* Cluster Func_8078b60..Func_8078b60 extracted from goldensun/asm/rom_77000/rom_78a8c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_78a8c_c_a.o and asm/rom_77000/rom_78a8c_c_c.o in
 * goldensun/stage1.ld.
 */
#include "unit.h"

extern int Func_80796c4(unsigned short *unitIds);

u32 CountPartyItemQuantity(u32 itemId)
{
    unsigned short partyUnitIds[16];
    int partySize;
    int quantity;
    int i;

    quantity = 0;
    partySize = Func_80796c4(partyUnitIds);
    if (quantity < partySize) {
        for (i = 0; i < partySize; i++) {
            quantity += CountUnitItemQuantity(partyUnitIds[i], itemId);
        }
    }
    return quantity;
}
