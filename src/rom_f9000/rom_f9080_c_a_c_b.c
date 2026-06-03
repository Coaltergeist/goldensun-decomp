/* Cluster Func_80f9570..Func_80f9570 extracted from goldensun/asm/rom_f9000/rom_f9080_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_c_a_c_a.o and asm/rom_f9000/rom_f9080_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char ewram_2003040;

void Func_80f9570(unsigned int arg0)
{
    unsigned int hi = arg0 & 0x80;
    arg0 &= 0x7f;
    if (hi != 0)
        ewram_2003040 = ewram_2003040 ^ arg0;
    else
        ewram_2003040 = arg0;
}
