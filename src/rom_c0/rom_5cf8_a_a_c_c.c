extern unsigned char ewram_2002080[];
extern unsigned char ewram_20023ac[];
extern unsigned char Limit_927bf[] asm("0x927bf");
extern void WaitFrames(int frames);

void Func_80064b8(void)
{
    register unsigned int count asm("r5");
    register unsigned int work asm("r3");

    work = *(unsigned int *)ewram_2002080;
    asm volatile("" : "+r"(work));
    count = 0;
    asm volatile("" : "+r"(count));
    goto check;

again:
    WaitFrames(1);
    work = (unsigned int)Limit_927bf;
    asm volatile("" : "+r"(work), "+r"(count));
    count++;
    if (count > work)
        goto done;
    work = *(unsigned int *)ewram_2002080;
    asm volatile("" : "+r"(work), "+r"(count));

check:
    if (work != 0)
        goto again;
    work = *(unsigned int *)ewram_20023ac;
    asm volatile("" : "+r"(work), "+r"(count));
    if (work != 0)
        goto again;

done:
    return;
}
