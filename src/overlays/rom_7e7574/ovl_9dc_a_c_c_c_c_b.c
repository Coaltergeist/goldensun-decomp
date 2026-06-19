/* Cluster OvlFunc_959_200901c..OvlFunc_959_200901c extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_a_c_c_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_a_c_c_c_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern int OvlFunc_959_2009038(int, int);

void OvlFunc_959_200901c(void)
{
    if (OvlFunc_959_2009038(0xb, 5))
        __SetFlag(0xf2d);
}
