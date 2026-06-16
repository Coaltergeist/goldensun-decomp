/* Cluster Func_801f5d4..Func_801f5d4 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_c_a_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_c_a_a_a.o and asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e90[];
extern void CloseUIBox(void *, int);
extern void gfree(int);

void Func_801f5d4(void) {
    unsigned int *r3 = *(unsigned int **)iwram_3001e90;
    CloseUIBox((void *)*r3, 1);
    gfree(0x10);
}
