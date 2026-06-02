/* Cluster Func_80064f4..Func_80064f4 extracted from goldensun/asm/rom_c0/rom_5cf8_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_5cf8_a_a.o and asm/rom_c0/rom_5cf8_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int ewram_2002080;
extern unsigned int ewram_20023ac;

unsigned int Func_80064f4(void)
{
    unsigned int result;

    result = 0;
    if (ewram_2002080 != 0)
        result = 1;
    if (ewram_20023ac != 0)
        result |= 2;
    return result;
}
