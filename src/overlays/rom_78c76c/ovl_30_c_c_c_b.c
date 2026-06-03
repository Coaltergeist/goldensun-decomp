/* Cluster OvlFunc_891_2009af4..OvlFunc_891_2009b1c extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 * Reconciled conflicting decls of __Func_8092054: kept `extern unsigned char *__Func_8092054(int id);`, dropped `extern unsigned char *__Func_8092054(int);`.
 * Reconciled conflicting decls of OvlFunc_891_2009b44: kept `extern void OvlFunc_891_2009b44(int a, int b, int c, int d, int e);`, dropped `extern void OvlFunc_891_2009b44(int, int, int, int, int);`.
 */
extern unsigned char *__Func_8092054(int id);
extern void OvlFunc_891_2009b44(int a, int b, int c, int d, int e);

void OvlFunc_891_2009af4(void) {
    unsigned char *p;
    int v;

    p = __Func_8092054(0xc);
    if (p != (unsigned char *)0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xc, 0x16, v + 1, 0x16, v);
    }
}
void OvlFunc_891_2009b1c(void) {
    unsigned char *p;
    int v;

    p = __Func_8092054(0xc);
    if (p != 0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xc, 0x16, v - 1, 0x16, v);
    }
}
