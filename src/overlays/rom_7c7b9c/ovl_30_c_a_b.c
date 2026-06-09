/* Cluster OvlFunc_943_200b9ec..OvlFunc_943_200b9ec extracted from goldensun/asm/overlays/rom_7c7b9c/ovl_30_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c7b9c/ovl_30_c_a_a.o and asm/overlays/rom_7c7b9c/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_7c7b9c/overlay.ld.
 */
extern void __ActorMessage();
extern void __CutsceneWait(int a);

void OvlFunc_943_200b9ec(void) {
    int x;
    __ActorMessage(x, 0);
    __CutsceneWait(0xa);
}
