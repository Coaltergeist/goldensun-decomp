void Func_80b0a20(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int *p0;
    unsigned int *p1;
    unsigned short masked;

    p0 = (unsigned int *)arg0;
    p1 = (unsigned int *)*p0;
    *(unsigned char *)(arg0 + 0xd) = 1;
    *(unsigned short *)((char *)p1 + 6) = arg1;
    *(unsigned short *)(arg0 + 8) = arg1;
    *(unsigned short *)(arg0 + 4) = arg1;
    masked = (unsigned short)(arg1 & 0xffff & 0x1ff);
    *(unsigned char *)(arg0 + 0xc) = 0;
    *(unsigned short *)((char *)p1 + 0x16) = (*(unsigned short *)((char *)p1 + 0x16) & 0xfffffe00) | masked;
    p1 = (unsigned int *)*p0;
    *(unsigned short *)(arg0 + 0xa) = arg2;
    *(unsigned short *)(arg0 + 6) = arg2;
    *(unsigned short *)((char *)p1 + 8) = arg2;
    *((unsigned char *)p1 + 0x14) = (unsigned char)(arg2 & 0xffff);
}
