/* Cluster OvlFunc_917_2008248..OvlFunc_917_2008284 extracted from goldensun/asm/overlays/rom_7a4370/ovl_30_c_c.s.
 *
 * Total .text for this TU = 120 bytes (= 0x78).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a4370/ovl_30_c_c_a.o and asm/overlays/rom_7a4370/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7a4370/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_917_2008248(void) {
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        __MessageID(0x151f);
    } else {
        __MessageID(0x14c8);
    }
    __ActorMessage(9, 0);
    __CutsceneEnd();
}
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_917_2008284(void) {
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        __MessageID(0x151e);
    } else {
        __MessageID(0x14ec);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}
