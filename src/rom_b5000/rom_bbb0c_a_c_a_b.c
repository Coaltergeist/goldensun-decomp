/* Cluster Func_80bdfec..Func_80bdfec extracted from goldensun/asm/rom_b5000/rom_bbb0c_a_c_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bbb0c_a_c_a_a.o and asm/rom_b5000/rom_bbb0c_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e74[];

void Func_80bdfec(void) {
    unsigned int *r2;
    r2 = *(unsigned int **)iwram_3001e74;
    *(unsigned int *)((char *)r2 + 0x800) = 0;
    *(unsigned int *)((char *)r2 + 0x7fc) = 0;
    *(unsigned int *)((char *)r2 + 0x804) = 0;
    *(unsigned int *)((char *)r2 + 0x808) = 0;
    *(unsigned int *)((char *)r2 + 0x7f8) = 0;
    *(unsigned int *)((char *)r2 + 0x820) = 0x86;
    *(unsigned int *)((char *)r2 + 0x824) = 0;
}
