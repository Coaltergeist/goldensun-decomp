/* Cluster OvlFunc_891_200958c..OvlFunc_891_200958c extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_a_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_a_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 */
extern int OvlFunc_891_2009be8(int, int, int);
extern void OvlFunc_891_2009d14(void);

void OvlFunc_891_200958c(void)
{
    int r0;

    r0 = OvlFunc_891_2009be8(0xb, 0x28, 9);
    if (r0 != 0) {
        OvlFunc_891_2009d14();
    }
}
