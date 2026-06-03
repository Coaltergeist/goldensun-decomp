/* Cluster Func_801eb64..Func_801eb64 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_a.o and asm/rom_15000/rom_1de5c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_801bc34(unsigned int param_1, unsigned int param_2);
extern int Func_801eadc(unsigned int a, unsigned int b, unsigned int c, unsigned int d, unsigned int e);

unsigned int Func_801eb64(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4) {
    int ret;

    ret = Func_801bc34(arg0, arg1);
    if (ret < 0)
        return 0;
    return Func_801eadc(ret, 0x80 << 23, arg2, arg3, arg4);
}
