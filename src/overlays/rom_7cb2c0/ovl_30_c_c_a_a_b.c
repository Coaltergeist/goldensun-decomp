/* Cluster OvlFunc_945_20088a8..OvlFunc_945_20088a8 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __Func_8093054(int, int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_945_20088a8(void) {
    __CutsceneStart();
    if (__GetFlag(0x925)) {
        __MessageID(0x1e19);
        __Func_8093054(0xa, 0);
    } else {
        __MessageID(0x1d50);
        __ActorMessage(0xa, 0);
    }
    __CutsceneEnd();
}
