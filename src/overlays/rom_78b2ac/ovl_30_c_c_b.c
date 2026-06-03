/* Cluster OvlFunc_890_200a5b0..OvlFunc_890_200a5b0 extracted from goldensun/asm/overlays/rom_78b2ac/ovl_30_c_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78b2ac/ovl_30_c_c_a.o and asm/overlays/rom_78b2ac/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_78b2ac/overlay.ld.
 */
extern int __Func_8079338(int);

unsigned int OvlFunc_890_200a5b0(void) {
    unsigned int r5 = 1;
    if (!__Func_8079338(0x80b))
        r5 = 0;
    if (!__Func_8079338(0x80c))
        r5 = 0;
    if (!__Func_8079338(0x80d))
        r5 = 0;
    if (!__Func_8079338(0x80e))
        r5 = 0;
    return r5;
}
