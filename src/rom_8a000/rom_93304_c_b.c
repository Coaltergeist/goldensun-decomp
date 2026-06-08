/* Cluster Func_8094354..Func_8094354 extracted from goldensun/asm/rom_8a000/rom_93304_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_c_a.o and asm/rom_8a000/rom_93304_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_942e0(unsigned int anim);
extern void _SetFlag(int x);

void Func_8094354(void) {
    Func_942e0(0x1a);
    _SetFlag(0x90 << 1);
}
