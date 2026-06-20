/* Cluster Func_80ae8dc..Func_80ae8dc extracted from goldensun/asm/rom_a1000/rom_ae88c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_ae88c_a.o and asm/rom_a1000/rom_ae88c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern void Func_8003f3c(unsigned short);

void Func_80ae8dc(void)
{
    unsigned char *r5;
    r5 = *(unsigned char **)iwram_3001f2c;
    Func_8003f3c(*(unsigned short *)(r5 + 0x392));
    Func_8003f3c(*(unsigned short *)(r5 + 0xe5 * 4));
}
