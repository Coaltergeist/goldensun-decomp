extern void _PlaySound(int arg0);

void Func_8091ff0(unsigned int arg0)
{
    unsigned int base;
    short r5;

    base = *(unsigned int *)&iwram_3001ebc;
    r5 = arg0;
    *(unsigned short *)(base + 0xcc8) = r5;
    if ((short)arg0 == -1) {
        r5 = 0x121;
    }
    _PlaySound(0x95 << 1);
    _PlaySound(r5);
}
