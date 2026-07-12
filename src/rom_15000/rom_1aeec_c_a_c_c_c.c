extern unsigned char iwram_3001e9c[];
extern void CloseUIBox(void *box, int immediate);
extern int Func_8017394(void *box);
extern void WaitFrames(int frames);
extern void Func_8003f3c(int id);
extern void gfree(int slot);

void Func_801c954(void) {
    register unsigned char *base asm("r5");
    register void **boxSlot asm("r6");
    register unsigned int temp3 asm("r3");
    register unsigned int offset2 asm("r2");

    temp3 = (unsigned int)iwram_3001e9c;
    asm volatile("" : "+r"(temp3));
    offset2 = 0xff4;
    asm volatile("" : "+r"(temp3), "+r"(offset2));
    base = *(unsigned char **)temp3;
    asm volatile("" : "+r"(base), "+r"(offset2));
    temp3 = (unsigned int)(base + offset2);
    asm volatile("" : "+r"(temp3));
    {
        register void *box asm("r0") = *(void **)temp3;
        register int immediate asm("r1");

        asm volatile("" : "+r"(box));
        immediate = 0;
        asm volatile("" : "+r"(box), "+r"(immediate));
        CloseUIBox(box, immediate);
    }
    temp3 = 0xff4;
    asm volatile("" : "+r"(temp3), "+r"(base));
    boxSlot = (void **)(base + temp3);
    asm volatile("" : "+r"(boxSlot), "+r"(base));
    while (Func_8017394(*boxSlot) == 0)
        WaitFrames(1);
    if (*(unsigned short *)(base + 0x46) != 0)
        Func_8003f3c(*(unsigned short *)(base + 0x48));
    {
        register unsigned int offset asm("r2");
        register unsigned int temp asm("r3");

        offset = 0x352;
        asm volatile("" : "+r"(offset), "+r"(base));
        temp = (unsigned int)(base + offset);
        asm volatile("" : "+r"(offset), "+r"(temp), "+r"(base));
        temp = *(unsigned short *)temp;
        asm volatile("" : "+r"(offset), "+r"(temp), "+r"(base));
        if (temp != 0) {
            register int id asm("r0");

            offset += 2;
            asm volatile("" : "+r"(offset), "+r"(base));
            temp = (unsigned int)(base + offset);
            asm volatile("" : "+r"(temp));
            id = *(unsigned short *)temp;
            asm volatile("" : "+r"(id));
            Func_8003f3c(id);
        }
    }
    gfree(0x13);
}
