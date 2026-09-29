void Func_80f037c(unsigned int *p)
{
    unsigned int v1 = 0x01ff01ff;
    unsigned int v2 = 0x80 << 9;
    unsigned int step = 0x00020002;
    int i;

    i = 0x1f;
    do {
        i--;
        *p++ = v1;
    } while (i >= 0);

    i = 0xef;
    do {
        i--;
        *p++ = v2;
        v2 += step;
    } while (i >= 0);

    i = 0x2f;
    do {
        i--;
        *p++ = v1;
    } while (i >= 0);

    v2 = 0;
    i = 0xbf;
    do {
        i--;
        *p++ = v2;
    } while (i >= 0);
}
