/* Cluster Func_80f3844..Func_80f3844 extracted from goldensun/asm/rom_f2000/rom_f2028_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f2000/rom_f2028_c_c_a.o and asm/rom_f2000/rom_f2028_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short *iwram_3001ed0;

void Func_80f3844(int arg0)
{
    unsigned short *p;
    p = iwram_3001ed0;
    if (p)
        *p = arg0;
}
