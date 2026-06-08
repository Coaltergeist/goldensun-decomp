/* Cluster OvlFunc_934_2008cd0..OvlFunc_934_2008cd0 extracted from goldensun/asm/overlays/rom_7bdeb0/ovl_314.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bdeb0/ovl_314_a.o and asm/overlays/rom_7bdeb0/ovl_314_c.o in
 * goldensun/overlays/rom_7bdeb0/overlay.ld.
 */
extern void __WaitFrames(int arg0);

void OvlFunc_934_2008cd0(unsigned int arg0)
{
    int *r5;
    int r6;

    r5 = (int *)arg0;
    r6 = 0x3c;
    while (r6 != 0) {
        __WaitFrames(1);
        r6--;
        if (r5[3] <= r5[5])
            break;
    }
    r5[3] = r5[5];
}
