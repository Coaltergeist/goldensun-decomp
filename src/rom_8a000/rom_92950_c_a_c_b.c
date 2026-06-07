/* Cluster Func_8093040..Func_8093040 extracted from goldensun/asm/rom_8a000/rom_92950_c_a_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_92950_c_a_c_a.o and asm/rom_8a000/rom_92950_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_8092f84(unsigned int actor);
extern void Func_809163c(unsigned int param_1);

void Func_8093040(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    Func_8092f84(arg0);
    Func_809163c(arg2);
}
