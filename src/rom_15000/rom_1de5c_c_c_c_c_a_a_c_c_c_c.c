extern int iwram_3001800;
extern int sin(int angle);

void Func_801fd34(void)
{
    register int *phase asm("r7") = &iwram_3001800;
    register volatile unsigned short *palette asm("r6");
    register int i asm("r5");
    register int value asm("r0");
    register int low asm("r1");
    register int temp asm("r2");
    register int work asm("r3");

    asm volatile("" : "+r"(phase));
    palette = (volatile unsigned short *)0x050001d0;
    asm volatile("" : "+r"(phase), "+r"(palette));
    i = 0;
    asm volatile("" : "+r"(phase), "+r"(palette), "+r"(i));

loop:
    work = *phase;
    temp = i;
    temp <<= 3;
    work += temp;
    value = work;
    value <<= 1;
    value += work;
    value <<= 8;
    value = sin(value);
    if (value < 0) {
        work = 0x3fff;
        asm volatile("" : "+r"(work), "+r"(value));
        value += work;
    }
    work = value >> 14;
    asm volatile("" : "+r"(work));
    low = work;
    low <<= 1;
    asm volatile("" : "+r"(low), "+r"(work));
    temp = work;
    asm volatile("" : "+r"(low), "+r"(temp), "+r"(work));
    low += 0x16;
    asm volatile("" : "+r"(low), "+r"(temp), "+r"(work));
    temp += 0x10;
    asm volatile("" : "+r"(low), "+r"(temp), "+r"(work));
    work += 0x14;
    asm volatile("" : "+r"(low), "+r"(temp), "+r"(work));
    work <<= 10;
    asm volatile("" : "+r"(low), "+r"(temp), "+r"(work));
    temp <<= 5;
    asm volatile("" : "+r"(low), "+r"(temp), "+r"(work));
    work |= temp;
    asm volatile("" : "+r"(low), "+r"(work));
    work |= low;
    asm volatile("" : "+r"(palette), "+r"(i), "+r"(work));
    *palette = work;
    asm volatile("" : "+r"(palette), "+r"(i), "+r"(work));
    palette++;
    asm volatile("" : "+r"(palette), "+r"(i));
    i++;
    if (i <= 3)
        goto loop;
}
