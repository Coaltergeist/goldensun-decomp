void Func_801ce48(unsigned char *arg0)
{
    unsigned short *p;
    unsigned short v;
    unsigned short nv;

    p = (unsigned short *)(arg0 + 0x574);
    v = *p;
    if (v == 0) {
        nv = 2;
    } else {
        nv = v - 1;
    }
    *p = nv;
}
