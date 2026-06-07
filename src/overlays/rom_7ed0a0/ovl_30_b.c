/* Cluster OvlFunc_964_2009a98..OvlFunc_964_2009a98 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a.o and asm/overlays/rom_7ed0a0/ovl_30_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern unsigned int __MapActor_GetActor(short arg0);

unsigned int OvlFunc_964_2009a98(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;
    unsigned int r2;
    unsigned int r0;

    r5 = arg0;
    r3 = r5;
    r3 += 0x64;
    r2 = 0;
    r0 = __MapActor_GetActor(*(short *)((char *)r3 + r2));
    r2 = 0x80;
    r3 = *(unsigned int *)((char *)r0 + 0xc);
    r2 <<= 13;
    r3 += r2;
    *(unsigned int *)((char *)r5 + 0xc) = r3;
    return 0;
}
