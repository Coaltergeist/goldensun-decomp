unsigned int Func_801b36c(unsigned int arg0) {
    unsigned int r2 = *(unsigned int *)(arg0 + 0x348);
    unsigned short r3 = *(unsigned short *)(arg0 + 0x39e);
    unsigned int r1 = 0;

    if (r3 != 0) {
        unsigned short r0 = *(unsigned short *)(arg0 + 0x39e);
        do {
            r1++;
            r2 = *(unsigned int *)(r2 + 4);
        } while (r1 != r0);
    }
    return r2;
}
