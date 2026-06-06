/* Cluster Func_8097b54..Func_8097b54 extracted from goldensun/asm/rom_8a000/rom_97b54_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_a_a.o and asm/rom_8a000/rom_97b54_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ae8;
extern unsigned short L9f0f8[] __asm__(".L9f0f8");

unsigned short Func_8097b54(void)
{
    return L9f0f8[(iwram_3001ae8 >> 4) & 0xf];
}
