/* Cluster OvlFunc_899_200825c..OvlFunc_899_200825c extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __Func_8078500(void);
extern void __Func_8092548(int a, int b);
extern void __CutsceneWait(int a);
extern void __Func_8092b94(int a);
extern void __ActorMessage(int a, int b);
extern void __Func_808f1c0(int a, int b);
extern void __Func_8091a58(int a, int b);
extern void __Func_8091750(void);

void OvlFunc_899_200825c(void) {
    __CutsceneStart();
    if (__Func_8078500() == 0) {
        __Func_8092548(0x12, 4);
        __CutsceneWait(0x14);
        __Func_8092b94(0x1384);
        __ActorMessage(0x12, 0);
    } else {
        __Func_808f1c0(0xe7, 3);
        __Func_8091a58(0xe7, 0);
    }
    __Func_8091750();
}
