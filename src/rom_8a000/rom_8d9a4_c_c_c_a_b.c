/* Cluster Func_8091240..Func_8091240 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c_c_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_c_a_a.o and asm/rom_8a000/rom_8d9a4_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short *iwram_3001ed0;

void Func_8091240(int arg0)
{
    unsigned short *p;
    p = iwram_3001ed0;
    if (p)
        *p = arg0;
}
