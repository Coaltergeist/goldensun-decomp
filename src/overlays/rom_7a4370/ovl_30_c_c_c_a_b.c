/* Cluster OvlFunc_917_20082c0..OvlFunc_917_20082c0 extracted from goldensun/asm/overlays/rom_7a4370/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a4370/ovl_30_c_c_c_a_a.o and asm/overlays/rom_7a4370/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_7a4370/overlay.ld.
 */
extern void OvlFunc_917_20082ec(void);
extern void OvlFunc_917_2008488(void);

void OvlFunc_917_20082c0(void)
{
    __CutsceneStart();
    __Func_808e118();
    if (__GetFlag(0x844) == 0) {
        OvlFunc_917_20082ec();
    } else {
        OvlFunc_917_2008488();
    }
    __CutsceneEnd();
}
