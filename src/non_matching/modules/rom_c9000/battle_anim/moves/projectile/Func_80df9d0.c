void Func_80df9d0(unsigned int arg0, unsigned char *arg1, unsigned int arg2) {
    unsigned char *r14 = (unsigned char *)arg0;
    unsigned char *r6 = arg1;
    unsigned int r12 = arg2;
    int r8 = 0x120;
    int r7;
    int r5;

    r7 = 0;
    r5 = 0;
    do {
        int r0 = r5 / 2;
        unsigned char *r4 = r14 + r5;
        int r1 = 0;
        do {
            int r3 = r1 / 2;
            unsigned char r2v = *r4;
            r3 = r0 + r3;
            r1++;
            r4++;
            r6[r3] = r2v;
        } while (r1 != 0x28);
        r7++;
        r5 += r12;
    } while (r7 != r8);
}
