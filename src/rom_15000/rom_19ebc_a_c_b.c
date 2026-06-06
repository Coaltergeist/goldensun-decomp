/* Cluster Func_8019ed0..Func_8019ed0 extracted from goldensun/asm/rom_15000/rom_19ebc_a_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_19ebc_a_c_a.o and asm/rom_15000/rom_19ebc_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L2e108[] __asm__(".L2e108");
extern unsigned char L2de88[] __asm__(".L2de88");

unsigned int Func_8019ed0(void) {
    return ((int *)L2e108) - ((int *)L2de88);
}
