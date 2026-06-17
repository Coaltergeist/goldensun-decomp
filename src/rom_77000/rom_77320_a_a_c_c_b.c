/* Cluster GetEnemyInfo..GetEnemyInfo extracted from goldensun/asm/rom_77000/rom_77320_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_77320_a_a_c_c_a.o and asm/rom_77000/rom_77320_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char Data_80ec8;

unsigned int GetEnemyInfo(int param) {
    unsigned int idx;
    idx = param - 8;
    if (idx > 0xf9)
        idx = 0;
    return (unsigned int)(&Data_80ec8 + idx * 0x54);
}
