/* Cluster Func_8028edc..Func_8028edc extracted from goldensun/asm/rom_15000/rom_23178_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_23178_a_a.o and asm/rom_15000/rom_23178_a_c.o in
 * goldensun/stage1.ld.
 */
extern int StartTask(void *task, int priority);
extern void Func_8028f98(void);

void Func_8028edc(void) {
    StartTask(Func_8028f98, 0xc8 << 4);
}
