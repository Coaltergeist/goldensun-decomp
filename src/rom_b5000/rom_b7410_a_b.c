/* Cluster Func_80b7e04..Func_80b7e04 extracted from goldensun/asm/rom_b5000/rom_b7410_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a_a.o and asm/rom_b5000/rom_b7410_a_c.o in
 * goldensun/stage1.ld.
 */
void Func_80b7e04(unsigned int *p) {
    unsigned int v;
    int i;

    if (p) {
        v = 0;
        p = (unsigned int *)((char *)p + 0x28);
        for (i = 3; i >= 0; i--) {
            unsigned int e;
            e = *p++;
            if (e != 0) {
                *(unsigned int *)((char *)e + 0x10) = v;
            }
        }
    }
}
