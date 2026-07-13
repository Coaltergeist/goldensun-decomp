typedef unsigned int u32;

extern u32 gBuffer[];

void Func_800fa8c(void)
{
    register int count asm("r4") = 0x4000;
    register u32 previous asm("r0") = (u32)-1;
    register u32 *cursor asm("r5") = gBuffer;
    register u32 mask asm("r6") = 0xfff;

    do {
        register u32 raw asm("r1") = *cursor++;
        register u32 masked asm("r2") = raw & mask;
        register u32 sum asm("r3");

        asm volatile("" : "+r"(raw), "+r"(masked));
        if (masked == mask) {
            if (previous != masked) {
                previous++;
            }
            sum = raw + previous;
            asm volatile("" : "+r"(sum));
            raw = sum - masked;
            asm volatile("" : "+r"(raw));
            cursor[-1] = raw;
        }
    } while (--count != 0);
}
