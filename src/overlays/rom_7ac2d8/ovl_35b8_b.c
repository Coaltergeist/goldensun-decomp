/* Cluster OvlFunc_924_200d948..OvlFunc_924_200d948 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_35b8.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_35b8_a.o and asm/overlays/rom_7ac2d8/ovl_35b8_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern void *__galloc_ewram(int a, int b);
extern void __DeleteActor(void *p);

void OvlFunc_924_200d948(void) {
    unsigned char *p;
    unsigned char *q;
    void *v;

    p = (unsigned char *)__galloc_ewram(0x23, 4);
    if (p == (unsigned char *)0)
        return;
    q = *(unsigned char **)p;
    v = *(void **)(q + 0x14);
    if (v == (void *)0)
        return;
    __DeleteActor(v);
    *(void **)(q + 0x14) = (void *)0;
}
