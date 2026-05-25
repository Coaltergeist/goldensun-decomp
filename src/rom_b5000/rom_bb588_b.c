/* Cluster Func_80bb8d8..Func_80bb8d8 extracted from goldensun/asm/rom_b5000/rom_bb588.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bb588_a.o and asm/rom_b5000/rom_bb588_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ee4;

void Func_80bb8d8(void) {
    unsigned int *ptr = (unsigned int *)iwram_3001ee4;
    ptr[2] = 1;
}
