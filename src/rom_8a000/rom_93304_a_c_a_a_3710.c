extern unsigned int iwram_3001e70;
extern void *galloc_ewram(unsigned int slot, unsigned int size);
extern void WaitFrames(int frames);

void Func_8093710(void)
{
    unsigned char *base;
    unsigned char *p;
    int i;

    base = (unsigned char *)iwram_3001e70;
    p = (unsigned char *)galloc_ewram(0x1b, 0xccc);
    if (*(short *)(p + 0x19e) == 3) {
        i = 0;
        if (*(short *)(base + 0x358) != 0) {
            do {
                WaitFrames(1);
                i++;
                if (i > 0x12b)
                    return;
            } while (*(short *)(base + 0x358) != 0);
        }
    }
}
