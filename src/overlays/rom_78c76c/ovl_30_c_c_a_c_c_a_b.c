/* Cluster OvlFunc_891_2009574..OvlFunc_891_2009574 extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_a_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 */
extern int OvlFunc_891_2009be8(int, int, int);
extern void OvlFunc_891_2009c14(void);

void OvlFunc_891_2009574(void)
{
    int r0;
    r0 = OvlFunc_891_2009be8(9, 0x1f, 9);
    if (r0 != 0) {
        OvlFunc_891_2009c14();
    }
}
