/* Cluster OvlFunc_898_2008cc4..OvlFunc_898_2008cc4 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_c_a_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_c_a_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void OvlFunc_898_2008938(int arg0);

void OvlFunc_898_2008cc4(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x123b);
    } else {
        __MessageID(0x1348);
    }
    OvlFunc_898_2008938(0xd);
    __CutsceneEnd();
}
