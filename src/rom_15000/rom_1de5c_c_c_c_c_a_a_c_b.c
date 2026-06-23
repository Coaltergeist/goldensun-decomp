/* Cluster Func_801fa3c..Func_801fa3c extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_a.o and asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_80056cc(void);
extern int Func_801776c(int, int);
extern int SomethingSaveHeader(unsigned int, int);
extern void Func_8005cf8(void);
extern int _MSG_0a;
extern int _MSG_0b;
extern unsigned char ewram_2000000[];

unsigned int Func_801fa3c(unsigned int arg0) {
    int r6;
    int r8;
    unsigned char *r5;

    r8 = 0;
    r6 = Func_80056cc();
    if (r6 != 0) {
        Func_801776c((int)&_MSG_0a, 1);
        r8 = -9;
    } else {
        r5 = ewram_2000000;
        r6 = SomethingSaveHeader(arg0, (int)r5);
        r5 += 0x1000;
        r6 |= SomethingSaveHeader(arg0 + 3, (int)r5);
        if (r6 != 0) {
            Func_801776c((int)&_MSG_0b, 1);
            r8 = -3;
        }
    }
    Func_8005cf8();
    return (unsigned int)r8;
}
