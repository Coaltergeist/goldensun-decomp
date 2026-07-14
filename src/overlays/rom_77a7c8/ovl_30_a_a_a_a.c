extern unsigned char *iwram_3001ebc;
extern unsigned char gState[];
extern int _divsi3_RAM(int, int);
extern unsigned int __Random(void);
extern void __Func_8091f14(int, int);

void OvlFunc_881_2008030(void)
{
    register unsigned char **state_source asm("r3") = &iwram_3001ebc;
    register int offset asm("r2") = 0x8e;
    register unsigned char *state asm("r6");
    register unsigned char *base asm("r3");
    register unsigned char *threshold_position asm("r7");
    register int value_offset asm("r3");
    register unsigned char *value_position asm("r5");
    register int value asm("r3");
    int threshold;

    asm volatile("" : "+r" (state_source), "+r" (offset));
    state = *state_source;
    base = gState;
    offset <<= 2;
    threshold_position = base + offset;
    asm volatile("" : "+r" (threshold_position));
    value_offset = 0xd6;
    value_offset <<= 1;
    value_position = state + value_offset;
    asm volatile("" : "+r" (value_position));
    value = *(int *)value_position;
    threshold = _divsi3_RAM((value << 3) + value, 10);
    if (*(int *)threshold_position >= threshold) {
        unsigned int rnd = __Random();
        register unsigned int random_ceiling asm("r2");

        random_ceiling = 0x80;
        random_ceiling <<= 8;
        asm volatile("" : "+r" (random_ceiling));
        if (rnd < random_ceiling) {
            register unsigned char *clear_position asm("r2");
            register int clear_offset asm("r3");
            register int zero asm("r3");

            __Func_8091f14(0x808, 3);
            clear_offset = 0xd4;
            clear_offset <<= 1;
            clear_position = state + clear_offset;
            zero = 0;
            asm volatile("" : "+r" (clear_position), "+r" (zero));
            *(int *)clear_position = zero;
        } else {
            *(int *)threshold_position = *(int *)value_position;
        }
    }
}
