extern unsigned int Func_8078aa0(int, int);

extern unsigned char L7b490[] __asm__(".L7b490");

unsigned int Func_8078ad0(unsigned int arg0, int delta) {
    unsigned int r3;
    unsigned int r4;
    unsigned char v;

    r3 = arg0 & 0x1ff;
    v = L7b490[r3];
    r4 = 0;
    if (v != 0) {
        r4 = Func_8078aa0(v - 1, delta);
    }
    return r4;
}
