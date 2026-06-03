/* Cluster OvlFunc_968_200999c..OvlFunc_968_200999c extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a_c_a.o and asm/overlays/rom_7f2f14/ovl_30_c_a_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern unsigned char *__Func_8092054(int idx);
extern void __Func_8012078(int a, unsigned int b, unsigned int c, int d);

void OvlFunc_968_200999c(void) {
    unsigned int i;
    unsigned char *p;

    i = 0;
    do {
        p = __Func_8092054(i + 11);
        i++;
        __Func_8012078(0, *(unsigned int *)(p + 8), *(unsigned int *)(p + 0x10), 0x2d);
    } while (i <= 1);
}
