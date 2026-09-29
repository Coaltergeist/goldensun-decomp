void OvlFunc_959_2008ee0();

void __Func_8012330(int, int, int);

static inline void helper(int a, int b, int c) {
    __Func_8012330(a << 10, b << 10, c << 9);
}

void OvlFunc_959_2008f30(void) {
    unsigned int r5;
    short *p;
    short v;
    int c = 0xe666;

    r5 = *(unsigned int *)iwram_3001ebc;
    if (__CheckPartyItem(0xea) != -1) {
        p = (short *)(r5 + (0xb6 << 1));
        v = *p;
        OvlFunc_959_2008ee0(v - 0x28);
        __PlaySound(0x9d);
        helper(0xc0, 0xc0, 0x80);
        __Func_8012330(-1, -1, c);
        __SetFlag(v + 0x332);
    }
}
