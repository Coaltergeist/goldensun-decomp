void Func_809b0dc(unsigned char *p)
{
    int v1c;
    int v18;
    unsigned short h6;
    int hc;
    int limit;

    v1c = *(int *)(p + 0x1c) - 0x280;
    v18 = *(int *)(p + 0x18) - 0x280;
    *(int *)(p + 0x1c) = v1c;
    h6 = *(unsigned short *)(p + 6) + (0x80 << 6);
    *(unsigned short *)(p + 6) = h6;
    hc = *(int *)(p + 0xc) + (0x80 << 9);
    *(int *)(p + 0xc) = hc;
    limit = 0xc0 << 6;
    *(int *)(p + 0x18) = v18;
    if (v18 < limit) {
        *(p + 0x54) = 0;
    }
}
