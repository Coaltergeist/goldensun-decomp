extern void *gPtrs[];

extern void *BlitFade_Div4(void *source, void *destination, unsigned int size);

void *Task_BlitPreAnim(void)
{
    register unsigned char *base asm("r3") = (unsigned char *)gPtrs;
    register unsigned char *work asm("r2");
    register void *source asm("r0");
    register unsigned int offset asm("r1");

    work = base;
    work += 0xa0;
    source = *(void **)work;
    asm volatile ("" : "+r"(source), "+r"(base));
    base += 0x9c;
    base = *(unsigned char **)base;
    asm volatile ("" : "+r"(source), "+r"(base));

    if (source != 0) {
        offset = 0x9e;
        offset <<= 5;
        work = base + offset;
        if (*(int *)work != 0) {
            *(int *)work = 0;
            work = (unsigned char *)0x80;
            asm volatile ("" : "+r"(work));
            offset = 0x06004000;
            asm volatile ("" : "+r"(work), "+r"(offset));
            work = (unsigned char *)((unsigned int)work << 7);
            source = BlitFade_Div4(source, (void *)offset, (unsigned int)work);
        }
    }
    return source;
}
