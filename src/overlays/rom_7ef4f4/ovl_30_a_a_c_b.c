/* Cluster OvlFunc_965_2008cd0..OvlFunc_965_2008cd0 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_a_c_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_a_c_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
void OvlFunc_965_2008cd0(unsigned int arg0)
{
    int r5;
    unsigned int r6;
    r6 = arg0;
    r5 = 0x3c;
    while (r5 != 0) {
        __WaitFrames(1);
        if (*(unsigned int *)((char *)r6 + 0x28) == 0)
            break;
        r5--;
    }
}
