/* Cluster OvlFunc_946_2009b94..OvlFunc_946_2009b94 extracted from goldensun/asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7ced6c/ovl_30_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7ced6c/overlay.ld.
 */
extern int OvlFunc_946_2009a44(void *, unsigned int *);

int OvlFunc_946_2009b94(void) {
    unsigned int buf[3];
    unsigned int *r0;
    unsigned int r3;
    unsigned int r2;
    r0 = __MapActor_GetActor(0);
    r2 = 0x80;
    r3 = *(unsigned int *)((char *)r0 + 8);
    r2 <<= 14;
    r3 += r2;
    buf[0] = r3;
    r3 = *(unsigned int *)((char *)r0 + 0xc);
    buf[1] = r3;
    r3 = *(unsigned int *)((char *)r0 + 0x10);
    buf[2] = r3;
    return OvlFunc_946_2009a44(r0, buf);
}
