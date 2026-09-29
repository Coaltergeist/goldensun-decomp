extern void __PlaySound(int);
extern unsigned int __Random(void);

extern volatile unsigned int iwram_3001e40;

int OvlFunc_933_2008344(int *arg0) {
    struct EffectData933 data;
    unsigned short base;
    int r6;

    if ((iwram_3001e40 & 7) == 0) {
        __PlaySound(0x76);
    }
    r6 = iwram_3001e40 & 0xf;
    if (r6 != 0) {
        return 0;
    }
    data.unk8 = 0xcccc;
    data.unkc = 0xcccc;
    base = 0xf800;
    data.unk22 = (((unsigned int)__Random() << 12) >> 16) + base;
    OvlFunc_common0_10c(arg0[2], arg0[3], arg0[4], 0, r6, r6, 0x880001, &data);
    return 0;
}
