typedef unsigned char u8;

extern u8 *iwram_3001f2c;
extern int Func_80ae778(int excluded, int index);

int Func_80ae714(u8 *output, int excluded)
{
    register u8 *state asm("r8") = iwram_3001f2c;
    register int limit asm("r3") = state[0x219];
    register int excluded_index asm("r7");
    register int index asm("r6");
    register u8 *cursor asm("r5");
    register int total asm("r2") = 0;

    asm volatile("" : "+r" (state), "+r" (limit), "+r" (total));
    asm volatile("sub sp, #4" : : : "memory");
    excluded_index = excluded;
    index = 0;
    asm volatile("" : "+r" (excluded_index), "+r" (index));
    if (total < limit) {
        cursor = output;
        do {
            *cursor = 0;
            if (index != excluded_index) {
                int result;
                register int call_excluded asm("r0") = excluded_index;
                register int call_index asm("r1") = index;
                asm volatile("" : "+r" (call_excluded), "+r" (call_index));
                asm volatile("str r2, [sp]" : : : "memory");
                result = Func_80ae778(call_excluded, call_index);
                asm volatile("ldr r2, [sp]" : : : "memory");
                if (result == 0) {
                    *cursor = 1;
                    total++;
                }
            }
            index++;
            cursor++;
        } while (index < state[0x219]);
    }
    {
        register int result asm("r0") = total;
        asm volatile("" : "+r" (result));
        asm volatile("add sp, #4" : : : "memory");
        return result;
    }
}
