/* Cluster InitMap..InitMap extracted from goldensun/asm/rom_8a000/rom_8ba38_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ba38_c_a.o and asm/rom_8a000/rom_8ba38_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int __start_overlay[];

void InitMap(void) {
    extern void _call_via_r0(void (*)(void));
    _call_via_r0((void (*)(void))__start_overlay[1]);
}
