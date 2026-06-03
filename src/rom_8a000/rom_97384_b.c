/* Cluster Func_809748c..Func_809748c extracted from goldensun/asm/rom_8a000/rom_97384.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97384_a.o and asm/rom_8a000/rom_97384_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;
extern int Func_8091200(unsigned int a, unsigned int b);
extern void Func_8091254(unsigned int a);

void Func_809748c(void) {
    unsigned int base;
    unsigned int p;

    base = iwram_3001ebc;
    p = base + 0x236;
    Func_8091200(p, 2);
    if (*(short *)((char *)base + 0xcb8) != 0) {
        Func_8091200(0x10001, 1);
    } else {
        Func_8091200(p, 1);
    }
    Func_8091254(8);
}
