/* Cluster OvlFunc_911_2008030..OvlFunc_911_2008030 extracted from goldensun/asm/overlays/rom_79e5c0/ovl_30_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79e5c0/ovl_30_a_a.o and asm/overlays/rom_79e5c0/ovl_30_a_c.o in
 * goldensun/overlays/rom_79e5c0/overlay.ld.
 */
extern unsigned char L3698[] __asm__(".L3698");

unsigned int OvlFunc_911_2008030(unsigned int arg0)
{
    int r3;
    r3 = *(int *)L3698;
    if (r3 != 0) {
        __Actor_SetAnim(arg0, 2);
        *(int *)L3698 = 0;
    }
    return 1;
}
