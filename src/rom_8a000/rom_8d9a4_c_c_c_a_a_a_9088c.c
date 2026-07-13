extern int divsi3_RAM(int numerator, int denominator);
asm(".set _call_via_sl, _call_via_r10");

void Func_809088c(short *start, short *end, short *output, int divisor)
{
    register short *start_pos asm("r7");
    register short *end_pos asm("r6");
    register short *result asm("r5");
    register int step_count asm("r8");
    register int (*divide)(int, int) asm("r10");
    register int remaining asm("r2");
    int saved_remaining;

    start_pos = start;
    asm volatile("" : "+r"(start_pos));
    end_pos = end;
    asm volatile("" : "+r"(end_pos));
    result = output;
    asm volatile("" : "+r"(result));
    asm volatile("mov %0, %1" : "=r"(step_count) : "r"(divisor));

    if (divisor > 0) {
        register unsigned int divide_address asm("r1");
        int quotient;

        divide_address = (unsigned int)divsi3_RAM;
        asm volatile("" : "+r"(divide_address));
        remaining = 0x53f;
        asm volatile("" : "+r"(remaining));
        divide = (int (*)(int, int))divide_address;
        asm volatile("" : "+r"(divide));
        do {
            register int start_value asm("r3") = *start_pos;
            register int end_value asm("r0");

            asm volatile("" : "+r"(start_value));
            end_value = *end_pos;
            asm volatile("" : "+r"(end_value));
            asm volatile("str %1, %0" : "=m"(saved_remaining)
                         : "r"(remaining));
            end_value -= start_value;
            asm volatile("" : "+r"(end_value));
            quotient = divide(end_value, step_count);
            asm volatile("ldr %0, %1" : "=r"(remaining)
                         : "m"(saved_remaining));
            remaining--;
            asm volatile("" : "+r"(remaining), "+r"(quotient));
            *result = quotient;
            start_pos++;
            end_pos++;
            result++;
            asm volatile("" : "+r"(divide), "+r"(remaining),
                         "+r"(start_pos));
            asm volatile("" : "+r"(end_pos), "+r"(result),
                         "+r"(step_count));
        } while (remaining >= 0);
    }
}
