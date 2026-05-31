/* Cluster Func_80b6cd0..Func_80b6cd0 extracted from goldensun/asm/rom_b5000/rom_b5a0c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b5a0c_c_c_a.o and asm/rom_b5000/rom_b5a0c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_80b7dd0(void);

unsigned int Func_80b6cd0(void) {
    unsigned int r0;
    unsigned int r1;

    r0 = Func_80b7dd0();
    r1 = *(unsigned int *)(r0 + 0x14);
    return r1;
}
