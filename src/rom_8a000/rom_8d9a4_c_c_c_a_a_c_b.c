/* Cluster Func_8091200..Func_8091200 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c_c_a_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_c_a_a_c_a.o and asm/rom_8a000/rom_8d9a4_c_c_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ed0[];
extern void Func_8090a5c(unsigned int, unsigned int, unsigned int, unsigned int);

void Func_8091200(unsigned int arg0, unsigned int arg1) {
    unsigned int r4;
    unsigned int r1;
    unsigned int r3;

    r4 = arg1;
    r1 = *(unsigned int *)iwram_3001ed0;
    if (r1 != 0) {
        r3 = 0xe0;
        r3 = r3 << 4;
        Func_8090a5c(arg0, r1, r1 + r3, r4);
    }
}
