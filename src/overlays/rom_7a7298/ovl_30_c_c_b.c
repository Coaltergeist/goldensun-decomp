/* Cluster OvlFunc_921_200821c..OvlFunc_921_2008254 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8091750(void);

void OvlFunc_921_200821c(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __Func_8092b94(0x1570);
    } else {
        __Func_8092b94(0x1529);
    }
    __ActorMessage(8, 0);
    __Func_8091750();
}
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);
extern void __Func_8091750(void);

void OvlFunc_921_2008254(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __Func_8092b94(0x1571);
    } else {
        __Func_8092b94(0x152f);
    }
    __ActorMessage(8, 0);
    __Func_8091750();
}
