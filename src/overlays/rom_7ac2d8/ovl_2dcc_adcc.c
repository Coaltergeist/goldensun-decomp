extern unsigned int iwram_3001e40;

void OvlFunc_924_200adcc(void)
{
    register volatile unsigned short *destination asm("r1");
    register volatile unsigned short *mirror asm("r3");
    register unsigned short value asm("r2");
    register volatile unsigned short *source asm("r2");
    register unsigned int i asm("r0");

    if ((iwram_3001e40 & 7) != 0)
        return;

    destination = (volatile unsigned short *)0x050000c2;
    mirror = (volatile unsigned short *)0x050000ce;
    asm volatile("" : "+r" (destination), "+r" (mirror) : : "memory");
    value = *destination;
    asm("" : "+r" (value));
    *mirror = value;
    source = (volatile unsigned short *)0x050000c4;
    asm volatile("" : "+r" (source) : : "memory");
    i = 0;
    asm volatile("" : "+r" (i) : : "memory");
    do {
        *destination++ = *source++;
        i++;
    } while (i <= 5);
}
