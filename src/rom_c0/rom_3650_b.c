/* Cluster Func_8003808..Func_800380c extracted from goldensun/rom_c0/src/rom_3650.s.
 *
 * Total .text for this TU = 8 bytes (= 0x8).
 * Preserves the original ROM layout when slotted between
 * rom_c0/src/rom_3650_a.o and rom_c0/src/rom_3650_c.o in stage1.ld.
 */

#include "gba/io.h"

void Func_8003808(void) {}
void Func_800380c(void) {}

extern bool16 ewram_2002000;
extern bool8 gSoftReset;

void KeypadIntr(void) {
    if (!ewram_2002000) {
        SetKeyCnt(0xC3FF);
        gSoftReset = 1;
    }
}
