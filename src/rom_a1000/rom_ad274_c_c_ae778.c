typedef unsigned char u8;
typedef signed char s8;

extern u8 *iwram_3001f2c;
extern void Func_80ae7fc(u8 *counts);

int Func_80ae778(int excluded, int included)
{
    register u8 *loaded_state asm("r3");
    register u8 *state asm("r8");
    register int excluded_index asm("r5");
    register int included_index asm("r6");
    register u8 *count_base asm("r7");
    register u8 *call_counts asm("r0");
    register int valid asm("r10");
    register unsigned int outer asm("r5");
    register u8 *party_count_ptr asm("r2");
    register unsigned int party_count asm("r3");

    asm volatile("ldr r3, =iwram_3001f2c\n\t"
                 "sub sp, #0x10\n\t"
                 "mov r7, sp\n\t"
                 "ldr r3, [r3]"
                 : "=r"(loaded_state), "=r"(count_base));
    asm volatile("mov r5, r0\n\t"
                 "mov r0, r7\n\t"
                 "mov r6, r1\n\t"
                 "mov r8, r3"
                 : "=r"(excluded_index), "=r"(call_counts),
                   "=r"(included_index), "=r"(state)
                 : "r"(excluded), "r"(included), "r"(count_base),
                   "r"(loaded_state));
    Func_80ae7fc(call_counts);
    {
        register int value asm("r3") = count_base[excluded_index];
        value -= 1;
        count_base[excluded_index] = value;
    }
    {
        register int value asm("r3") = count_base[included_index];
        asm volatile("ldr r2, =0x219\n\t"
                     "add r3, #1\n\t"
                     "strb r3, [r7, r6]\n\t"
                     "add r2, r8"
                     : "+r"(value), "=r"(party_count_ptr)
                     : "r"(count_base), "r"(included_index), "r"(state));
    }
    asm volatile("mov r3, #1\n\t"
                 "mov r10, r3\n\t"
                 "ldrb r3, [r2]\n\t"
                 "mov r5, #0"
                 : "=r"(valid), "=r"(party_count), "=r"(outer)
                 : "r"(party_count_ptr));
    if (outer < party_count) {
        register unsigned int limit asm("r12");
        register unsigned int saved_limit asm("r14");
        register u8 *party_base asm("r0");
        asm volatile("mov r12, r3\n\t"
                     "mov r0, r2\n\t"
                     "mov r14, r12"
                     : "=r"(limit), "=r"(party_base), "=r"(saved_limit)
                     : "r"(party_count), "r"(party_count_ptr));
        do {
            register unsigned int inner asm("r1") = outer;
            if (outer < limit) {
                register unsigned int inner_limit asm("r6") = *party_base;
                register s8 *values asm("r4") = (s8 *)count_base;
                do {
                    register unsigned int increment asm("r3");
                    asm volatile("add r3, r1, #1\n\t"
                                 "lsl r3, r3, #24\n\t"
                                 "lsr r1, r3, #24"
                                 : "=r"(increment), "+r"(inner));
                    if (inner >= inner_limit)
                        break;
                    if ((unsigned int)(values[outer] - values[inner] + 1) > 2) {
                        valid = 0;
                        break;
                    }
                } while (1);
            }
            {
                register unsigned int increment asm("r3");
                asm volatile("add r3, r5, #1\n\t"
                             "lsl r3, r3, #24\n\t"
                             "lsr r5, r3, #24"
                             : "=r"(increment), "+r"(outer));
            }
        } while (outer < saved_limit);
    }
    {
        register int result asm("r0");
        asm volatile("mov r0, r10\n\t"
                     "add sp, #0x10"
                     : "=r"(result)
                     : "r"(valid));
        return result;
    }
}
