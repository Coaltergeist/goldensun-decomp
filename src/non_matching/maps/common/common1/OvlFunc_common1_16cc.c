extern unsigned char L6[] __asm__(".L6");

void OvlFunc_common1_16cc(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p;
    int r2;
    int r4;
    int r3;

    p = (unsigned char *)arg0 + 8;
    r3 = 0;
    *p = r3;
    r2 = 7;
    p--;
    r4 = 0xf;
    do {
        r3 = arg1 & r4;
        r3 = L6[r3];
        r2--;
        *p = r3;
        arg1 >>= 4;
        p--;
    } while (r2 >= 0);
}
