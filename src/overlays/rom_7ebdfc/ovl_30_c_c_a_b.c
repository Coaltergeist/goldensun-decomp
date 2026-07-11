/* Cluster OvlFunc_961_2008044..OvlFunc_961_2008044 extracted from goldensun/asm/overlays/rom_7ebdfc/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ebdfc/ovl_30_c_c_a_a.o and asm/overlays/rom_7ebdfc/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7ebdfc/overlay.ld.
 */
extern unsigned char L4e0[] __asm__(".L4e0");
extern unsigned char L3f0[] __asm__(".L3f0");

unsigned int *OvlFunc_961_2008044(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)L4e0;
    return (unsigned int *)L3f0;
}
