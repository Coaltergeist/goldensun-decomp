/* Cluster OvlFunc_898_2008464..OvlFunc_898_2008464 extracted from goldensun/asm/overlays/rom_793768/ovl_314_c_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_c_c_a_a.o and asm/overlays/rom_793768/ovl_314_c_c_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern void __Func_80bf65c(void);
extern unsigned char *__Func_8077394(int);
extern void __Func_807a498(int, int, int, int);
extern void __Func_80f9080(int);
extern void __Func_8077428(int);

unsigned int OvlFunc_898_2008464(void) {
    unsigned char *p;
    __Func_80bf65c();
    p = __Func_8077394(2);
    if (*(unsigned int *)(p + 0xf8) & 1) {
        __Func_807a498(2, 0, 0, 0);
        __Func_80f9080(0x7e);
        __Func_8077428(0);
        __Func_8077428(2);
    }
}
