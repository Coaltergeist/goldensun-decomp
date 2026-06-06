/* Cluster Func_8005e70..Func_8005e70 extracted from goldensun/asm/rom_c0/rom_5cf8_a_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_5cf8_a_a_a_a.o and asm/rom_c0/rom_5cf8_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char ewram_2002240;

void Func_8005e70(void) {
    unsigned char *p = &ewram_2002240;
    if (p[0]) {
        p[8] = 1;
    }
}
