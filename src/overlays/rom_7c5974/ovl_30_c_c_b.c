/* Cluster OvlFunc_940_2008294..OvlFunc_940_2008294 extracted from goldensun/asm/overlays/rom_7c5974/ovl_30_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5974/ovl_30_c_c_a.o and asm/overlays/rom_7c5974/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7c5974/overlay.ld.
 */
extern int __GetFlag(int);
extern void __Func_8092b94(int);
extern void __ActorMessage(int, int);

void OvlFunc_940_2008294(void) {
    if (__GetFlag(0x941)) {
        __Func_8092b94(0x24f6);
        __ActorMessage(0xe, 0);
    } else {
        __Func_8092b94(0x1bde);
        __ActorMessage(0xe, 0);
    }
}
