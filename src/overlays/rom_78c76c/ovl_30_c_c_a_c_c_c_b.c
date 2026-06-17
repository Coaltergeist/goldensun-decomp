/* Cluster OvlFunc_891_20095bc..OvlFunc_891_20095bc extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 */
extern int OvlFunc_891_2009be8(int, int, int);
extern void OvlFunc_891_2009f0c(void);

void OvlFunc_891_20095bc(void)
{
    int r0;
    r0 = OvlFunc_891_2009be8(0xf, 0x28, 0xc);
    if (r0 != 0) {
        OvlFunc_891_2009f0c();
    }
}
