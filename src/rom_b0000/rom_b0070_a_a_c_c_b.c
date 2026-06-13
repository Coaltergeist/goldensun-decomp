/* Cluster Func_80b11a4..Func_80b11a4 extracted from goldensun/asm/rom_b0000/rom_b0070_a_a_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_a_a_c_c_a.o and asm/rom_b0000/rom_b0070_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _Func_8016498(void);
extern void _Func_801e7c0(unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80b11a4(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    r6 = arg1;
    if (r5 != 0) {
        _Func_8016498();
        _Func_801e7c0(r6, r5, 0, 0);
    }
}
