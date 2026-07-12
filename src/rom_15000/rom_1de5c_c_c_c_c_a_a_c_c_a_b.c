// fakematch
/* Cluster Func_801fb48..Func_801fb48 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_a_a.o and asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_8017658(int, int, int, int);
extern int Func_8017364(void);
extern void WaitFrames(int);
extern int YesNoMenu(int, int, int, int);
extern void Func_8019a54(void);
extern void _PlaySound(int);
extern int Func_801faa8(void);
extern int Func_801776c(int, int);
extern int _MSG_14;
extern int _MSG_17;

int Func_801fb48(void) {
    int r5;
    int a, b, c;

    a = 8;
    b = 0xc;
    c = 2;
    __asm__ volatile ("" : : "r"(a), "r"(b), "r"(c));
    Func_8017658((int)&_MSG_14, a, b, c);
    while (Func_8017364() == 0) {
        WaitFrames(1);
    }
    if (YesNoMenu(1, 0, 0, 1) != 0) {
        Func_8019a54();
    } else {
        Func_8019a54();
        _PlaySound(0x55);
        r5 = Func_801faa8();
        if (r5 >= 0) {
            Func_801776c((int)&_MSG_17, 1);
        }
    }
    return r5;
}
