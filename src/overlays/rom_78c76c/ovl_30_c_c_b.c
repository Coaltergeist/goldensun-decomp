/* Cluster OvlFunc_891_2009a84..OvlFunc_891_2009aac extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 * Reconciled conflicting decls of __Func_8092054: kept `extern int __Func_8092054(int id);`, dropped `extern void *__Func_8092054(int);`.
 */
extern int __Func_8092054(int id);
extern void OvlFunc_891_2009b44(int a, int b, int c, int d, int e);

void OvlFunc_891_2009a84(void) {
    int res;
    int v;

    res = __Func_8092054(0xa);
    if (res != 0) {
        v = *(int *)((char *)res + 0x10) >> 20;
        OvlFunc_891_2009b44(0xa, 0xd, v + 1, 0xd, v);
    }
}
void OvlFunc_891_2009aac(void) {
    unsigned char *p;
    int v;

    p = (unsigned char *)__Func_8092054(0xa);
    if (p != (unsigned char *)0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xa, 0xd, v - 1, 0xd, v);
    }
}
