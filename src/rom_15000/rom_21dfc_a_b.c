/* Cluster Func_8021dfc..Func_8021dfc extracted from goldensun/asm/rom_15000/rom_21dfc_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_21dfc_a_a.o and asm/rom_15000/rom_21dfc_a_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/io.h"

void Func_8021dfc(void) {
    do { u32 _value = (~3 & REG_BG1CNT) | 3; REG_BG1CNT = _value; } while (0);
}
