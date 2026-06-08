/* Cluster OvlFunc_945_2009558..OvlFunc_945_2009558 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8091750(void);

void OvlFunc_945_2009558(void) {
    __CutsceneStart();
    if (__GetFlag(0x933)) {
        __Func_8092b94(0x1ed1);
    } else {
        __Func_8092b94(0x1ed2);
    }
    __ActorMessage(0x19, 0);
    __Func_8091750();
}
