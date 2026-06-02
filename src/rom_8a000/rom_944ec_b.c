/* Cluster Func_8096c24..Func_8096c24 extracted from goldensun/asm/rom_8a000/rom_944ec.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a.o and asm/rom_8a000/rom_944ec_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001810[512];

unsigned int Func_8096c24(void)
{
    unsigned char *p;
    unsigned int count;
    int i;

    p = iwram_3001810;
    count = 0;
    for (i = 0x200; i != 0; i--) {
        unsigned char v = *p;
        p++;
        if (v == 0xff)
            count++;
    }
    return count;
}
