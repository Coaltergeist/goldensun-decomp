/* Cluster Func_801ea08..Func_801ea08 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_a_c_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_a_c_c_a.o and asm/rom_15000/rom_1de5c_c_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
char *PrintNum(char *dest, int num, unsigned int param_3);
void UIDrawText(char *param_1, unsigned int param_2, unsigned int param_3, unsigned int param_4);

void Func_801ea08(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
    char buf[16];
    char *pcVar1;

    pcVar1 = PrintNum(buf, arg0, arg1);
    UIDrawText(pcVar1, arg2, arg3, arg4);
}
