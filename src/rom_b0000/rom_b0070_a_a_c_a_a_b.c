/* Cluster Func_80b0204..Func_80b0204 extracted from goldensun/asm/rom_b0000/rom_b0070_a_a_c_a_a.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_a_a_c_a_a_a.o and asm/rom_b0000/rom_b0070_a_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern void StopTask(void *task);
extern void _Func_8019a54(void);
extern void Func_8003f3c(unsigned short id);
extern void gfree(int index);
extern void Func_80b00f4(void);

void Func_80b0204(void)
{
    unsigned char *r5 = *(unsigned char **)iwram_3001f2c;

    StopTask(Func_80b00f4);
    _Func_8019a54();
    Func_8003f3c(*(unsigned short *)(r5 + (0xe4 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x392));
    Func_8003f3c(*(unsigned short *)(r5 + (0xe5 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x396));
    Func_8003f3c(*(unsigned short *)(r5 + (0xe6 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x39a));
    gfree(0x37);
}
