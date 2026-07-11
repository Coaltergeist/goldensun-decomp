/* Cluster OvlFunc_959_2009324..OvlFunc_959_2009324 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_a_a.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_a_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_a_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
unsigned int OvlFunc_959_2009324(void) {
    int *r5;
    int *r0;
    int a, b, c;

    r5 = (int *)__MapActor_GetActor(0);
    r0 = (int *)__MapActor_GetActor(0x11);
    a = *(int *)((char *)r5 + 8) / 0x100000;
    b = *(int *)((char *)r0 + 0x10) / 0x100000;
    c = *(int *)((char *)r0 + 8) / 0x100000;
    if (a == 0x34 && c == 0x39 && b > 0x22 && b <= 0x28) {
        return 1;
    }
    if (a == 0x39 && c == 0x34 && b > 0x22 && b <= 0x28) {
        return 1;
    }
    return 0;
}
