typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;

void Func_80160fc(void)
{
    register u8 *state asm("r7") = iwram_3001e8c;
    register unsigned int offset asm("r2") = 0xea6;
    register u8 *cursor asm("r3") = state + offset;

    asm volatile("" : "+r"(cursor));
    if (*cursor == 0) {
        register unsigned int flags asm("r4");

        offset -= 3;
        cursor = state + offset;
        asm volatile("" : "+r"(cursor));
        flags = *cursor;
        if (flags != 0) {
            register u8 *dest_value asm("r3") = (u8 *)0x06002000;
            register u8 *source asm("r5");
            register u8 *dest asm("r12");
            register unsigned int test asm("r3");
            register unsigned int one asm("r2");
            register unsigned int bit asm("r14");
            register unsigned int stride asm("r6");

            asm volatile("" : "+r"(dest_value));
            dest = dest_value;
            asm volatile("" : "+r"(dest));
            test = 1;
            asm volatile("" : "+r"(test));
            test &= flags;
            source = state;
            asm volatile("" : "+r"(source));

            if (test != 0)
                flags = 0x3f;
            flags &= 0x3f;

            one = 1;
            stride = 0x80;
            flags >>= 1;
            bit = one;
            stride <<= 1;

            do {
                register unsigned int loop_value asm("r3") = flags;
                register unsigned int loop_bit asm("r2") = bit;

                asm volatile("" : "+r"(loop_value));
                asm volatile("" : "+r"(loop_bit));
                loop_value &= loop_bit;
                if (loop_value != 0) {
                    register volatile u32 *dma asm("r3") = (volatile u32 *)0x040000d4;
                    register u8 *dma_source asm("r0") = source;
                    register u8 *dma_dest asm("r1") = dest;
                    register u32 dma_control asm("r2") = 0x84000040;

                    asm volatile(
                        "stmia\t%0!, {%1, %2, %3}\n\t"
                        "sub\t%0, #0xc"
                        : "+l"(dma)
                        : "l"(dma_source), "l"(dma_dest), "l"(dma_control)
                        : "memory");
                }

                flags >>= 1;
                source += stride;
                dest += stride;
            } while (flags != 0);

            asm volatile("" : "+r"(state));
            state[0xea3] = flags;
        }
    }
}
