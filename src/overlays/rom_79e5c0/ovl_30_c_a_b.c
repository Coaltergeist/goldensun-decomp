/* Cluster OvlFunc_911_200a5d8..OvlFunc_911_200a5d8 extracted from goldensun/asm/overlays/rom_79e5c0/ovl_30_c_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_79e5c0/ovl_30_c_a_a.o and asm/overlays/rom_79e5c0/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_79e5c0/overlay.ld.
 */
extern void __Func_800c0f4(void);

unsigned int OvlFunc_911_200a5d8(int *p) {
    int v;
    *(int *)((char *)p + 0x18) = *(int *)((char *)p + 0x18) + 0x1eb8;
    v = *(int *)((char *)p + 0x38);
    if (v == (0x80 << 24)) {
        if (*(int *)((char *)p + 0x3c) == v) {
            if (*(int *)((char *)p + 0x40) == v) {
                __Func_800c0f4();
            }
        }
    }
    return 1;
}
