/* Cluster Func_80118a8..Func_80118a8 extracted from goldensun/asm/rom_9000/rom_11568.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_a.o and asm/rom_9000/rom_11568_c.o in
 * goldensun/stage1.ld.
 */
/* Func_80118a8; halfword 0 at element i (12-byte stride) + 0x22 of the array
 * at *iwram_3001e70. base temp forces the deref early; the separate element
 * pointer keeps base the add accumulator and 0x22 the strh immediate; tarpman
 * var forces `movs` for the stored 0. */
extern unsigned char *iwram_3001e70;

void Func_80118a8(int i) {
    unsigned char *base = iwram_3001e70;
    unsigned char *p = base + i * 12;
    unsigned short v = 0;
    *(unsigned short *)(p + 0x22) = v;
}
