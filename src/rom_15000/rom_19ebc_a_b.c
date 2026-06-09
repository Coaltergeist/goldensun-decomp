/* Cluster NumItemIcons..NumItemIcons extracted from goldensun/asm/rom_15000/rom_19ebc_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_19ebc_a_a.o and asm/rom_15000/rom_19ebc_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L2a2e0[] __asm__(".L2a2e0");
extern unsigned char L29ee4[] __asm__(".L29ee4");

unsigned int NumItemIcons(void) {
    return (L2a2e0 - L29ee4) >> 2;
}
