void OvlFunc_965_20089dc(unsigned char *p, int val)
{
    unsigned char *q = *(unsigned char **)((char *)p + 0x50);
    int old = q[9];
    int bits = val & 3;
    old &= ~12;
    q[9] = old | (bits << 2);
}
