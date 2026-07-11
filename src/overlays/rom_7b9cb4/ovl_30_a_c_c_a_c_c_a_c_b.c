/* Cluster OvlFunc_932_200ace0..OvlFunc_932_200ace0 extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern unsigned char iwram_3001e40[];   /* @ 0x03001E40 */

void OvlFunc_932_200ace0(unsigned int arg0)
{
    unsigned int v;

    v = *(unsigned int *)iwram_3001e40;
    v &= 7;
    if (v == 0) {
        __Func_80929d8(arg0, 2);
    } else if (v == 2) {
        __Func_80929d8(arg0, 0);
    }
}
