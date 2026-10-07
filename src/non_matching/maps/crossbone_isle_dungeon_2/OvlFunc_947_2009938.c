int OvlFunc_947_2009938(int *a, int *b)
{
    int ret = 0;

    if (b[2] == a[2] && b[3] == a[3] && b[4] == a[4])
        goto _exit;

    if (b[2] - 0x100000 >= a[2] || a[2] >= b[2] + 0x100000)
        goto _exit;

    if (b[3] / 0x10000 != a[3] / 0x10000)
        goto _exit;

    if (b[4] <= a[4] || b[4] - 0x200000 >= a[4])
        goto _exit;

    {
        unsigned char *sa = *(unsigned char **)((char *)a + 0x50);
        unsigned char *sb = *(unsigned char **)((char *)b + 0x50);
        unsigned int da = (unsigned int)(sa[9] << 28) >> 30;
        unsigned int db = (unsigned int)(sb[9] << 28) >> 30;
        if (da < db) {
            *((unsigned char *)a + 0x23) &= 0xfe;
            sa[9] = (sa[9] & ~0xc) | (db << 2);
            sa[0x15] = (sa[0x15] & ~0xc) | (sb[0x15] & 0xc);
        }
    }
    ret = 1;

_exit:
    return ret;
}
