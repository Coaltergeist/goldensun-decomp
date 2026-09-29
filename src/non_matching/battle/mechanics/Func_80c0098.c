extern void Func_80008d8(int arg0, int arg1, int arg2);

void Func_80c0098(unsigned int *buf) {
    unsigned int v;
    unsigned int i;
    int v1;

    v = 0x03020100;
    for (i = 0; i <= 0x3f; i++) {
        *buf++ = v;
        v += 0x04040404;
    }
    v = 0x03020100;
    for (i = 0; i <= 0x37; i++) {
        *buf++ = v;
        v += 0x04040404;
    }
    v1 = 0x88;
    v1 <<= 2;
    Func_80008d8((int)buf, v1, -1);
}
