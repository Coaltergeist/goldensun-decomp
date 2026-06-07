/* Cluster OvlFunc_943_200889c..OvlFunc_943_200889c extracted from goldensun/asm/overlays/rom_7c7b9c/ovl_30_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c7b9c/ovl_30_a_a.o and asm/overlays/rom_7c7b9c/ovl_30_a_c.o in
 * goldensun/overlays/rom_7c7b9c/overlay.ld.
 */
extern int __Random(unsigned int arg0);

unsigned int OvlFunc_943_200889c(unsigned int arg0) {
    unsigned int v0;
    unsigned int v3;

    v0 = __Random(arg0);
    v3 = ((v0 * 5) << 3) >> 16;
    if (v3 == 0) {
        unsigned int v2;
        v2 = 0x80;
        v2 <<= 11;
        *(unsigned int *)((char *)arg0 + 0x28) = v2;
    }
    return 1;
}
