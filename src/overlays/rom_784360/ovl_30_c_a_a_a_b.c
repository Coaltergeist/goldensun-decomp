/* Cluster OvlFunc_884_2008094..OvlFunc_884_2008094 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a_a_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_a_a_a.o and asm/overlays/rom_784360/ovl_30_c_a_a_a_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
extern unsigned char L3144[] __asm__(".L3144");
extern unsigned char L3108[] __asm__(".L3108");

unsigned int *OvlFunc_884_2008094(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)L3144;
    return (unsigned int *)L3108;
}
