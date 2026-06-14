/* Cluster OvlFunc_887_2008094..OvlFunc_887_2008094 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_a_a.o and asm/overlays/rom_787e04/ovl_30_c_a_a_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern unsigned char L2198[] __asm__(".L2198");
extern unsigned int gOvl_0200a1dc;

unsigned int *OvlFunc_887_2008094(void)
{
    if (__GetFlag(0x834))
        return &gOvl_0200a1dc;
    return (unsigned int *)L2198;
}
