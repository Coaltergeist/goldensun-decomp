extern unsigned char ewram_2020000[];

void Func_8011164(unsigned int arg0)
{
    unsigned short *src;
    unsigned short *dst;
    int i;

    src = (unsigned short *)(ewram_2020000 + ((((int)arg0 + ((unsigned int)arg0 >> 31)) >> 1) & 0x1f) * 4);
    dst = (unsigned short *)(0x6004000 + (arg0 & 0x3e));

    for (i = 0; i <= 0x3f; i++) {
        unsigned short idx = *src;
        unsigned short *buf = (unsigned short *)(gBuffer + idx * 4);
        *dst = buf[0];
        *(unsigned short *)((char *)dst + 0x40) = buf[1];
        dst = (unsigned short *)((char *)dst + 0x80);
        src = (unsigned short *)((char *)src + 0x80);
    }
}
