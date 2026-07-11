/* Cluster OvlFunc_898_2008dd4..OvlFunc_898_2008dd4 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_c_a_a_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_c_a_a_c_a.o and asm/overlays/rom_793768/ovl_314_c_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void OvlFunc_898_2008938(int arg0);

void OvlFunc_898_2008dd4(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x123e);
    } else {
        __MessageID(0x134c);
    }
    OvlFunc_898_2008938(0x10);
    __CutsceneEnd();
}
