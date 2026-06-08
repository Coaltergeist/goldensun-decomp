/* Cluster OvlFunc_959_200c928..OvlFunc_959_200c964 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_c_a.s.
 *
 * Total .text for this TU = 120 bytes (= 0x78).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_c_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_c_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);

void OvlFunc_959_200c928(void) {
    if (__GetFlag(0x941)) {
        __Func_8092b94(0x2568);
        __ActorMessage(0x19, 0);
    } else {
        __Func_8092b94(0x2458);
        __ActorMessage(0x19, 0);
    }
}
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);

void OvlFunc_959_200c964(void) {
    if (__GetFlag(0x941)) {
        __Func_8092b94(0x2569);
        __ActorMessage(0x18, 0);
    } else {
        __Func_8092b94(0x244e);
        __ActorMessage(0x18, 0);
    }
}
