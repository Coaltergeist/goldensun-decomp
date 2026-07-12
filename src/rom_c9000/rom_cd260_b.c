extern unsigned char *iwram_3001eec;
extern unsigned int Bg2Position[] __asm__("0x4000028");

void Func_80cd488(void)
{
    register unsigned int address asm("r3") = (unsigned int)&iwram_3001eec;
    register unsigned int offset asm("r0") = 0x77d0;
    register unsigned char *work asm("r2");
    register unsigned int *position asm("r1");

    /* Preserve the original work-buffer and register-pointer schedule. */
    asm volatile("" : "+r"(address), "+r"(offset));
    work = *(unsigned char **)address;
    address = (unsigned int)work + offset;
    asm volatile("" : "+r"(address), "+r"(work), "+r"(offset));
    address = *(unsigned int *)address;
    asm volatile("" : "+r"(address), "+r"(work));
    position = Bg2Position;
    asm volatile("" : "+r"(address), "+r"(position));
    *position = address;
    asm volatile("" : "+r"(position));
    address = 0x77d4;
    work += address;
    address = *(unsigned int *)work;
    position++;
    asm volatile("" : "+r"(position));
    *position = address;
}
