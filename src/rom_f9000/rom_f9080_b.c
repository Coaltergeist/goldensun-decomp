/* Cluster Func_f9538..Func_f954c extracted from goldensun/asm/rom_f9000/rom_f9080.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_a.o and asm/rom_f9000/rom_f9080_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short ewram_3034;
extern unsigned short ewram_3010;

void Func_f9538(unsigned short arg0, unsigned short arg1) {
    ewram_3034 = arg0;
    ewram_3010 = arg1;
}
extern unsigned char ewram_3000;

unsigned int Func_f954c(void) {
    return ewram_3000;
}
