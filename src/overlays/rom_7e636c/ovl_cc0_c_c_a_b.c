/* Cluster OvlFunc_958_20091d8..OvlFunc_958_20091d8 extracted from goldensun/asm/overlays/rom_7e636c/ovl_cc0_c_c_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e636c/ovl_cc0_c_c_a_a.o and asm/overlays/rom_7e636c/ovl_cc0_c_c_a_c.o in
 * goldensun/overlays/rom_7e636c/overlay.ld.
 */
extern void __Func_80030f8(int);

void OvlFunc_958_20091d8(unsigned int arg0, int arg1)
{
    int r5;
    int *r7;

    r7 = (int *)arg0;
    r5 = 0x28;
    while (r5 != 0) {
        __Func_80030f8(1);
        r5--;
        if (r7[3] <= arg1)
            break;
    }
}
