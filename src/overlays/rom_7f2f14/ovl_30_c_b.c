/* Cluster OvlFunc_968_200a2a4..OvlFunc_968_200a2a4 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a.o and asm/overlays/rom_7f2f14/ovl_30_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern unsigned int __Func_8092054(unsigned int);

unsigned int OvlFunc_968_200a2a4(unsigned int arg0) {
    unsigned int v0;
    unsigned int v3;
    unsigned int v2;

    v0 = __Func_8092054(*(short *)((char *)arg0 + 0x64));
    v3 = *(unsigned int *)((char *)v0 + 0xc);
    v2 = 0x80;
    v2 <<= 13;
    v3 += v2;
    *(unsigned int *)((char *)arg0 + 0xc) = v3;
    return 0;
}
