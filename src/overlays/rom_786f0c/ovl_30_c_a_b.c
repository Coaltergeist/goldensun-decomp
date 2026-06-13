/* Cluster OvlFunc_886_20080d8..OvlFunc_886_20080d8 extracted from goldensun/asm/overlays/rom_786f0c/ovl_30_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_786f0c/ovl_30_c_a_a.o and asm/overlays/rom_786f0c/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_786f0c/overlay.ld.
 */
extern unsigned char L1590[] __asm__(".L1590");
extern unsigned char L1568[] __asm__(".L1568");

unsigned int *OvlFunc_886_20080d8(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)L1590;
    return (unsigned int *)L1568;
}
