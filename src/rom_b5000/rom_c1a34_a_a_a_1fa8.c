extern unsigned int Random(void);
extern unsigned char Lc5c38[] asm(".Lc5c38");

int Func_80c1fa8(unsigned int index) {
    int values[5];
    int count = 0;

    if (index >= 380)
        index = 1;

    {
        register unsigned char *table asm("r2") = Lc5c38;
        register unsigned int record asm("r3");
        register int *base asm("r6");

        record = index << 4;
        record += (unsigned int)table;
        base = values;
        asm volatile("" : "+r"(record), "+r"(base), "+r"(count));

        {
            register unsigned char *flag_ptr asm("r0") = (unsigned char *)record;
            register unsigned char *value_ptr asm("r2") = (unsigned char *)(record + 1);
            register int *cursor asm("r4");
            register int i asm("r1");

            flag_ptr += 0xb;
            cursor = base;
            i = 4;
            asm volatile("" : "+r"(flag_ptr), "+r"(value_ptr), "+r"(cursor));
            asm volatile("" : "+r"(i), "+r"(count), "+r"(base));

            do {
                register unsigned int flag asm("r3");

                flag = *flag_ptr;
                flag_ptr++;
                asm volatile("" : "+r"(flag), "+r"(flag_ptr), "+r"(value_ptr), "+r"(cursor));
                asm volatile("" : "+r"(i), "+r"(count), "+r"(base));
                if (flag != 0) {
                    register unsigned int val asm("r3");

                    val = *value_ptr;
                    val += 8;
                    *cursor = val;
                    cursor++;
                    count++;
                    asm volatile("" : "+r"(value_ptr), "+r"(cursor), "+r"(flag_ptr));
                    asm volatile("" : "+r"(i), "+r"(count), "+r"(base));
                }
                i--;
                value_ptr++;
                asm volatile("" : "+r"(flag_ptr), "+r"(value_ptr), "+r"(cursor));
                asm volatile("" : "+r"(i), "+r"(count), "+r"(base));
            } while (i >= 0);
        }

        {
            register unsigned int random asm("r0") = Random();
            register unsigned int scaled asm("r3");

            scaled = count;
            asm volatile("" : "+r"(scaled), "+r"(random), "+r"(base));
            scaled *= random;
            scaled >>= 16;
            scaled <<= 2;
            asm volatile("" : "+r"(scaled), "+r"(base));
            return *(int *)((char *)base + scaled);
        }
    }
}
