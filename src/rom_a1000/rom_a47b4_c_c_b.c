/* Cluster Func_80a4e68..Func_80a4e68 extracted from goldensun/asm/rom_a1000/rom_a47b4_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a47b4_c_c_a.o and asm/rom_a1000/rom_a47b4_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern void Func_80a23f4(unsigned int, int, int, int, int);

void Func_80a4e68(void)
{
    unsigned int r3;
    unsigned int r2;
    unsigned int r0;
    r3 = *(unsigned int *)iwram_3001f2c;
    r2 = 0x86;
    r2 = r2 << 1;
    r3 = r3 + r2;
    r0 = *(unsigned int *)r3;
    Func_80a23f4(r0, 0xd, 0, 0x11, 5);
}
