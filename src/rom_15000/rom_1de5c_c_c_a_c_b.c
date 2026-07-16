/* Cluster Func_801e9d4..Func_801e9d4 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_a_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_a_c_a.o and asm/rom_15000/rom_1de5c_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
void *PrintNum(char *dest, int num, unsigned int param_3);
void Func_801e8b0(void *dest, unsigned int arg2, unsigned int arg3, unsigned int arg4);

void Func_801e9d4(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
    char buffer[16];
    void *pDest;

    pDest = PrintNum(buffer, arg0, arg1);
    Func_801e8b0(pDest, arg2, arg3, arg4);
}
