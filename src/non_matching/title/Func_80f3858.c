extern void Func_80f2ebc(void *a, void *b, void *c, unsigned int d);

void Func_80f3858(unsigned int arg0)
{
    unsigned char *base = *(unsigned char **)iwram_3001ed0;

    if (base != 0) {
        base[0x3001] = (unsigned char)arg0;
        base[0x3002] = 0;
        Func_80f2ebc(base + 0x400, base + 0x1000, base + 0x1c00, arg0);
    }
}
