/* Cluster OvlFunc_888_200b4f0..OvlFunc_888_200b4f0 extracted from goldensun/asm/overlays/rom_7892c8/ovl_30_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7892c8/ovl_30_c_c_a.o and asm/overlays/rom_7892c8/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7892c8/overlay.ld.
 */
extern int OvlFunc_888_200b2a8(void);
extern void __UI_Sanctum(int);
extern void __CutsceneStart(void);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8091750(void);

void OvlFunc_888_200b4f0(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        __Func_8092b94(0x1823);
        __ActorMessage(8, 0);
        __Func_8091750();
    }
}
