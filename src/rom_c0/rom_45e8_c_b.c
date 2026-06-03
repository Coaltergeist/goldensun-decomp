/* Cluster Func_8004698..Func_8004698 extracted from goldensun/asm/rom_c0/rom_45e8_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_45e8_c_a.o and asm/rom_c0/rom_45e8_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short *iwram_3001cbc;

void Func_8004698(unsigned int arg0)
{
    unsigned short *p;
    unsigned int i;

    p = iwram_3001cbc;
    for (i = 0; i < arg0; i++) {
        *p = 0xf000;
        p++;
    }
    iwram_3001cbc = p;
}
