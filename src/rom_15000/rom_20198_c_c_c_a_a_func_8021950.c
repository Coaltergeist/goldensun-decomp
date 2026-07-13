void Func_8021950(const unsigned int *base_values,
                  const unsigned int *overlay_values,
                  unsigned int *output, int shift)
{
    const unsigned int *base_cursor;
    const unsigned int *overlay_cursor;
    register int saved_shift asm("r6") = shift;
    register unsigned int *output_cursor asm("r7");
    register int row asm("r12");
    register int negative_shift asm("r8");
    register int positive_shift asm("r14");

    {
        register int negative_temp asm("r3") = -saved_shift;

        asm volatile("" : "+r"(negative_temp));
        base_cursor = base_values;
        asm volatile("" : "+m"(base_cursor));
        output_cursor = output;
        asm volatile("" : "+r"(output_cursor));

        {
            register int zero asm("r0") = 0;
            register int positive_temp asm("r2");

            asm volatile("" : "+r"(zero));
            negative_temp <<= 2;
            asm volatile("" : "+r"(negative_temp));
            positive_temp = saved_shift << 2;
            asm volatile("" : "+r"(positive_temp));
            overlay_cursor = overlay_values;
            asm volatile("" : "+m"(overlay_cursor));
            row = zero;
            asm volatile("" : "+r"(row));
            negative_shift = negative_temp;
            positive_shift = positive_temp;
            asm volatile("" : "+r"(negative_shift),
                         "+r"(positive_shift));
        }
    }

    do {
        unsigned int overlay;
        unsigned int base;
        register unsigned int combined asm("r2");

        {
            register const unsigned int *cursor asm("r0") = overlay_cursor;

            asm volatile("" : "+r"(cursor));
            overlay = *cursor++;
            asm volatile("" : "+r"(cursor), "+r"(overlay));
            {
                register const unsigned int *saved_cursor asm("r3") = cursor;

                asm volatile("" : "+r"(saved_cursor));
                overlay_cursor = saved_cursor;
            }
            asm volatile("" : "+m"(overlay_cursor));
        }
        {
            register const unsigned int *cursor asm("r0") = base_cursor;
            register unsigned int loaded asm("r1");

            asm volatile("" : "+r"(cursor));
            loaded = *cursor++;
            asm volatile("" : "+r"(cursor), "+r"(loaded));
            base = loaded;
            {
                register const unsigned int *saved_cursor asm("r3") = cursor;

                asm volatile("" : "+r"(saved_cursor));
                combined = 0;
                asm volatile("" : "+r"(combined));
                base_cursor = saved_cursor;
            }
            asm volatile("" : "+m"(base_cursor), "+r"(combined));
        }

        if (saved_shift < 0) {
            register int amount asm("r3") = negative_shift;

            asm volatile("" : "+r"(amount));
            overlay >>= amount;
        } else {
            register int amount asm("r0") = positive_shift;

            asm volatile("" : "+r"(amount));
            overlay <<= amount;
        }

        {
            register unsigned int mask asm("r5") = 0x0fffffff;
            register int nibble asm("r0") = 7;

            asm volatile("" : "+r"(mask));
            asm volatile("" : "+r"(nibble));
            do {
                combined <<= 4;
                if (overlay > mask)
                    combined += overlay >> 28;
                else
                    combined += base >> 28;
                nibble--;
                overlay <<= 4;
                base <<= 4;
            } while (nibble >= 0);
        }

        *output_cursor++ = combined;
        asm volatile("" ::: "memory");
        {
            register int one asm("r2") = 1;

            asm volatile("" : "+r"(one));
            row += one;
        }
    } while (row <= 7);
}
