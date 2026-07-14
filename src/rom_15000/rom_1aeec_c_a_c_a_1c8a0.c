typedef unsigned short u16;
typedef unsigned int u32;

void Func_801c8a0(int *first_arg, int *second_arg, const u16 *table_arg)
{
    register int *first asm("r6");
    register int *second asm("r14");
    register const u16 *table asm("r7");
    register u32 match_low asm("r2");
    register u32 match_high asm("r0");
    register int index asm("r1");
    register int limit asm("r5");
    register const u16 *entry asm("r4");

    asm volatile("mov r3, #0\n\t"
                 "mov r6, r0\n\t"
                 "str r3, [r6]\n\t"
                 "mov r7, r2\n\t"
                 "str r3, [r1]\n\t"
                 "mov r2, #136\n\t"
                 "ldr r3, =gState\n\t"
                 "lsl r2, r2, #2\n\t"
                 "add r3, r3, r2\n\t"
                 "ldrh r3, [r3]\n\t"
                 "ldr r2, =1023\n\t"
                 "ldr r5, =447\n\t"
                 "mov r14, r1\n\t"
                 "and r2, r2, r3\n\t"
                 "mov r1, #0\n\t"
                 "lsr r0, r3, #10\n\t"
                 "mov r4, r7"
                 : "=r"(first), "=r"(second), "=r"(table),
                   "=r"(match_low), "=r"(match_high),
                   "=r"(index), "=r"(limit), "=r"(entry)
                 : : "r3");

    do {
        if (entry[1] == match_low && entry[0] == match_high) {
            *first = index;
            break;
        }
        index++;
        entry += 2;
    } while (index <= limit);

    {
        register volatile u16 *packed_ptr asm("r12");
        register u32 mask asm("r6");
        register const u16 *scan asm("r0");
        register u32 packed asm("r4");
        register u32 masked asm("r3");
        register u32 table_part asm("r2");
        register u32 packed_high asm("r3");

        asm volatile("ldr r3, =ewram_2000462\n\t"
                     "ldr r6, =1023\n\t"
                     "ldr r5, =447\n\t"
                     "mov r1, #0\n\t"
                     "mov r12, r3\n\t"
                     "mov r0, r7"
                     : "=r"(packed_ptr), "=r"(mask), "=r"(limit),
                       "=r"(index), "=r"(scan)
                     : "r"(table) : "r3");
        do {
            asm volatile("mov r2, r12\n\t"
                         "ldrh r4, [r2]\n\t"
                         "mov r3, r6\n\t"
                         "ldrh r2, [r0, #2]\n\t"
                         "and r3, r3, r4"
                         : "=r"(packed), "=r"(masked), "=r"(table_part)
                         : "r"(packed_ptr), "r"(mask), "r"(scan));
            if (table_part == masked) {
                asm volatile("ldrh r2, [r0]\n\tlsr r3, r4, #10"
                             : "=r"(table_part), "=r"(packed_high)
                             : "r"(scan), "r"(packed));
                if (table_part == packed_high) {
                    *second = index;
                    break;
                }
            }
            index++;
            scan += 2;
        } while (index <= limit);
    }
}
