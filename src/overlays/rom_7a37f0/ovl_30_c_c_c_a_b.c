extern unsigned int iwram_3001ad4;
extern unsigned char L20d0[] asm(".L20d0");

void OvlFunc_916_20083c0(void) {
    unsigned int *src;
    unsigned int *dst;
    unsigned short *h;

    src = &iwram_3001ad4;
    dst = (unsigned int *)L20d0;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst = *src;

    h = (unsigned short *)L20d0;
    *(unsigned short *)((char *)h + 2) += 0xb0;
    *(unsigned short *)((char *)h + 6) += 0xb0;
    *(unsigned short *)((char *)h + 0xa) += 0xb0;
}
