void OvlFunc_970_20091c4(void)
{
    int tile;
    unsigned int i;
    int angle;
    int half;
    int *p;

    tile = (unsigned short)gSpriteSlots[Lm970_1c1a].f2 >> 5;

    {
        signed short a = Lm970_1c18;
        int u = (unsigned short)Lm970_1c18;
        if (a != 0) {
            u = u - 1;
            Lm970_1c18 = u;
        }
    }

    p = (int *)Lm970_1af8;
    for (i = 0; i <= 7; i++) {
        int val;
        angle = Lm970_1c18;
        val = (-angle) / 2;
        *p++ = 0;
        *p++ = (i << 21) | (val & 0xff) | 0x80004000;
        *p++ = tile;
    }

    half = (angle / 2 + 0x88) & 0xff;
    for (i = 0; i <= 7; i++) {
        Lm970_1af8[8 + i].attr1 = (i << 21) | half | 0x80004000;
        Lm970_1af8[8 + i].attr0 = 0;
        Lm970_1af8[8 + i].attr2 = tile;
    }

    half = (Lm970_1c18 / 2 + 0x98) & 0xff;
    for (i = 0; i <= 7; i++) {
        Lm970_1af8[16 + i].attr1 = (i << 21) | half | 0x80004000;
        Lm970_1af8[16 + i].attr0 = 0;
        Lm970_1af8[16 + i].attr2 = tile;
    }

    for (i = 0; i <= 23; i++) {
        __Func_8003dec(&Lm970_1af8[i], 0xff);
    }
}
