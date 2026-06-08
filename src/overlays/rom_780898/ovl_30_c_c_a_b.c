/* Cluster OvlFunc_883_2008adc..OvlFunc_883_2008adc extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_a_a.o and asm/overlays/rom_780898/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8092848(int, int, int);
extern void __Func_8093054(int, int);
extern void __Func_8091750(void);

void OvlFunc_883_2008adc(void) {
    __CutsceneStart();
    if (__GetFlag(0x815)) {
        __Func_8092b94(0x11cc);
        __ActorMessage(0xa, 0);
    } else {
        __Func_8092b94(0xf81);
        __Func_8092848(0xa, 0, 4);
        __Func_8093054(0xa, 0);
    }
    __Func_8091750();
}
