/* Cluster OvlFunc_888_200b45c..OvlFunc_888_200b4a8 extracted from goldensun/asm/overlays/rom_7892c8/ovl_30_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7892c8/ovl_30_c_c_a_a.o and asm/overlays/rom_7892c8/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7892c8/overlay.ld.
 */
extern int OvlFunc_888_200b2a8(void);
extern void __UI_Sanctum(int);
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_888_200b45c(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x845)) {
            __MessageID(0x171c);
        } else {
            __MessageID(0x1408);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}
void OvlFunc_888_200b4a8(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        __MessageID(0x190a);
        if (__GetFlag(0x909)) {
            __MessageID(0x1951);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}
