/* Cluster Func_8004718..Func_8004718 extracted from goldensun/asm/rom_c0/rom_45e8_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_45e8_c_c_a.o and asm/rom_c0/rom_45e8_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Debug_PrintHex(unsigned int num);
extern void Func_80046c4(unsigned char *p);
extern unsigned char iwram_3001f78[];

void Func_8004718(unsigned int arg0, unsigned int arg1) {
    unsigned int r5;
    r5 = arg1;
    if (r5 - 1 > 7) {
        r5 = 8;
    }
    Debug_PrintHex(arg0);
    Func_80046c4(iwram_3001f78 - r5);
}
