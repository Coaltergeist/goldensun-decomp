extern int split_line asm(".L610");
extern unsigned short upper_scroll asm(".L614");
extern unsigned short lower_scroll asm(".L616");

void OvlFunc_919_200826c(void)
{
    register volatile unsigned short *source asm("r3");
    register unsigned short value asm("r2");
    register volatile unsigned short *destination asm("r3");
    unsigned short scanline = *(volatile unsigned short *)0x04000006;

    if (scanline >= split_line)
        source = &upper_scroll;
    else
        source = &lower_scroll;
    value = *source;
    asm volatile("" : "+r" (value) : : "memory");
    destination = (volatile unsigned short *)0x0400001c;
    asm volatile("" : "+r" (destination) : : "memory");
    *destination = value;
}
