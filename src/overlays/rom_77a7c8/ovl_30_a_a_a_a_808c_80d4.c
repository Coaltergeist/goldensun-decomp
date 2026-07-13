extern unsigned char *iwram_3001ebc;
extern unsigned char gState[];
extern int _divsi3_RAM(int, int);
extern void __Func_8091f14(int, int);

void OvlFunc_881_200808c(void)
{
    register unsigned char **state_source asm("r3") = &iwram_3001ebc;
    register unsigned char *threshold_position asm("r5") = gState;
    register int offset asm("r2") = 0x8e;
    register unsigned char *state asm("r6");
    register unsigned char *value_position asm("r3");
    register int value asm("r3");
    int threshold;

    asm volatile("" : "+r" (state_source), "+r" (threshold_position), "+r" (offset));
    offset <<= 2;
    state = *state_source;
    threshold_position += offset;
    offset -= 0x8c;
    value_position = state + offset;
    asm volatile("" : "+r" (value_position));
    value = *(int *)value_position;
    threshold = _divsi3_RAM((value << 3) + value, 10);
    if (*(int *)threshold_position >= threshold) {
        register unsigned char *clear_position asm("r2");
        register int clear_offset asm("r3");
        register int zero asm("r3");

        __Func_8091f14(0x809, 0x2a);
        clear_offset = 0xd4;
        clear_offset <<= 1;
        clear_position = state + clear_offset;
        zero = 0;
        asm volatile("" : "+r" (clear_position), "+r" (zero));
        *(int *)clear_position = zero;
    }
}

void OvlFunc_881_20080d4(void)
{
    register unsigned char **state_source asm("r3") = &iwram_3001ebc;
    register unsigned char *threshold_position asm("r5") = gState;
    register int offset asm("r2") = 0x8e;
    register unsigned char *state asm("r6");
    register unsigned char *value_position asm("r3");
    register int value asm("r3");
    int threshold;

    asm volatile("" : "+r" (state_source), "+r" (threshold_position), "+r" (offset));
    offset <<= 2;
    state = *state_source;
    threshold_position += offset;
    offset -= 0x8c;
    value_position = state + offset;
    asm volatile("" : "+r" (value_position));
    value = *(int *)value_position;
    threshold = _divsi3_RAM((value << 3) + value, 10);
    if (*(int *)threshold_position >= threshold) {
        register unsigned char *clear_position asm("r2");
        register int clear_offset asm("r3");
        register int zero asm("r3");

        __Func_8091f14(0x80a, 0x18);
        clear_offset = 0xd4;
        clear_offset <<= 1;
        clear_position = state + clear_offset;
        zero = 0;
        asm volatile("" : "+r" (clear_position), "+r" (zero));
        *(int *)clear_position = zero;
    }
}
