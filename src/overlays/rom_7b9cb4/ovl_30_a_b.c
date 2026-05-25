/* Cluster OvlFunc_98..OvlFunc_bc extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern unsigned int __Func_92054(unsigned int arg0);

unsigned int OvlFunc_98(unsigned int arg0) {
    unsigned int r0;
    unsigned int r3;

    r0 = __Func_92054(8);
    r3 = *(unsigned int *)(r0 + 8);
    *(unsigned int *)(arg0 + 8) = r3;
    *(unsigned int *)(arg0 + 0xc) = 0xfff40000;
    r3 = *(unsigned int *)(r0 + 0x10);
    *(unsigned int *)(arg0 + 0x10) = r3;
    return 0;
}
unsigned int OvlFunc_bc(unsigned int arg0) {
    unsigned int *ptr = (unsigned int *)arg0;
    ptr[2] += ptr[9];
    ptr[3] += ptr[10];
    ptr[6] += ptr[11];
    ptr[7] += ptr[11];
    ptr[10] -= ptr[18];
    return 0;
}
