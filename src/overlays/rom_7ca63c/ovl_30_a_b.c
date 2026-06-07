/* Cluster OvlFunc_944_20080a4..OvlFunc_944_20080a4 extracted from goldensun/asm/overlays/rom_7ca63c/ovl_30_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ca63c/ovl_30_a_a.o and asm/overlays/rom_7ca63c/ovl_30_a_c.o in
 * goldensun/overlays/rom_7ca63c/overlay.ld.
 */
void OvlFunc_944_20080a4(int *p)
{
    int v;

    v = *(int *)((char *)p + 0x18);
    if (v < 0x10000) {
        *(int *)((char *)p + 0x18) = v + 0xa0;
        *(int *)((char *)p + 0x1c) = *(int *)((char *)p + 0x1c) + 0xa0;
    }
}
