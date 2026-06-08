/* Cluster Func_8093964..Func_8093964 extracted from goldensun/asm/rom_8a000/rom_93304_a_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_c_a.o and asm/rom_8a000/rom_93304_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _Actor_SetSpriteFlags(unsigned int arg, int b);

unsigned int Func_8093964(unsigned int arg0)
{
    _Actor_SetSpriteFlags(arg0, 0);
    *(unsigned char *)(arg0 + 0x59) = 0;
    return 0;
}
