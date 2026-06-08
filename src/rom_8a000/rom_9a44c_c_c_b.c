/* Cluster Func_809ab98..Func_809ab98 extracted from goldensun/asm/rom_8a000/rom_9a44c_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9a44c_c_c_a.o and asm/rom_8a000/rom_9a44c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char **iwram_3001f30;
extern void Field_Halt(void);

void Func_809ab98(void) {
    unsigned char *p;

    p = iwram_3001f30[5];
    p[0x5b] = 1;
    Field_Halt();
}
