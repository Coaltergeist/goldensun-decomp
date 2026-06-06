/* Cluster Func_80ceb30..Func_80ceb30 extracted from goldensun/asm/rom_c9000/rom_ceb30.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ceb30_a.o and asm/rom_c9000/rom_ceb30_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80ceb54(void *context, int subanim);

void Func_80ceb30(void *context) {
    Func_80ceb54(context, 0);
}
