/* Cluster OvlFunc_956_200a2c4..OvlFunc_956_200a2f4 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7e0928/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 * Reconciled conflicting decls of __Func_808ba1c: kept `extern int __Func_808ba1c(void);`, dropped `extern unsigned int __Func_808ba1c(void);`.
 * Reconciled conflicting decls of __Func_800c300: kept `extern void __Func_800c300(int a, int b);`, dropped `extern void __Func_800c300(unsigned int arg0, unsigned int arg1);`.
 * Reconciled conflicting decls of __Func_800d14c: kept `extern void __Func_800d14c(int a, int b, int c, int d);`, dropped `extern void __Func_800d14c(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);`.
 */
extern int __Func_808ba1c(void);
extern void __Func_800c4ac(void);
extern void __Func_800c300(int a, int b);
extern void __Func_800d14c(int a, int b, int c, int d);
extern void __Func_800ca6c(unsigned int arg0);

void OvlFunc_956_200a2c4(int arg0, int arg1, int arg2) {
    int r5;
    r5 = __Func_808ba1c();
    if (r5 != 0) {
        __Func_800c4ac();
        __Func_800c300(r5, 5);
        __Func_800d14c(r5, arg1 << 16, *(int *)((char *)r5 + 0xc), arg2 << 16);
    }
}
void OvlFunc_956_200a2f4(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int r5;

    r5 = __Func_808ba1c();
    if (r5 != 0) {
        __Func_800c4ac();
        __Func_800c300(r5, 5);
        __Func_800d14c(r5, arg1 << 16, *(unsigned int *)((char *)r5 + 0xc), arg2 << 16);
        __Func_800ca6c(r5);
        __Func_800c300(r5, 1);
    }
}
