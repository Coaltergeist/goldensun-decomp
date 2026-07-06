/* Cluster OvlFunc_888_200b2d0..OvlFunc_888_200b2d0 extracted from goldensun/asm/overlays/rom_7892c8/ovl_30_c_c_a_a_c.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7892c8/ovl_30_c_c_a_a_c_a.o and asm/overlays/rom_7892c8/ovl_30_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_7892c8/overlay.ld.
 */
extern int OvlFunc_888_200b2a8(void);
extern void __UI_Sanctum(int a);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_888_200b2d0(void) {
    if (OvlFunc_888_200b2a8() != 0) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x87a)) {
            __MessageID(0x1bfc);
        } else if (__GetFlag(0x815)) {
            __MessageID(0x119d);
        } else {
            __MessageID(0x1035);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}
