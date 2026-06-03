/* Cluster Func_8016594..Func_8016594 extracted from goldensun/asm/rom_15000/rom_15e8c_a_c_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a_c_c_a.o and asm/rom_15000/rom_15e8c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int iwram_3001e8c;
extern void Func_8015ec0(void);
extern void Func_8003f3c(unsigned int arg0);

void Func_8016594(unsigned char *arg0) {
    Func_8015ec0();
    if (arg0[4] != 0) {
        Func_8003f3c(arg0[0xe]);
        if (arg0[4] == 2) {
            unsigned char *base = *(unsigned char **)&iwram_3001e8c;
            unsigned int idx = ((arg0[0x19] >> 4) << 1) + 0x12d0;
            *(unsigned short *)(base + idx) = 0x3e7;
        }
    }
    arg0[5] = 0;
}
