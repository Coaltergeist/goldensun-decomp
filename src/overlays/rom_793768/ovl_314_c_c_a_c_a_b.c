/* Cluster OvlFunc_898_20085f0..OvlFunc_898_20085f0 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_c_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned char L2630[] __asm__(".L2630");
extern unsigned char L2414[] __asm__(".L2414");

unsigned char *OvlFunc_898_20085f0(void)
{
    if (__GetFlag(0x855))
        return L2630;
    return L2414;
}
