/* Cluster OvlFunc_941_200934c..OvlFunc_941_200934c extracted from goldensun/asm/overlays/rom_7c5efc/ovl_30_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5efc/ovl_30_c_c_a.o and asm/overlays/rom_7c5efc/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7c5efc/overlay.ld.
 */
extern int __MessageID();
extern int __ShowActorMessage_NoWait();

unsigned int OvlFunc_941_200934c(void) {
    __MessageID(0x255d);
    __ShowActorMessage_NoWait(1, 0);
    return 1;
}
