unsigned char *Func_80b606c(int arg0, int arg1, unsigned short *arg2)
{
    unsigned char buf[8];
    unsigned char *p = buf;
    int i;

    for (i = 3; i >= 0; i--) {
        unsigned char c = (unsigned char)*arg2;
        *p = c;
        arg2++;
        p++;
        if (c == 0)
            *(p - 1) = 0x5f;
    }
    buf[4] = 0;
    return p;
}
