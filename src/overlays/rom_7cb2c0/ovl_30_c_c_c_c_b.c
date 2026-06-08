/* Cluster OvlFunc_945_2009690..OvlFunc_945_2009690 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int id);
extern void __Func_8092b94(int id);
extern void __ActorMessage(int a, int b);
extern void __Func_8091750(void);

void OvlFunc_945_2009690(void) {
    __CutsceneStart();
    if (__GetFlag(0x92f)) {
        __Func_8092b94(0x1ede);
    } else {
        __Func_8092b94(0x1edf);
    }
    __ActorMessage(0x15, 0);
    __Func_8091750();
}
