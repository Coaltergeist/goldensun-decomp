/* Cluster Func_8005e88..Func_8005e88 extracted from goldensun/asm/rom_c0/rom_5cf8_a_a_a_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_5cf8_a_a_a_c_a.o and asm/rom_c0/rom_5cf8_a_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char ewram_2002240[];

void Func_8005e88(void)
{
    *(volatile unsigned short *)0x4000208 = 0;
    *(volatile unsigned short *)0x4000200 &= 0xff3f;
    *(volatile unsigned short *)0x4000208 = 1;
    *(volatile unsigned short *)0x4000128 = 0x2003;
    *(volatile unsigned int *)0x400010c = 0xc963;
    *(volatile unsigned short *)0x4000202 = 0xc0;
    ewram_2002240[8] = 0;
}
