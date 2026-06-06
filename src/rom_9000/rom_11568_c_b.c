/* Cluster Func_80118c0..Func_80118c0 extracted from goldensun/asm/rom_9000/rom_11568_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_c_a.o and asm/rom_9000/rom_11568_c_c.o in
 * goldensun/stage1.ld.
 */
/* Func_80118c0 — twin of Func_80118a8 but stores 1 (`movs r3,#1`). */
extern unsigned char *iwram_3001e70;

void Func_80118c0(int i) {
    unsigned char *base = iwram_3001e70;
    unsigned char *p = base + i * 12;
    unsigned short v = 1;
    *(unsigned short *)(p + 0x22) = v;
}
