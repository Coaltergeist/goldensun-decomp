/* Cluster OvlFunc_923_200a3b8..OvlFunc_923_200a3b8 extracted from goldensun/asm/overlays/rom_7aa430/ovl_1a3c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7aa430/ovl_1a3c_a.o and asm/overlays/rom_7aa430/ovl_1a3c_c.o in
 * goldensun/overlays/rom_7aa430/overlay.ld.
 */
extern unsigned int *__galloc_ewram(int a, int b);
extern void __DeleteActor(int a);

void OvlFunc_923_200a3b8(void) {
    unsigned int *p;
    unsigned int *r5;

    p = __galloc_ewram(0x23, 4);
    if (p == (unsigned int *)0)
        return;
    r5 = (unsigned int *)*p;
    if (*(unsigned int *)((char *)r5 + 0x14) == 0)
        return;
    __DeleteActor(*(unsigned int *)((char *)r5 + 0x14));
    *(unsigned int *)((char *)r5 + 0x14) = 0;
}
