extern void Func_801e9d4_4(unsigned int value, unsigned int digits, void *box,
                           int x) asm("Func_801e9d4");

void Func_8020150(void *box, const unsigned char *values)
{
    register void *box_reg asm("r7") = box;

    if (box_reg != 0) {
        register int width asm("r8");
        register int width_value asm("r3");
        register const unsigned char *cursor asm("r5");
        register int x asm("r4");
        register int remaining asm("r6");
        int stack_space[2];
        register volatile int *call_args asm("sp") = stack_space;

        asm("" : "=r"(width_value) : "0"(0x10));
        asm("" : "=r"(cursor) : "0"(values), "r"(width_value));
        asm("" : "=r"(x) : "0"(0), "r"(cursor));
        asm("" : "=r"(width) : "0"(width_value), "r"(x));
        asm("" : "=r"(remaining) : "0"(3), "r"(width));
        asm volatile("" : "+m"(stack_space));
        cursor += 0x28;
        do {
            register int value asm("r0") = *cursor;
            register int stack_width asm("r3") = width;

            asm("" : "+r"(value), "+r"(stack_width));
            asm("" : "+r"(value));
            value <<= 24;
            /* 第5引数はスタックへ置く。 */
            call_args[0] = stack_width;
            asm("" : "+r"(value));
            value >>= 24;
            call_args[1] = x;
            Func_801e9d4_4(value, 2, box_reg, x);
            x = call_args[1];
            remaining--;
            cursor++;
            x += 0x18;
        } while (remaining >= 0);
    }
}
