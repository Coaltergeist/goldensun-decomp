/* Cluster OvlFunc_921_2008550..OvlFunc_921_2008550 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_a_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern int __CutsceneStart(void);
extern int __GetFlag(int);
extern int __MessageID(int);
extern int __ActorMessage(int, int);
extern int __Func_8093054(int, int);
extern int __SetFlag(int);
extern int __CutsceneEnd(void);

void OvlFunc_921_2008550(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1574);
        __ActorMessage(0x14, 0);
    } else {
        __MessageID(0x1557);
        __Func_8093054(0x14, 0);
        __SetFlag(0x82a);
        __SetFlag(0x82c);
    }
    __CutsceneEnd();
}
