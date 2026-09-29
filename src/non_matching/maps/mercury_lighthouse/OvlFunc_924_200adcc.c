void OvlFunc_924_200adcc(void)
{
    unsigned short *src;
    unsigned short *dst;
    int i;

    if ((*(unsigned int *)iwram_3001e40 & 7) == 0) {
        dst = (unsigned short *)0x50000c2;
        *(unsigned short *)0x50000ce = *dst;
        src = (unsigned short *)0x50000c4;
        for (i = 0; i <= 5; i++) {
            *dst = *src;
            src++;
            dst++;
        }
    }
}
