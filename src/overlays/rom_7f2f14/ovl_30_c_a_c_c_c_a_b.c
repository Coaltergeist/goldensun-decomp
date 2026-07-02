/* Cluster OvlFunc_968_20099f0..OvlFunc_968_20099f0 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_a_a.o and asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern int OvlFunc_968_2008cc8(void);
extern void OvlFunc_968_200999c(void);
extern void OvlFunc_968_2008374(void);
extern void OvlFunc_968_20099c0(void);

void OvlFunc_968_20099f0(void)
{
    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        OvlFunc_968_200999c();
        OvlFunc_968_2008374();
        OvlFunc_968_20099c0();
    }
    __CutsceneEnd();
}
