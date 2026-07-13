extern unsigned char *_GetUnit(void);
extern int Func_80bf208(int value, int counter, int limit);

int UNIT_COUNTER_FUNCTION(int value)
{
    register int saved_value asm("r8") = value;
    register unsigned char *unit_result asm("r0") = _GetUnit();
    register unsigned char *unit asm("r1");
    register unsigned char *counter asm("r5");
    register unsigned char *state asm("r6");
    register unsigned int current asm("r2");
    register unsigned int next asm("r3");
    register int offset asm("r2");
    register int zero asm("r7");

    offset = UNIT_COUNTER_HALF_OFFSET;
    asm volatile("" : "+r"(unit_result), "+r"(offset));
    offset <<= 1;
    asm volatile("" : "+r"(unit_result), "+r"(offset));
    unit = unit_result;
    counter = unit + offset;
    current = *counter;
    asm volatile("" : "+r"(unit), "+r"(counter), "+r"(current));
    next = current;
    asm volatile("" : "+r"(unit), "+r"(counter), "+r"(next));
    if (next != 0) {
        next += 0xff;
        *counter = next;
        next <<= 24;
        asm volatile("" : "+r"(next) : : "memory");
        zero = 0;
        asm volatile("" : "+r"(unit), "+r"(counter), "+r"(next),
                     "+r"(zero));
        if (next == 0) {
            register int field_offset asm("r2") = UNIT_COUNTER_STATE_OFFSET;
            register signed char *field asm("r3");

            asm volatile("" : "+r"(field_offset), "+r"(unit));
            field = (signed char *)(unit + field_offset);
            asm volatile("" : "+r"(field), "+r"(zero));
            *field = zero;
            return 1;
        }
        state = unit + UNIT_COUNTER_STATE_OFFSET;
        if (*(signed char *)state < 0 &&
            Func_80bf208(saved_value, *counter, UNIT_COUNTER_LIMIT)) {
            *state = zero;
            *counter = zero;
            return 1;
        }
    }
    return 0;
}
