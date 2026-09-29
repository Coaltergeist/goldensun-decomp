extern unsigned char iwram_3001800[];

extern int sin(int theta);

void Func_801fd34(void) {
    unsigned int *r7;
    unsigned short *r6;
    int r5;

    r7 = (unsigned int *)iwram_3001800;
    r6 = (unsigned short *)0x50001d0;
    for (r5 = 0; r5 <= 3; r5++) {
        int r3, r0, r1, r2;

        r3 = *r7;
        r3 += r5 << 3;
        r0 = r3 << 1;
        r0 += r3;
        r0 <<= 8;
        r0 = sin(r0);
        if (r0 < 0) {
            r0 += 0x3fff;
        }
        r3 = r0 >> 14;
        r1 = r3 << 1;
        r2 = r3;
        r1 += 0x16;
        r2 += 0x10;
        r3 += 0x14;
        r3 <<= 10;
        r2 <<= 5;
        r3 |= r2;
        r3 |= r1;
        *r6 = (unsigned short)r3;
        r6++;
    }
}
