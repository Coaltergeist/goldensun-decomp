void OvlFunc_924_200a648(void)
{
    unsigned short *src;
    unsigned short *dst;
    int i;

    if ((iwram_3001e40 & 7) == 0) {
        dst = (unsigned short *)0x5000050;
        *(unsigned short *)0x500005e = *dst;
        src = (unsigned short *)0x5000052;
        for (i = 0; i <= 6; i++) {
            *dst = *src;
            src++;
            dst++;
        }
    }
}
