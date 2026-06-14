/* Cluster OvlFunc_891_20095a4..OvlFunc_891_20095a4 extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 */
extern unsigned int OvlFunc_891_2009be8(unsigned int, unsigned int, unsigned int);
extern void OvlFunc_891_2009e10(void);

void OvlFunc_891_20095a4(void)
{
    if (OvlFunc_891_2009be8(0xd, 0x1f, 0xc) != 0) {
        OvlFunc_891_2009e10();
    }
}
