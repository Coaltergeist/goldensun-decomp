/* Cluster Func_801e9a0..Func_801e9a0 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_a_a.o and asm/rom_15000/rom_1de5c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
unsigned char *PrintNum(unsigned char *dest, unsigned int num, unsigned int param_3);
void Func_801e858(unsigned char *dest, unsigned int arg2, unsigned int arg3, unsigned int arg4);

void Func_801e9a0(unsigned int num, unsigned int param_3, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
    unsigned char buf[16];
    unsigned char *ret;

    ret = PrintNum(buf, num, param_3);
    Func_801e858(ret, arg2, arg3, arg4);
}
