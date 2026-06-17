/* Cluster Func_8012330..Func_8012330 extracted from goldensun/asm/rom_9000/rom_1219c_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_1219c_a_c_a.o and asm/rom_9000/rom_1219c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e70[];

void Func_8012330(int arg0, int arg1, int arg2)
{
    unsigned int *r3;
    r3 = *(unsigned int **)iwram_3001e70;
    if (arg0 >= 0)
        r3[1] = arg0;
    if (arg1 >= 0)
        r3[2] = arg1;
    if (arg2 >= 0)
        r3[3] = arg2;
}
