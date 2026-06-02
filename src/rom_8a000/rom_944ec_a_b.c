/* Cluster Func_8095884..Func_8095884 extracted from goldensun/asm/rom_8a000/rom_944ec_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_a.o and asm/rom_8a000/rom_944ec_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f30;
extern void Func_809b804(unsigned char *p);

void Func_8095884(void) {
    unsigned char *p;
    int i;

    p = (unsigned char *)(iwram_3001f30 + 0x58);
    for (i = 0x17; i >= 0; i--) {
        Func_809b804(p);
        p += 0x48;
    }
}
