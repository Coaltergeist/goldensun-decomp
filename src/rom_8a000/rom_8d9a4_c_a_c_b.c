/* Cluster Func_808ece0..Func_808ece0 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_a_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a_c_a.o and asm/rom_8a000/rom_8d9a4_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_808ec14(unsigned int param_1);
extern void _Func_800c300(int a, int b);
extern void _Func_80f9080(int a);
extern void Func_80030f8(unsigned int nframes);
extern unsigned int iwram_3001ebc;

void Func_808ece0(unsigned int param_1) {
    int idx;
    unsigned char *base;
    unsigned int val;

    idx = Func_808ec14(param_1);
    if (idx != -1) {
        base = (unsigned char *)iwram_3001ebc;
        val = *(unsigned int *)(base + (idx << 3) + 0x11c);
        if (val != 0) {
            _Func_800c300(val, 4);
        }
        _Func_80f9080(0x7c);
        Func_80030f8(0xc);
    }
}
