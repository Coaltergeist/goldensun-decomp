/* Cluster OvlFunc_966_2008054..OvlFunc_966_2008054 extracted from goldensun/asm/overlays/rom_7f148c/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f148c/ovl_30_c_c_a_a.o and asm/overlays/rom_7f148c/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7f148c/overlay.ld.
 */
extern unsigned char L1a98[] __asm__(".L1a98");
extern unsigned char L1900[] __asm__(".L1900");

unsigned int *OvlFunc_966_2008054(void)
{
    if (__GetFlag(0x9a7))
        return (unsigned int *)L1a98;
    return (unsigned int *)L1900;
}
