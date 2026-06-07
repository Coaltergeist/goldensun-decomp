/* Cluster Func_8021e14..Func_8021e14 extracted from goldensun/asm/rom_15000/rom_21dfc_a_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_21dfc_a_c_a.o and asm/rom_15000/rom_21dfc_a_c_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/io.h"
#include "interrupt.h"

void Func_8021e14(void) {
    SET_IO(REG_BG1CNT, (REG_BG1CNT & ~3));
}

extern void SetIntrHandler(unsigned int, unsigned int, void *);

void Func_8021e28(void) {
    SET_IO(REG_BG0VOFS, 0);
    SetIntrHandler((1 << INTR_ID_HBLANK), 0x88, Func_8021e14);
}
