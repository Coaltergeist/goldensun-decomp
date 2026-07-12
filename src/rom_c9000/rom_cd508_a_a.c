extern unsigned int iwram_3001eec;
extern void Func_80008d4(void *address, int count);

void Func_80cd508(void)
{
    register unsigned int work asm("r3") = (unsigned int)&iwram_3001eec;
    register unsigned char *address asm("r0");
    register int count asm("r1");
    register void (*copy)(void *, int) asm("r3");

    asm volatile("" : "+r"(work));
    address = *(unsigned char **)work;
    work = 0x7818;
    asm volatile("" : "+r"(address), "+r"(work));
    count = 8;
    asm volatile("" : "+r"(address), "+r"(work), "+r"(count));
    address += work;
    copy = Func_80008d4;
    asm volatile("" : "+r"(copy), "+r"(address), "+r"(count));
    copy(address, count);
}
