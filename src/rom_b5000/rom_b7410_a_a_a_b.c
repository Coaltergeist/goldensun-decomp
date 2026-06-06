/* Cluster Func_80b7410..Func_80b7410 extracted from goldensun/asm/rom_b5000/rom_b7410_a_a_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a_a_a_a.o and asm/rom_b5000/rom_b7410_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern signed char Lc2a62[] __asm__(".Lc2a62");

void Func_80b7410(int idx, int *out1, int *out2)
{
    *out1 = Lc2a62[idx * 2];
    *out2 = Lc2a62[idx * 2 + 1];
}
