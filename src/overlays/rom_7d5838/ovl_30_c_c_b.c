/* Cluster OvlFunc_950_200885c..OvlFunc_950_200885c extracted from goldensun/asm/overlays/rom_7d5838/ovl_30_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d5838/ovl_30_c_c_a.o and asm/overlays/rom_7d5838/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7d5838/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8091750(void);

void OvlFunc_950_200885c(void) {
    __CutsceneStart();
    if (__GetFlag(0x8be) == 0) {
        __Func_8092b94(0x23b3);
    } else {
        __Func_8092b94(0x23b4);
    }
    __ActorMessage(0x19, 0);
    __Func_8091750();
}
