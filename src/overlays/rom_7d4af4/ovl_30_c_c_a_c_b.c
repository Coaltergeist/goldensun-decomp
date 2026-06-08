/* Cluster OvlFunc_949_20082d4..OvlFunc_949_20082d4 extracted from goldensun/asm/overlays/rom_7d4af4/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_a.o and asm/overlays/rom_7d4af4/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_7d4af4/overlay.ld.
 */
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_949_20082d4(void) {
    __MessageID(0xe37);
    __ActorMessage(-1, 0);
}
