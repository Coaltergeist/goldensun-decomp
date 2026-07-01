/* Cluster OvlFunc_883_2008df0..OvlFunc_883_2008df0 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_a_a_a_a_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern void OvlFunc_883_2008fec(void);

void OvlFunc_883_2008df0(void)
{
    if (__GetFlag(0x801) == 0) {
        OvlFunc_883_2008fec();
    } else {
        __PlaySound(0x7b);
        __Func_8091e9c(1);
    }
}
