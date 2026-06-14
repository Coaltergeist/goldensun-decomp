/* Cluster OvlFunc_884_20088f0..OvlFunc_884_20088f0 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_a_c_a.o and asm/overlays/rom_784360/ovl_30_c_a_a_c_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
extern void OvlFunc_884_2008714(int);

void OvlFunc_884_20088f0(void)
{
    if (__GetFlag(0x815)) {
        __PlaySound(0x7b);
        OvlFunc_884_2008714(0xa);
    }
}
