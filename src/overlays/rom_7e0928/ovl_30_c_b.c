/* Cluster OvlFunc_956_2008a20..OvlFunc_956_2008a20 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_c_a.o and asm/overlays/rom_7e0928/ovl_30_c_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 */
extern void __Func_80118c0(unsigned int);
extern void __Func_80118a8(unsigned int);
extern void __PlaySound(unsigned int);

unsigned int OvlFunc_956_2008a20(void) {
    __Func_80118c0(1);
    __Func_80118a8(2);
    __PlaySound(0x90 << 1);
    __PlaySound(0xd9);
    return 0;
}
