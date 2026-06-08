/* Cluster OvlFunc_964_2009970..OvlFunc_964_2009970 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int a, int b);
extern int __GetFlag(int id);
extern void __Func_801776c(int id, int b);
extern void __Func_8091750(void);

void OvlFunc_964_2009970(void) {
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    if (__GetFlag(0x982) != 0 || __GetFlag(0x983) != 0) {
        __Func_801776c(0x268a, 1);
    } else {
        __Func_801776c(0x2689, 1);
    }
    __Func_8091750();
}
