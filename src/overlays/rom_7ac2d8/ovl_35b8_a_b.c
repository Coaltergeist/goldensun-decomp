/* Cluster OvlFunc_924_200d1f0..OvlFunc_924_200d218 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_35b8_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_35b8_a_a.o and asm/overlays/rom_7ac2d8/ovl_35b8_a_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
unsigned int OvlFunc_924_200d1f0(unsigned int arg0)
{
    unsigned short *p;
    int v;

    p = (unsigned short *)((char *)arg0 + 0x64);
    *p = *p + 1;
    v = (short)*p;
    if (v > 0x10)
        return 0;
    *(unsigned int *)((char *)arg0 + 0x18) = (v * 3) << 10;
    *(unsigned int *)((char *)arg0 + 0x1c) = (v * 3) << 10;
    return 1;
}
unsigned int OvlFunc_924_200d218(unsigned int arg0)
{
    short *p;
    int v;

    p = (short *)(arg0 + 0x64);
    *p = *p + 1;
    if ((int)((*p) << 16) >> 16 > 0x10)
        return 0;
    v = (((int)((*p) << 16) >> 16) << 11) + (0x80 << 9);
    *(unsigned int *)(arg0 + 0x18) = v;
    *(unsigned int *)(arg0 + 0x1c) = v;
    return 1;
}
