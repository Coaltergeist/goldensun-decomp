// fakematch
/* Cluster Func_801fc84..Func_801fc84 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_c.s.
 *
 * Total .text for this TU = 176 bytes (= 0xb0).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_c_a.o and asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_80056cc(void);
extern void Func_8005c68(void);
extern int Func_8020244(int, int);
extern void Func_8017658(int, int, int, int);
extern int Func_8017364(void);
extern void WaitFrames(int);
extern int YesNoMenu(int, int, int, int);
extern void Func_8019a54(void);
extern int Func_8005ac0(int);
extern int Func_801776c(int, int);
extern void Func_8005cf8(void);
extern int _MSG_0a;
extern int _MSG_0d;
extern int _MSG_16;
extern int _MSG_18;

int Func_801fc84(void) {
    int r5;
    int r6;
    int r7;
    int a, b, c;

    r5 = Func_80056cc();
    r7 = 0;
    if (r5 != 0) {
        Func_801776c((int)&_MSG_0a, 1);
        r7 -= 9;
    } else {
        Func_8005c68();
        r6 = Func_8020244(0, 3);
        if (r6 == -1) {
            r7 = r6;
        } else {
            a = 8;
            b = 1;
            c = 2;
            __asm__ volatile ("" : : "r"(a), "r"(b), "r"(c));
            Func_8017658((int)&_MSG_16, a, b, c);
            while (Func_8017364() == 0) {
                WaitFrames(1);
            }
            if (YesNoMenu(1, 0, 3, 1) != 0) {
                Func_8019a54();
            } else {
                Func_8019a54();
                r5 = Func_8005ac0(r6);
                r5 |= Func_8005ac0(r6 + 3);
                if (r5 != 0) {
                    Func_801776c((int)&_MSG_0d, 1);
                    r7 = -4;
                } else {
                    Func_801776c((int)&_MSG_18, 1);
                }
            }
        }
    }
    Func_8005cf8();
    return r7;
}
