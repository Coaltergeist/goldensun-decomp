/* Cluster OvlFunc_921_2008608..OvlFunc_921_2008608 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_c_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_c_a_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int id);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_921_2008608(void) {
    __CutsceneStart();
    if (__GetFlag(0x82b)) {
        __MessageID(0x156f);
    } else if (__GetFlag(0x82c)) {
        __MessageID(0x153b);
    } else {
        __MessageID(0x1533);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}
