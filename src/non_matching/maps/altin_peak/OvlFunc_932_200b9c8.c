extern unsigned short Lm932_5260 __asm__(".Lm932_5260");
extern short Lm932_525c __asm__(".Lm932_525c");
extern signed char s8_ARRAY_932__0200bd28[];
extern unsigned int iwram_3001ed0;

void OvlFunc_932_200b9c8(void)
{
    unsigned char *base = *(unsigned char **)&iwram_3001ed0;

    if (Lm932_525c <= 0) {
        unsigned short i;
        int v;

        for (;;) {
            i = Lm932_5260;
            Lm932_5260 = i + 1;
            v = s8_ARRAY_932__0200bd28[(short)i];
            if (v != -1) {
                break;
            }
            Lm932_5260 = 0;
        }
        Lm932_5260 = i + 2;
        Lm932_525c = s8_ARRAY_932__0200bd28[(short)(i + 1)];
        DMA3_SET(base + v * 2, (void *)0x5000006, 0x80000009);
    }
    Lm932_525c--;
}
