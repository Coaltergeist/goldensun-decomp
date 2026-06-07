/* Cluster Func_8011bc8..Func_8011bc8 extracted from goldensun/asm/rom_9000/rom_11568_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_c_c_c_c_a_a.o and asm/rom_9000/rom_11568_c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void StopTask();
extern void Func_8002dd8();
extern void Func_8011bf4();

void Func_8011bc8(void) {
    StopTask(Func_8011bf4);
    Func_8002dd8(0x1c);
}
