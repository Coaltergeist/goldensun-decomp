/* Cluster GetDjinniInfo..GetDjinniInfo extracted from goldensun/asm/rom_77000/rom_79460_c_c_c_c_a_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_c_a_c_c_c_a_a.o and asm/rom_77000/rom_79460_c_c_c_c_a_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L8926c[] __asm__(".L8926c");

unsigned char *GetDjinniInfo(unsigned int arg0, unsigned int arg1) {
    unsigned int r3;
    r3 = 0;
    if (arg0 <= 3 && arg1 <= 0x13) {
        r3 = arg0 * 20 + arg1;
    }
    return L8926c + r3 * 12;
}
