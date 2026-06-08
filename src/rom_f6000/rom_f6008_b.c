/* Cluster Func_80f6008..Func_80f6008 extracted from goldensun/asm/rom_f6000/rom_f6008.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f6000/rom_f6008_a.o and asm/rom_f6000/rom_f6008_c.o in
 * goldensun/stage1.ld.
 */
extern volatile unsigned short iwram_disp;
extern unsigned int gState[];
extern unsigned int gRNGState;
extern void _PlaySound(int);
extern void LuckyWheelsMain(void);

int Func_80f6008(void)
{
    *(volatile unsigned short *)0x04000000 = 0x40;
    gRNGState = gState[1];
    _PlaySound(9);
    LuckyWheelsMain();
    return 0;
}
