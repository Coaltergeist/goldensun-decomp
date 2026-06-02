/* Cluster Func_8096f8c..Func_8096f8c extracted from goldensun/asm/rom_8a000/rom_96cdc.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_96cdc_a.o and asm/rom_8a000/rom_96cdc_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f30;
extern void Func_809b804(unsigned char *p);

void Func_8096f8c(void) {
    unsigned char *p;
    int i;

    p = (unsigned char *)(iwram_3001f30 + 0x58);
    for (i = 0x17; i >= 0; i--) {
        Func_809b804(p);
        p += 0x48;
    }
}
