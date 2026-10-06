extern unsigned char iwram_3001e64[];

void *NewActor(void) {
    unsigned char *base;
    unsigned char *p;
    unsigned int v;
    int i;

    base = *(unsigned char **)iwram_3001e64;
    p = base;
    v = *(unsigned int *)p;
    i = 0;
    while (v != 0) {
        i++;
        p += 0x70;
        if (i > 63) {
            return (void *)0;
        }
        v = *(unsigned int *)p;
    }
    return p;
}
