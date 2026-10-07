extern unsigned int L4468[] __asm__(".L4468");

void OvlFunc_957_2008ee0(unsigned int arg0) {
    unsigned short *p;
    int mask;
    int idx;
    unsigned int val;

    p = (unsigned short *)((char *)arg0 + 0x64);
    mask = 3;
    idx = ((int)(*p << 16) >> 18) & mask;
    val = L4468[idx];
    *(unsigned int *)((char *)arg0 + 0x18) = val;
    *(unsigned int *)((char *)arg0 + 0x1c) = val;
    *p = (*p + 1) & 0xf;
}
