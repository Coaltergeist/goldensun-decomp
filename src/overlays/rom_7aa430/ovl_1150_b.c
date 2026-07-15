/* Cluster OvlFunc_923_2009150..OvlFunc_923_2009150 extracted from goldensun/asm/overlays/rom_7aa430/ovl_1150.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7aa430/ovl_1150_a.o and asm/overlays/rom_7aa430/ovl_1150_c.o in
 * goldensun/overlays/rom_7aa430/overlay.ld.
 */
extern void __ClearFlag(int);
extern void __MapActor_SetBehavior(int, void *);
extern unsigned char gScript_923__0200a820[];

void OvlFunc_923_2009150(void) {
    __ClearFlag(0x205);
    __MapActor_SetBehavior(8, gScript_923__0200a820);
}
