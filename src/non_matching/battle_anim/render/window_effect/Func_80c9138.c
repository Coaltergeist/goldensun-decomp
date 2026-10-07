void Func_80c9138(void) {
    unsigned int *base;
    unsigned int *cnt;

    base = (unsigned int *)*(unsigned int *)iwram_3001eec;
    cnt = (unsigned int *)((char *)base + 0x7790);
    *cnt = *cnt + 1;

    if (*cnt == *(unsigned int *)((char *)base + 0x7794)) {
        unsigned int *a = (unsigned int *)((char *)base + 0x77d0);
        unsigned int *b = (unsigned int *)((char *)base + 0x77d4);

        *(unsigned int *)0x04000028 = *a;
        *(unsigned int *)0x0400002c = *b;

        *a = *a + *(unsigned int *)((char *)base + 0x7798);
        *b = *b + *(unsigned int *)((char *)base + 0x779c);

        *cnt = 0;
    }
}
