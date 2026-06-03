/* Cluster OvlFunc_903_2008db8..OvlFunc_903_2008db8 extracted from goldensun/asm/overlays/rom_798dc4/ovl_314_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_798dc4/ovl_314_c_c_a.o and asm/overlays/rom_798dc4/ovl_314_c_c_c.o in
 * goldensun/overlays/rom_798dc4/overlay.ld.
 */
extern void __Func_80030f8(unsigned int x);

void OvlFunc_903_2008db8(unsigned char *arg0, int arg1) {
    int i;

    for (i = 0x3c; i != 0; i--) {
        __Func_80030f8(1);
        if (*(int *)(arg0 + 0xc) <= arg1)
            break;
    }
}
