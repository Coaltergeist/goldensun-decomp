extern int _divsi3_RAM(int, int);

extern unsigned int Lm923_291c[] __asm__(".Lm923_291c");

extern unsigned int Lm923_2924[] __asm__(".Lm923_2924");

extern unsigned int gOvl_0200a920[];

extern int _umodsi3_RAM(int, int);

void OvlFunc_923_2008d98(void)
{
    unsigned short buf;
    unsigned short *p = &buf;
    unsigned int i;
    unsigned short v;
    unsigned int hi = 0;

    buf = 0;
    if (_umodsi3_RAM(iwram_3001e40, 5) != 0)
        return;

    Lm923_291c[0] = (Lm923_291c[0] + 4) & 0x1f;

    for (i = 0; i <= 5; i++) {
        v = (*(unsigned short *)(0x05000000 + ((0x6e - i) << 1))) & 0x1f;
        *p = v;
        v = *p;
        if (i <= 2) {
            v = v - _divsi3_RAM(v << 2, 10);
        }
        hi = (Lm923_2924[0] << 10) | (gOvl_0200a920[0] << 5);
        v |= hi;
        *(unsigned short *)(0x05000000 + ((0x6f - i) << 1)) = v;
    }

    *(unsigned short *)0x050000d2 = Lm923_291c[0] | hi;
}
