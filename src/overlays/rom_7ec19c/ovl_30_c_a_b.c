/* Cluster OvlFunc_962_2008048..OvlFunc_962_2008048 extracted from goldensun/asm/overlays/rom_7ec19c/ovl_30_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ec19c/ovl_30_c_a_a.o and asm/overlays/rom_7ec19c/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_7ec19c/overlay.ld.
 */
extern unsigned char Lf28[] __asm__(".Lf28");
extern unsigned char Le08[] __asm__(".Le08");

unsigned int *OvlFunc_962_2008048(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)Lf28;
    return (unsigned int *)Le08;
}
