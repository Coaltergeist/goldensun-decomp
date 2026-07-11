/* Cluster OvlFunc_966_20091e8..OvlFunc_966_20091e8 extracted from goldensun/asm/overlays/rom_7f148c/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f148c/ovl_30_c_c_c_a.o and asm/overlays/rom_7f148c/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7f148c/overlay.ld.
 */
extern unsigned char L1ee4[] __asm__(".L1ee4");
extern unsigned char L1d04[] __asm__(".L1d04");

unsigned int *OvlFunc_966_20091e8(void)
{
    if (__GetFlag(0x9a7))
        return (unsigned int *)L1ee4;
    return (unsigned int *)L1d04;
}
