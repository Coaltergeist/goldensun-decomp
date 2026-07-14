typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern int _GetFlag(int flag);
extern int GetFlag_NoArgs(void) asm("_GetFlag");
extern u16 gMapTable[] asm(".L9e488");
extern u8 gState[];

void Func_808b320(int map, int submap)
{
    register int result asm("r6");
    register int key asm("r7") = (short)((map << 4) + submap);
    register u16 *entry asm("r5");
    register unsigned int normalized_key asm("r0");
    register u32 shifted asm("r2");
    register u32 initial_value asm("r1");

    asm volatile("" : "=r"(result), "+r"(key));
    asm volatile("mov r0, #182\n\tlsl r0, r0, #1" : : : "r0");
    entry = gMapTable;
    asm volatile("" : "+r"(entry));

    if (GetFlag_NoArgs()) {
        result = 0x12;
    } else {
        asm volatile("mov r2, #0\n\t"
                     "ldrsh r3, [%3, r2]\n\t"
                     "lsl r2, r3, #16\n\t"
                     "lsr r1, r2, #16\n\t"
                     "add %3, %3, #2"
                     : "=r"(shifted), "=r"(initial_value), "=r"(normalized_key), "+r"(entry)
                     : "r"(key) : "r3");
        if (initial_value != 0) {
            asm volatile("lsl r3, %1, #16\n\tlsr r0, r3, #16"
                         : "=r"(normalized_key) : "r"(key) : "r3");
        if (initial_value != normalized_key) {
            register u32 high_bit asm("r4");
            register u32 low_mask asm("r1");
            register u32 match_key asm("r12");
            asm volatile("mov r4, #128\n\t"
                         "ldr r1, =4095\n\t"
                         "lsl r4, r4, #8\n\t"
                         "mov r12, r0"
                         : "=r"(high_bit), "=r"(low_mask), "=r"(match_key)
                         : "r"(normalized_key));
            do {
                register u32 current asm("r3");
                asm volatile("lsr r2, r2, #16" : "+r"(shifted));
                if (shifted & high_bit)
                    result = shifted & low_mask;
                asm volatile("mov r2, #0\n\t"
                             "ldrsh r3, [%2, r2]\n\t"
                             "lsl r2, r3, #16\n\t"
                             "lsr r3, r2, #16\n\t"
                             "add %2, %2, #2"
                             : "=r"(shifted), "=r"(current), "+r"(entry));
                if (current == 0 || current == match_key)
                    break;
            } while (1);
        }
        }
    }

    asm volatile("ldr r3, =gState\n\t"
                 "mov r2, #247\n\t"
                 "lsl r2, r2, #1\n\t"
                 "add r3, r3, r2\n\t"
                 "strh %0, [r3]"
                 : : "r"(result) : "r2", "r3");
}
