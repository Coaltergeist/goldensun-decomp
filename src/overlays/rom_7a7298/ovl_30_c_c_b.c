/* Cluster OvlFunc_921_200821c..OvlFunc_921_2008254 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_921_200821c(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1570);
    } else {
        __MessageID(0x1529);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_921_2008254(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1571);
    } else {
        __MessageID(0x152f);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}
