/* Cluster OvlFunc_955_2008950..OvlFunc_955_2008950 extracted from goldensun/asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7ddb88/overlay.ld.
 */
extern void OvlFunc_955_2008714(void);
extern void __StartTask(void (*f)(void), int x);
extern void __Func_8079374(int x);

void OvlFunc_955_2008950(void) {
    int x;
    x = 0xc85;
    __StartTask(OvlFunc_955_2008714, x);
    __Func_8079374(0x82 << 1);
}
