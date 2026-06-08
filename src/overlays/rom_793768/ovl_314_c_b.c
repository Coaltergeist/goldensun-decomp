/* Cluster OvlFunc_898_2008450..OvlFunc_898_2008450 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_a.o and asm/overlays/rom_793768/ovl_314_c_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned int __GetUnit(unsigned int);

unsigned int OvlFunc_898_2008450(void) {
    unsigned int r0;
    unsigned int r3;
    r0 = __GetUnit(2);
    r3 = 0x8c;
    r3 = r3 << 1;
    r0 = r0 + r3;
    r0 = *(unsigned char *)r0;
    return r0;
}
