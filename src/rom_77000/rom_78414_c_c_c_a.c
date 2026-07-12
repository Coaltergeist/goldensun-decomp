extern unsigned char *GetUnit(int unit);
extern unsigned char Value_400[] asm("0x400");

int BreakItem(int unit, int item)
{
    register int offset asm("r5") = item;
    unsigned char *data;
    register unsigned int value asm("r2");
    register unsigned int work asm("r3");

    asm volatile("" : "+r"(offset));
    data = GetUnit(unit);
    offset <<= 1;
    offset += 0xd8;
    value = *(unsigned short *)(data + offset);
    work = value;
    asm("" : "+r"(work), "+r"(value));
    if (work == 0)
        return -1;
    work = (unsigned int)Value_400;
    work |= value;
    *(unsigned short *)(data + offset) = work;
    return 0;
}
