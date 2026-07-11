/* Cluster OvlFunc_962_2008a54..OvlFunc_962_2008a54 extracted from goldensun/asm/overlays/rom_7ec19c/ovl_30_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ec19c/ovl_30_c_c_a.o and asm/overlays/rom_7ec19c/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7ec19c/overlay.ld.
 */
extern unsigned char L11ec[] __asm__(".L11ec");
extern unsigned char L1090[] __asm__(".L1090");

unsigned int *OvlFunc_962_2008a54(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)L11ec;
    return (unsigned int *)L1090;
}
