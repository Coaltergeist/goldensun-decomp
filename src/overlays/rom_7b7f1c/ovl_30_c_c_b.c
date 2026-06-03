/* Cluster OvlFunc_930_2009090..OvlFunc_930_2009090 extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_c_c_a.o and asm/overlays/rom_7b7f1c/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */
extern unsigned char *__Func_8092054(int idx);
extern void __Func_8092b08(int idx, int val);

void OvlFunc_930_2009090(void) {
    unsigned char *r5;
    unsigned char *p;

    r5 = __Func_8092054(0);
    p = __Func_8092054(0xe);
    if (*(int *)(r5 + 0x10) <= *(int *)(p + 0x10)) {
        __Func_8092b08(0xe, 1);
    }
}
