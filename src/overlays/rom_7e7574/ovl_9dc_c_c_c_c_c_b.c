/* Cluster OvlFunc_959_200d520..OvlFunc_959_200d520 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_c_c_c_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern void OvlFunc_959_2008c90(int);

void OvlFunc_959_200d520(void) {
    if (__GetFlag(0xd4 << 2)) {
        OvlFunc_959_2008c90(0);
    }
    if (__GetFlag(0x351)) {
        OvlFunc_959_2008c90(1);
    }
    if (__GetFlag(0x352)) {
        OvlFunc_959_2008c90(2);
    }
    if (__GetFlag(0x353)) {
        OvlFunc_959_2008c90(3);
    }
    if (__GetFlag(0xd5 << 2)) {
        OvlFunc_959_2008c90(4);
    }
}
