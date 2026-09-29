void OvlFunc_964_20089dc(unsigned char *p, int val)
{
    unsigned char *q = *(unsigned char **)((char *)p + 0x50);
    q[9] = (q[9] & ~0xc) | ((val & 3) << 2);
}
