/* Cluster OvlFunc_891_2009be8..OvlFunc_891_2009be8 extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_c_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 */
extern void *__Func_8092054(void);

unsigned int OvlFunc_891_2009be8(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    void *p;
    p = __Func_8092054();
    if (p == (void *)0)
        return 0;
    if ((*(int *)((char *)p + 8) >> 20) != (int)arg1)
        return 0;
    if ((*(int *)((char *)p + 0x10) >> 20) != (int)arg2)
        return 0;
    return 1;
}
