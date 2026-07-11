/* Cluster OvlFunc_902_20084a0..OvlFunc_902_20084a0 extracted from goldensun/asm/overlays/rom_7987ac/ovl_30_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7987ac/ovl_30_c_c_a_c_c_c_c_a.o and asm/overlays/rom_7987ac/ovl_30_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7987ac/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_902_20084a0(void) {
    __CutsceneStart();
    if (__GetFlag(0x85b) == 0) {
        __MessageID(0x1382);
    } else {
        __MessageID(0x1cf4);
    }
    __ActorMessage(0x12, 0);
    __CutsceneEnd();
}
