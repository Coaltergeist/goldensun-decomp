struct ObjAffineSrc {
    short xScale;
    short yScale;
    unsigned short angle;
};

extern unsigned short Data_366f8[];

extern unsigned int Func_8003d28(struct ObjAffineSrc *src);

void Func_801908c(unsigned char *arg0)
{
    unsigned char mode;
    unsigned short idx;
    int val;
    unsigned int result;
    unsigned char *arg1;
    struct ObjAffineSrc s;
    unsigned char b15;
    int m17;
    int m15;
    int m16;

    mode = arg0[5];
    val = 0x100;
    arg1 = arg0 + 0x10;

    switch (mode) {
    case 9:
        val = Data_366f8[(*(unsigned short *)(arg0 + 0xc))++ & 0x1f];
        break;
    case 10:
        val = Data_366f8[(*(unsigned short *)(arg0 + 0xc))++ & 0x1f] >> 1;
        break;
    case 11:
        idx = *(unsigned short *)(arg0 + 0xc);
        if (idx < 8) {
            *(unsigned short *)(arg0 + 0xc) = idx + 1;
            val = Data_366f8[idx * 2 + 0x10];
        }
        break;
    case 12:
        idx = *(unsigned short *)(arg0 + 0xc);
        if (idx < 8) {
            *(unsigned short *)(arg0 + 0xc) = idx + 1;
            val = Data_366f8[idx * 2 + 0x10] >> 1;
        }
        break;
    }

    if (val == 0x100) {
        m17 = ~0x3e;
        arg1[7] = arg1[7] & m17;
        m15 = ~3;
        b15 = arg1[5] & m15;
    } else {
        s.xScale = val;
        s.yScale = val;
        s.angle = 0;
        result = Func_8003d28(&s);
        result &= 0x1f;
        m17 = ~0x3e;
        arg1[7] = (arg1[7] & m17) | (result << 1);
        if (val > 0x100) {
            arg1[5] |= 3;
            m16 = ~0x1ff;
            *(unsigned short *)(arg1 + 6) = (*(unsigned short *)(arg1 + 6) & m16) | ((*(unsigned short *)(arg0 + 6) - 8) & 0x1ff);
            arg1[4] = *(unsigned char *)(arg0 + 8) - 8;
            return;
        }
        m15 = ~3;
        b15 = (arg1[5] & m15) | 1;
    }
    arg1[5] = b15;
    m16 = ~0x1ff;
    *(unsigned short *)(arg1 + 6) = (*(unsigned short *)(arg1 + 6) & m16) | (*(unsigned short *)(arg0 + 6) & 0x1ff);
    arg1[4] = *(unsigned short *)(arg0 + 8);
}
