/* Cluster Func_8011be0..Func_8011be0 extracted from goldensun/asm/rom_9000/rom_11568_c_c_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_c_c_c_c_a.o and asm/rom_9000/rom_11568_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_80041d8(void *task, int priority);
extern void Func_8011bf4(void);

void Func_8011be0(void) {
    Func_80041d8(Func_8011bf4, 200 << 4);
}
