typedef struct UiTiming {
    unsigned char padding00[0x16];
    unsigned short delay;
    unsigned short duration;
    unsigned short interval;
} UiTiming;

extern unsigned char *iwram_3001e8c;

void Func_80167ac(UiTiming *timing)
{
    register unsigned int global asm("r3") = (unsigned int)&iwram_3001e8c;
    register unsigned int offset asm("r4") = 0xeae;
    register unsigned char *state asm("r2");
    register unsigned int value asm("r1");

    asm volatile("" : "+r"(global), "+r"(offset));
    state = *(unsigned char **)global;
    value = timing->delay;
    global = (unsigned int)state + offset;
    /* Preserve each explicit destination-address calculation. */
    asm volatile("" : "+r"(global), "+r"(value));
    *(unsigned short *)global = value;
    offset -= 2;
    asm volatile("" : "+r"(offset));
    value = timing->duration;
    global = (unsigned int)state + offset;
    asm volatile("" : "+r"(global), "+r"(value));
    *(unsigned short *)global = value;
    value = 0xea8;
    global = timing->interval;
    state += value;
    *(unsigned short *)state = global;
}
