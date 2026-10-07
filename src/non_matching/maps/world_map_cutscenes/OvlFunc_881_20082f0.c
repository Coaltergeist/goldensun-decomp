unsigned int OvlFunc_881_20082f0(unsigned char *p) {
    unsigned int base;
    unsigned char *flagp;
    unsigned short *out;

    base = iwram_3001e70;
    out = *(unsigned short **)(p + 0x50);
    flagp = p + 0x59;
    { int flags = 1; flags |= *flagp; *flagp = flags; }
    out[0xf] = *(unsigned short *)(base + 0x11a);
    return 1;
}
