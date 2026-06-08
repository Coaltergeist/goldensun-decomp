/* Cluster OvlFunc_921_20085a4..OvlFunc_921_20085a4 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_921_20085a4(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1575);
    } else {
        __MessageID(0x155b);
    }
    __ActorMessage(0x14, 0);
    __CutsceneEnd();
}
