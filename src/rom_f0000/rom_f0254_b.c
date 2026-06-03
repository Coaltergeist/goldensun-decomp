/* Cluster Func_80f03c0..Func_80f03c0 extracted from goldensun/asm/rom_f0000/rom_f0254.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f0000/rom_f0254_a.o and asm/rom_f0000/rom_f0254_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001800;
extern unsigned short iwram_3001ad0;

void Func_80f03c0(void) {
    unsigned short *p;
    if ((iwram_3001800 & 3) == 0) {
        p = &iwram_3001ad0;
        *(unsigned short *)((char *)p + 8) = *(unsigned short *)((char *)p + 8) - 1;
        *(unsigned short *)((char *)p + 12) = *(unsigned short *)((char *)p + 12) - 1;
    }
}
