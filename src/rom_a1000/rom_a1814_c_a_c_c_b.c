/* Cluster Func_80a345c..Func_80a345c extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_c_c_a.o and asm/rom_a1000/rom_a1814_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f2c;

void Func_80a345c(void) {
    unsigned int *p;
    unsigned char v0;
    int i;

    p = (unsigned int *)((char *)iwram_3001f2c + 0x48);
    v0 = 0xd;
    for (i = 0x1f; i >= 0; i--) {
        unsigned int e;
        e = *p++;
        if (e != 0) {
            *(unsigned char *)((char *)e + 5) = v0;
        }
    }
}
