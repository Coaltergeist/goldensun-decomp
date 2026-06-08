/* Cluster c_sqrt..c_sqrt extracted from goldensun/asm/rom_c0/rom_447c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_447c_a.o and asm/rom_c0/rom_447c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int c_sqrt(unsigned int x)
{
    int result;
    int i;
    int val;

    result = 0;
    for (i = 15; i >= 0; i--) {
        val = (result << (i + 1)) + (1 << (i << 1));
        if (val <= (int)x) {
            result |= (1 << i);
            x -= val;
        }
    }
    return result;
}
