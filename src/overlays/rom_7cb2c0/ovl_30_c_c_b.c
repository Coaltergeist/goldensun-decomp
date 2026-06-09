/* Cluster OvlFunc_945_2009420..OvlFunc_945_2009420 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int id);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_945_2009420(void) {
    __CutsceneStart();
    if (__GetFlag(0x92f)) {
        __MessageID(0x1ed1);
    } else {
        __MessageID(0x1ed2);
    }
    __ActorMessage(0x15, 0);
    __CutsceneEnd();
}
