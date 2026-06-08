/* Cluster OvlFunc_953_2009c48..OvlFunc_953_2009c48 extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
extern int __ActorMessage();
extern int __CutsceneWait();

void OvlFunc_953_2009c48(void) {
    int x;
    __ActorMessage(x, 0);
    __CutsceneWait(0xa);
}
