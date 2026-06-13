/* Cluster Func_807a350..Func_807a350 extracted from goldensun/asm/rom_77000/rom_79460_c_c_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_c_a_c_c_c_a.o and asm/rom_77000/rom_79460_c_c_c_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int GetUnit(unsigned int);
extern unsigned int Func_807a2bc(unsigned int, unsigned int, unsigned int);
extern void Func_8079ae8(unsigned int);

unsigned int Func_807a350(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned char *r5;
    unsigned int r6;
    unsigned int r7;
    unsigned int r8;
    unsigned int r10;

    r7 = arg0;
    r6 = arg1;
    r10 = arg2;
    r5 = (unsigned char *)GetUnit(r7);
    r8 = Func_807a2bc(r7, r6, r10);
    if (r8 != 0) {
        unsigned int idx_byte;
        unsigned int idx_word;
        unsigned int mask;

        idx_byte = r6 + 0x11c;
        r5[idx_byte] += 0xff;

        idx_word = (r6 << 2) + 0x108;
        mask = 1 << r10;
        *(unsigned int *)(r5 + idx_word) &= ~mask;

        Func_8079ae8(r7);
    }
    return r8;
}
