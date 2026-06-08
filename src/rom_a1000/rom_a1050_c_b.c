/* Cluster Func_80a1114..Func_80a1114 extracted from goldensun/asm/rom_a1000/rom_a1050_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1050_c_a.o and asm/rom_a1000/rom_a1050_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _CloseUIBox(unsigned int x);

void Func_80a1114(unsigned int *arg0) {
    if (arg0[0]) {
        _CloseUIBox(arg0[0]);
        arg0[0] = 0;
    }
}
