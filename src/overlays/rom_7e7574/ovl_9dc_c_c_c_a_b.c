/* Cluster OvlFunc_959_200d470..OvlFunc_959_200d470 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_c_c_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_c_c_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern int __GetFlag(int);
extern void OvlFunc_959_2008ee0(int);

void OvlFunc_959_200d470(void) {
    if (__GetFlag(0x35a)) {
        OvlFunc_959_2008ee0(0);
    }
    if (__GetFlag(0x35b)) {
        OvlFunc_959_2008ee0(1);
    }
    if (__GetFlag(0xd7 << 2)) {
        OvlFunc_959_2008ee0(2);
    }
}
