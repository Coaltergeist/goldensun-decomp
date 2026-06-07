/* Cluster Func_80a2444..Func_80a2444 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_c_c_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_c_c_a_a.o and asm/rom_a1000/rom_a1814_c_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int gKeyPress;
extern void _Func_80f9080(int);
extern void _Func_8079358(int);
extern void Func_8004278(void *task);

void Func_80a2444(void) {
    if (gKeyPress & 8) {
        _Func_80f9080(0x71);
        _Func_8079358(0xa8 << 1);
        Func_8004278(Func_80a2444);
    }
}
