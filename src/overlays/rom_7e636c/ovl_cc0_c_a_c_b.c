/* Cluster OvlFunc_958_2009040..OvlFunc_958_2009040 extracted from goldensun/asm/overlays/rom_7e636c/ovl_cc0_c_a_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e636c/ovl_cc0_c_a_c_a.o and asm/overlays/rom_7e636c/ovl_cc0_c_a_c_c.o in
 * goldensun/overlays/rom_7e636c/overlay.ld.
 */
extern int __GetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_958_2009040(void) {
    if (__GetFlag(0x95 << 4) && !__GetFlag(0x96f)) {
        __MessageID(0x23d5);
    } else {
        __MessageID(0x23d2);
    }
    __ActorMessage(0x9, 0);
}
