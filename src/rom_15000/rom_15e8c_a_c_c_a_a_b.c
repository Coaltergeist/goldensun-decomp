/* Cluster Func_8016498..Func_8016498 extracted from goldensun/asm/rom_15000/rom_15e8c_a_c_c_a_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a_c_c_a_a_a.o and asm/rom_15000/rom_15e8c_a_c_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_80170f8(int a, int b, int c, int d);

void Func_8016498(unsigned char *p)
{
    Func_80170f8(*(unsigned short *)(p + 0xc), *(unsigned short *)(p + 0xe),
                 *(unsigned short *)(p + 8), *(unsigned short *)(p + 0xa));
}
