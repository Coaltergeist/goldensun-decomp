/* Cluster OvlFunc_933_2008324..OvlFunc_933_2008324 extracted from goldensun/asm/overlays/rom_7bc690/ovl_314_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bc690/ovl_314_a_a.o and asm/overlays/rom_7bc690/ovl_314_a_c.o in
 * goldensun/overlays/rom_7bc690/overlay.ld.
 */
extern void __Func_80030f8(int);

void OvlFunc_933_2008324(unsigned int *arg0, int arg1)
{
    int i;

    i = 0x3c;
    while (i != 0) {
        __Func_80030f8(1);
        i--;
        if ((int)arg0[3] <= arg1)
            break;
    }
}
