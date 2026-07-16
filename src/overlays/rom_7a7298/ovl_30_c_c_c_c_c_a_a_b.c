/* Cluster OvlFunc_921_20096ac..OvlFunc_921_20096ac extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_a_a_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern void __MapActor_SetBehavior(int, void *);
extern void __ActorMessage(int, int);
extern unsigned char gScript_921__0200a5ec[];

void OvlFunc_921_20096ac(void) {
    __MapActor_SetBehavior(9, gScript_921__0200a5ec);
    __ActorMessage(9, 0);
}
