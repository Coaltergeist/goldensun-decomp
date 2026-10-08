extern unsigned int iwram_3001e40;
extern int gScript_969__0200e004;
extern int Lm924_600c[] __asm__(".Lm924_600c");
extern int Lm924_6008[] __asm__(".Lm924_6008");
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern int _divsi3_RAM(int, int);

void OvlFunc_924_2008d58(void)
{
    volatile unsigned short v = 0;
    volatile unsigned short *p = &v;
    unsigned int i;
    int c;
    unsigned int gb;

    if (_umodsi3_RAM(iwram_3001e40, 5) == 0) {
        gScript_969__0200e004 = (gScript_969__0200e004 + 4) & 0x1f;
        for (i = 0; i <= 5; i++) {
            *p = ((unsigned short *)0x5000000)[0x6e - i] & 0x1f;
            c = *p;
            if (i <= 2)
                c -= _divsi3_RAM(c * 4, 10);
            ((unsigned short *)0x5000000)[0x6f - i] = c | (gb = (Lm924_600c[0] << 10) | (Lm924_6008[0] << 5));
        }
        ((unsigned short *)0x5000000)[0x69] = gScript_969__0200e004 | gb;
    }
}
