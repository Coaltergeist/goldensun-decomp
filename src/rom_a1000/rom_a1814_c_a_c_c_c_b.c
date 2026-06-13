/* Cluster Func_80a34c0..Func_80a34c0 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_c_c_c.s.
 *
 * Total .text for this TU = 156 bytes (= 0x9c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_c_c_c_a.o and asm/rom_a1000/rom_a1814_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f2c;
extern void Func_80a195c(void);
extern void Func_80a345c(void);
extern void WaitFrames(unsigned int nframes);
extern void Func_80a1114(unsigned int a, unsigned int b);

void Func_80a34c0(void) {
    unsigned int r5;
    unsigned int r2;
    unsigned int r3;

    r5 = iwram_3001f2c;
    Func_80a195c();
    Func_80a345c();
    WaitFrames(1);
    r2 = 0xbe;
    r2 <<= 1;
    r3 = r5 + r2;
    r2 = *(unsigned int *)r3;
    *(unsigned char *)(r2 + 5) = 0xd;
    Func_80a1114(r5 + 0x10, 1);
    Func_80a1114(r5 + 0x20, 1);
    r3 = 0x86;
    r3 <<= 1;
    Func_80a1114(r5 + r3, 1);
    Func_80a1114(r5 + 0x24, 1);
    Func_80a1114(r5 + 0x28, 1);
    Func_80a1114(r5 + 0x2c, 1);
    Func_80a1114(r5 + 0x30, 1);
    Func_80a1114(r5 + 0x34, 1);
    Func_80a1114(r5 + 0x38, 1);
    Func_80a1114(r5 + 0x3c, 1);
    Func_80a1114(r5 + 0x40, 1);
}
