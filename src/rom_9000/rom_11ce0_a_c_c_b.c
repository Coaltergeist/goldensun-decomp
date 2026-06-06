/* Cluster Func_8011f14..Func_8011f14 extracted from goldensun/asm/rom_9000/rom_11ce0_a_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11ce0_a_c_c_a.o and asm/rom_9000/rom_11ce0_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char L133fc[] __asm__(".L133fc");

int Func_8011f14(int param_1, int param_2, int param_3)
{
    return *(signed char *)(param_1 + L133fc[param_2 + (param_3 << 4)]) << 19;
}
