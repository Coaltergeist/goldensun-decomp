/* Cluster Func_8005904..Func_8005904 extracted from goldensun/asm/rom_c0/rom_56cc_a_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_56cc_a_a_a.o and asm/rom_c0/rom_56cc_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short (*ewram_2004c14)(unsigned short);

unsigned short Func_8005904(unsigned short arg)
{
    return ewram_2004c14(arg);
}
