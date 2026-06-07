/* Cluster OvlFunc_943_20088c0..OvlFunc_943_20088c0 extracted from goldensun/asm/overlays/rom_7c7b9c/ovl_30_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c7b9c/ovl_30_a_c_a.o and asm/overlays/rom_7c7b9c/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_7c7b9c/overlay.ld.
 */
void OvlFunc_943_20088c0(int *p)
{
    int v;

    v = p[6];
    if (v > 0x10000) {
        v -= 0x800;
        p[6] = v;
        p[7] = p[7] - 0x800;
    }
}
