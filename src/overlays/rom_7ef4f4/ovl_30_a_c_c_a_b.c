/* Cluster OvlFunc_965_200910c..OvlFunc_965_200910c extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_c_c_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_c_c_a_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_c_c_a_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
extern void OvlFunc_965_20090f4(void);

void OvlFunc_965_200910c(void) {
    int *r5;
    int *r0v;
    int r3;

    r5 = (int *)__MapActor_GetActor(9);
    r0v = (int *)__MapActor_GetActor(0);
    r3 = *(int *)((char *)r0v + 8);
    if ((r3 >> 20) < 0xd) {
        r5 = (int *)__MapActor_GetActor(8);
        r3 = *(int *)((char *)r5 + 8);
        if ((r3 >> 20) == 6) goto CONT;
        goto LAB;
    } else {
        r3 = *(int *)((char *)r5 + 8);
        if ((r3 >> 20) != 0x12) goto LAB;
    }
CONT:
    r3 = *(int *)((char *)r5 + 0x10);
    if ((r3 >> 20) == 0x14) {
        OvlFunc_965_20090f4();
        return;
    }
LAB:
    __Func_8093e28();
}
