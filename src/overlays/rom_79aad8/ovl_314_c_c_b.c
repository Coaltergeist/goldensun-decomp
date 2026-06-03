/* Cluster OvlFunc_906_20084d4..OvlFunc_906_20084d4 extracted from goldensun/asm/overlays/rom_79aad8/ovl_314_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79aad8/ovl_314_c_c_a.o and asm/overlays/rom_79aad8/ovl_314_c_c_c.o in
 * goldensun/overlays/rom_79aad8/overlay.ld.
 */
extern void __Func_80030f8(int);

void OvlFunc_906_20084d4(int arg0, int arg1)
{
    int r5;

    r5 = 0x3c;
    while (r5 != 0) {
        __Func_80030f8(1);
        r5--;
        if (*(int *)((char *)arg0 + 0xc) <= arg1)
            break;
    }
}
