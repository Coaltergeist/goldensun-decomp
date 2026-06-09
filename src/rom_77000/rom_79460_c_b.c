/* Cluster AddCoinsSpent..AddCoinsSpent extracted from goldensun/asm/rom_77000/rom_79460_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_a.o and asm/rom_77000/rom_79460_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int gState[];

unsigned int AddCoinsSpent(int coins)
{
    int val;
    int idx;

    idx = 0x8c << 1;
    val = *(int *)((char *)gState + idx);
    val += coins;
    if (val > 0xf423f)
        val = 0xf423f;
    if (val < 0)
        val = 0;
    *(int *)((char *)gState + idx) = val;
    return val;
}
