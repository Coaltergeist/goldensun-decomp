extern unsigned char gState[];
extern unsigned char Value_bd[] asm("0xbd");
extern unsigned char Events_TolbiSpring[];
extern unsigned char Events_GameBuildings[];

unsigned char *OvlFunc_951_20081a8(void)
{
    register unsigned int value asm("r3");
    register unsigned int offset asm("r1");
    register int state asm("r2");

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    offset = 0xe0;
    offset <<= 1;
    asm volatile("" : "+r"(value), "+r"(offset));
    value += offset;
    offset = 0;
    asm volatile("" : "+r"(value), "+r"(offset));
    state = *(short *)(value + offset);
    value = (unsigned int)Value_bd;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value)
        return Events_TolbiSpring;
    return Events_GameBuildings;
}
