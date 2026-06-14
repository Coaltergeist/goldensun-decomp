/* Cluster OvlFunc_888_200b2a8..OvlFunc_888_200b2a8 extracted from goldensun/asm/overlays/rom_7892c8/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7892c8/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7892c8/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7892c8/overlay.ld.
 */
unsigned int OvlFunc_888_200b2a8(void)
{
    unsigned char *p;
    unsigned int v;

    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0x5fff) << 16;
    if (v <= 0x3ffe0000) {
        return 1;
    }
    return 0;
}
