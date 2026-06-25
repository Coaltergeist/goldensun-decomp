/* Cluster Func_801fba8..Func_801fba8 extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c.s.
 *
 * Total .text for this TU = 220 bytes (= 0xdc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_a.o and asm/rom_15000/rom_1de5c_c_c_c_c_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_80056cc(void);
extern int Func_801776c(int, int);
extern void Func_8005c68(void);
extern int Func_8020244(int, int);
extern int Func_8005a78(int, int);
extern int Func_801f704(void);
extern int SomethingSaveHeader(int, int);
extern void Func_8005cf8(void);
extern int _MSG_0a;
extern int _MSG_0c;
extern int _MSG_0d;
extern int _MSG_19;
extern unsigned char ewram_2000000[];

int Func_801fba8(void) {
    int r5, r6, r7, r8, r10;

    r8 = 0;
    r6 = Func_80056cc();
    if (r6 != 0) {
        Func_801776c((int)&_MSG_0a, 1);
        r8 = -9;
    } else {
        Func_8005c68();
        r5 = Func_8020244(0, 2);
        if (r5 == -1) {
            r8 = r5;
        } else {
            r7 = (int)ewram_2000000;
            r6 = Func_8005a78(r5, r7);
            r10 = r7 + 0x1000;
            r6 |= Func_8005a78(r5 + 3, r10);
            if (r6 != 0) {
                Func_801776c((int)&_MSG_0c, 1);
                r8 = -2;
            } else {
                r5 = Func_801f704();
                if (r5 == 0x3e7) {
                    Func_801776c((int)&_MSG_0d, 1);
                    r8 = -5;
                } else {
                    r6 = SomethingSaveHeader(r5, r7);
                    r6 |= SomethingSaveHeader(r5 + 3, r10);
                    if (r6 != 0) {
                        Func_801776c((int)&_MSG_0d, 1);
                        r8 = -3;
                    } else {
                        Func_801776c((int)&_MSG_19, 1);
                    }
                }
            }
        }
    }
    Func_8005cf8();
    return (unsigned int)r8;
}
