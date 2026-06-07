/* Cluster Func_8017394..Func_8017394 extracted from goldensun/asm/rom_15000/rom_15e8c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_c_a_a.o and asm/rom_15000/rom_15e8c_c_a_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_8017394(unsigned char *box)
{
    if (*(unsigned short *)(box + 0x16) == 0)
        if (*(short *)(box + 0x1a) == 0)
            return 1;
    return 0;
}
