/* Cluster Func_80bd7dc..Func_80bd7dc extracted from goldensun/asm/rom_b5000/rom_bbb0c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bbb0c_a_a.o and asm/rom_b5000/rom_bbb0c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e74;

void Func_80bd7dc(int arg)
{
    unsigned char *base;
    base = (unsigned char *)iwram_3001e74;
    if (*(unsigned int *)(base + 0x800) == 0) {
        *(unsigned int *)(base + 0x800) = 1;
        if (arg != 0) {
            *(unsigned int *)(base + 0x820) = arg;
        }
    }
}
