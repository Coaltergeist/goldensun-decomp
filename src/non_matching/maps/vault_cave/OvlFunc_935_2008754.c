__asm__(".set __floatsidf, OvlFunc_common2_304");

__asm__(".set __adddf3, OvlFunc_common2_254");

__asm__(".set __muldf3, OvlFunc_common2_28c");

__asm__(".set __fixdfsi, OvlFunc_common2_380");

extern unsigned int iwram_3001e70;

extern unsigned int iwram_3001e40;

extern void __CutsceneEnd(void);

extern void __CutsceneWait(int);

extern unsigned int __Random(void);

extern void __SetRegAnimDest(unsigned int, unsigned int);

extern unsigned int _modsi3_RAM(unsigned int, unsigned int);

extern void __Func_800fe9c(void);

extern void __Func_8012350(void);

extern double __muldf3(double, double);

void OvlFunc_935_2008754(void)
{
    char *env = (char *)iwram_3001e70 + (0xb2 << 1);
    int loop;
    int r5, r6, r7;
    int a4, a5;

    __CutsceneStart();
    if (iwram_3001e40 & 1) {
        *(int *)(env + 0x18) = 1;
        *(int *)(env + 0x1c) = 1;
    } else {
        *(int *)(env + 0x18) = -1;
        *(int *)(env + 0x1c) = -1;
    }
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_Func_8012330(-1, -1, 0xe666);
    __PlaySound(0xa3);

    for (loop = 0x1df; loop >= 0; loop--) {
        unsigned int r = __Random();
        double pos = *(int *)(env + 0x24);
        double v;
        r <<= 11;
        r >>= 16;
        v = (double)r;
        *(int *)(env + 0x24) = pos * __muldf3(4718.592, v);
        __CutsceneWait(1);
    }

    r5 = 6;
    r6 = 6;
    loop = 0;
    r7 = r5 << 10;
    do {
        __SetRegAnimDest(0x04000052, (r5 << 5) | r7 | r6);
        __CutsceneWait(1);
        if (_modsi3_RAM(loop, 20) == 0) {
            r6--;
            r5--;
        }
        loop++;
    } while (loop <= 0x45);

    a4 = 0x13;
    a5 = 0x5b;
    __Func_80105d4(0x13, 0x53, 0xf, 8, a4, a5);
    __PlaySound(0x90 << 1);
    __Func_800fe9c();
    __Func_8012350();
    __CutsceneEnd();
}
