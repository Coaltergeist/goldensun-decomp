/* Cluster OvlFunc_923_2009c60..OvlFunc_923_2009c88 extracted from goldensun/asm/overlays/rom_7aa430/ovl_1a3c_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7aa430/ovl_1a3c_a_a.o and asm/overlays/rom_7aa430/ovl_1a3c_a_c.o in
 * goldensun/overlays/rom_7aa430/overlay.ld.
 */
unsigned int OvlFunc_923_2009c60(unsigned int arg0)
{
    unsigned char *base;
    unsigned short *counter;
    short val;

    base = (unsigned char *)arg0;
    counter = (unsigned short *)(base + 0x64);
    *counter = (unsigned short)(*counter + 1);
    val = (short)*counter;
    if (val > 0x10) {
        return 0;
    }
    *(unsigned int *)(base + 0x18) = (val * 3) << 10;
    *(unsigned int *)(base + 0x1c) = (val * 3) << 10;
    return 1;
}
unsigned int OvlFunc_923_2009c88(unsigned int arg0)
{
    short *count;
    int v;

    count = (short *)((char *)arg0 + 0x64);
    *count += 1;
    v = *count;
    if (v > 0x10)
        return 0;
    v = (v << 11) + (0x80 << 9);
    *(int *)((char *)arg0 + 0x18) = v;
    *(int *)((char *)arg0 + 0x1c) = v;
    return 1;
}
