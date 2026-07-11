/* Cluster OvlFunc_961_2008208..OvlFunc_961_2008208 extracted from goldensun/asm/overlays/rom_7ebdfc/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ebdfc/ovl_30_c_c_c_a.o and asm/overlays/rom_7ebdfc/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7ebdfc/overlay.ld.
 */
extern unsigned char L758[] __asm__(".L758");
extern unsigned char L614[] __asm__(".L614");

unsigned int *OvlFunc_961_2008208(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)L758;
    return (unsigned int *)L614;
}
