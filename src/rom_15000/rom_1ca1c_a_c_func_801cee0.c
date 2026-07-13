typedef unsigned char u8;
typedef unsigned short u16;

extern u8 gState[];

void Func_801cee0(const u8 *object)
{
    register u8 *value asm("r1");
    register unsigned int current asm("r2");

    {
        register unsigned int object_offset asm("r2") = 0x574;

        asm volatile("" : "+r"(object_offset));
        object += object_offset;
        asm volatile("" : "+r"(object));
    }

    switch (*(const u16 *)object) {
    case 0:
        {
            register u8 *state asm("r3") = gState;
            register unsigned int offset asm("r2") = 0x83;

            asm volatile("" : "+r"(state));
            asm volatile("" : "+r"(offset));
            offset <<= 2;
            asm volatile("" : "+r"(offset));
            value = state + offset;
            asm volatile("" : "+r"(value));
            current = *value;
            asm volatile("" : "+r"(current));
        }
        {
            register unsigned int compare asm("r3") = current;

            asm volatile("" : "+r"(compare));
            if (compare > 1)
                goto done;
        }
        asm volatile("" ::: "memory");
        goto increment;

    case 1:
        {
            register u8 *state asm("r3") = gState;
            register unsigned int offset asm("r2") = 0x205;

            asm volatile("" : "+r"(state));
            asm volatile("" : "+r"(offset));
            value = state + offset;
            asm volatile("" : "+r"(value));
            current = *value;
            asm volatile("" : "+r"(current));
        }
        {
            register unsigned int compare asm("r3") = current;

            asm volatile("" : "+r"(compare));
            if (compare > 0x17)
                goto done;
        }
        asm volatile("" ::: "memory");
        goto increment;

    case 2:
        {
            register u8 *state asm("r3") = gState;
            register unsigned int offset asm("r2") = 0x206;

            asm volatile("" : "+r"(state));
            asm volatile("" : "+r"(offset));
            value = state + offset;
            asm volatile("" : "+r"(value));
            current = *value;
            asm volatile("" : "+r"(current));
        }
        {
            register unsigned int compare asm("r3") = current;

            asm volatile("" : "+r"(compare));
            if (compare > 0xe)
                goto done;
        }
        goto increment;

    default:
        goto done;
    }

increment:
    {
        register unsigned int next asm("r3") = current + 1;

        asm volatile("" : "+r"(next));
        *value = next;
    }
done:
    return;
}
