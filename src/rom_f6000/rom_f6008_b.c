/* Cluster Func_80f6008..Func_80f6008 extracted from goldensun/asm/rom_f6000/rom_f6008.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f6000/rom_f6008_a.o and asm/rom_f6000/rom_f6008_c.o in
 * goldensun/stage1.ld.
 */
extern volatile unsigned short iwram_disp;
extern unsigned int ewram_2000240[];
extern unsigned int iwram_3001cb4;
extern void _Func_80f9080(int);
extern void Func_80f7460(void);

int Func_80f6008(void)
{
    *(volatile unsigned short *)0x04000000 = 0x40;
    iwram_3001cb4 = ewram_2000240[1];
    _Func_80f9080(9);
    Func_80f7460();
    return 0;
}
