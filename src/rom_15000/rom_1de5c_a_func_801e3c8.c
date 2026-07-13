typedef unsigned char u8;

extern u8 *iwram_3001e8c;

void Func_801e3c8(int enabled)
{
    register u8 *base asm("r1") = iwram_3001e8c;

    if (enabled != 0) {
        register u8 *cursor asm("r2");
        register unsigned int status_offset asm("r3") = 0xea2;

        asm volatile("" : "+r"(status_offset));
        {
            register unsigned int clear_offset asm("r4") = 0xe2;

            asm volatile("" : "+r"(clear_offset));
            cursor = base + status_offset;
            asm volatile("" : "+r"(cursor));
            clear_offset <<= 4;
            asm volatile("" : "+r"(clear_offset));
            *cursor = 1;
            asm volatile("" ::: "memory");

            {
                register int zero asm("r0") = 0;
                register int i asm("r3") = 0x80;

                asm volatile("" : "+r"(zero));
                asm volatile("" : "+r"(i));
                cursor = base + clear_offset;
                asm volatile("" : "+r"(cursor));
                do {
                    i++;
                    asm volatile("" : "+r"(i));
                    *cursor = zero;
                    asm volatile("" ::: "memory");
                    cursor++;
                    asm volatile("" : "+r"(cursor));
                } while (i <= 0xff);
            }
        }
    } else {
        register u8 *cursor asm("r2");
        register unsigned int status_offset asm("r3") = 0xea2;

        asm volatile("" : "+r"(status_offset));
        {
            register unsigned int clear_offset asm("r4") = 0xe2;

            asm volatile("" : "+r"(clear_offset));
            cursor = base + status_offset;
            asm volatile("" : "+r"(cursor));
            clear_offset <<= 4;
            asm volatile("" : "+r"(clear_offset));

            {
                register int status_zero asm("r3") = 0;

                asm volatile("" : "+r"(status_zero));
                *cursor = status_zero;
                asm volatile("" ::: "memory");
            }

            {
                register int zero asm("r0") = 0;

                asm volatile("" : "+r"(zero));
                cursor = base + clear_offset;
                asm volatile("" : "+r"(cursor));

                {
                    register int i asm("r3") = 0x7f;

                    asm volatile("" : "+r"(i));
                    do {
                        i--;
                        asm volatile("" : "+r"(i));
                        *cursor = zero;
                        asm volatile("" ::: "memory");
                        cursor++;
                        asm volatile("" : "+r"(cursor));
                    } while (i >= 0);
                }
            }
        }
    }
}
