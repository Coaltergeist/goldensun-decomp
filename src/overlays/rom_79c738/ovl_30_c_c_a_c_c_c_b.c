/* Cluster OvlFunc_909_2008424..OvlFunc_909_2008424 extracted from goldensun/asm/overlays/rom_79c738/ovl_30_c_c_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79c738/ovl_30_c_c_a_c_c_c_a.o and asm/overlays/rom_79c738/ovl_30_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_79c738/overlay.ld.
 */
extern void OvlFunc_909_20083ec(void);
extern void OvlFunc_909_2008408(void);

void OvlFunc_909_2008424(void)
{
    if (__GetFlag())
        OvlFunc_909_20083ec();
    else
        OvlFunc_909_2008408();
}
