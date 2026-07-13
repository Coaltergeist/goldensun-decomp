void Func_8029274(unsigned int value, unsigned int digits, char *output)
{
    register unsigned int i asm("r2");
    char buffer[8];

    if (digits > 5)
        digits = 5;

    i = 0;
    asm volatile("" : "+r"(i));
    if (digits != 0) {
        register unsigned int mask asm("r6") = 0xf;
        register char *buffer_pos asm("r4") = buffer;

        asm volatile("" : "+r"(mask));
        asm volatile("" : "+r"(buffer_pos));

        do {
            unsigned int digit = value & mask;

            if (digit <= 9)
                digit += '0';
            else
                digit += 'A' - 10;
            *buffer_pos = digit;
            asm volatile("" ::: "memory");
            i++;
            asm volatile("" : "+r"(i));
            value >>= 4;
            asm volatile("" : "+r"(value));
            buffer_pos++;
        } while (i != digits);
    }

    {
        register int count asm("r2") = digits - 1;

        asm volatile("" : "+r"(count));
        if (count >= 0) {
            register unsigned int base asm("r3") = (unsigned int)buffer;
            register char *position asm("r1") = (char *)(count + base);
            register char *begin asm("r12") = (char *)base;

            asm volatile("" : "+r"(base));
            asm volatile("" : "+r"(position));
            asm volatile("" : "+r"(begin));

            do {
                *output++ = *position--;
            } while ((int)position >= (int)begin);
        }
    }
}
