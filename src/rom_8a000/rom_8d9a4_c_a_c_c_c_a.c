extern unsigned char iwram_3001ebc[];
extern int GetMapActorIndex(int actor);

unsigned int Func_808ed4c(int actor) {
    int index = GetMapActorIndex(actor);
    register int notFound asm("r2") = -1;

    asm volatile("" : : "r"(notFound));
    if (index == notFound)
        return 0;
    {
        register unsigned char *base asm("r3") = *(unsigned char **)iwram_3001ebc;
        register unsigned int offset asm("r2");
        register unsigned int extra asm("r2");

        asm volatile("" : "+r"(base));
        offset = index << 3;
        asm volatile("" : "+r"(offset));
        base += offset;
        extra = 0x8e;
        asm volatile("" : "+r"(extra));
        extra <<= 1;
        base += extra;
        asm volatile("" : "+r"(base));
        return *(unsigned int *)base;
    }
}
