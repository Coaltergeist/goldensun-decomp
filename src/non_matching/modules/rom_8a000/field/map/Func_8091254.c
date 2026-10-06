extern void Func_809088c(unsigned char *a, unsigned char *b, unsigned char *c, unsigned int d);

void Func_8091254(unsigned int arg0) {
    unsigned char *r4 = *(unsigned char **)iwram_3001ed0;

    if (r4 != (unsigned char *)0) {
        *(unsigned char *)(r4 + 0x2a01) = arg0;
        *(unsigned char *)(r4 + 0x2a02) = 0;
        Func_809088c(r4 + 0x380, r4 + 0xe00, r4 + 0x1880, arg0);
    }
}
