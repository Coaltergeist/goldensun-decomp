typedef unsigned int u32;

typedef void (*FillFunc)(void);

extern const u32 gPatternTable[] asm(".L37250");
extern void Func_80008d8(void);

void *Func_8021848(void)
{
    register const u32 *patterns asm("r8");
    register FillFunc fill asm("r10");
    register int group asm("r7");

    asm volatile("ldr r2, =.L37250\n\tldr r3, =Func_80008d8\n\t"
                 "mov r7, #0\n\tmov r8, r2\n\tmov r10, r3"
                 : "=r"(patterns), "=r"(fill), "=r"(group));
    do {
        register int row asm("r6");
        register u32 *base asm("r5");
        asm volatile("lsl r3, r7, #1\n\tadd r3, r7\n\t"
                     "ldr r2, =0x6006280\n\tlsl r3, #7\n\t"
                     "mov r6, #0\n\tadd r5, r3, r2"
                     : "=r"(base), "=r"(row) : "r"(group)
                     : "r2", "r3");

        do {
            register int column asm("r4");
            register u32 *word asm("r0");
            register u32 fillValue asm("r2");

            asm volatile("mov r0, r5\n\tmov r1, #0x40\n\t"
                         "ldr r2, =0x44444444"
                         : "=r"(word), "=r"(fillValue) : "r"(base));
            asm volatile("bl _call_via_r10" : : "r"(fill), "r"(word),
                         "r"(fillValue) : "r0", "r1", "r2", "r3", "memory");
            asm volatile("mov r4, #1\n\tadd r0, r5, #4"
                         : "=r"(column), "+r"(word) : "r"(base));
            do {
                register int pattern asm("r1") = row;
                if (group == 1 && column <= 1)
                    continue;
                if (group == 0 && row > column - 2) {
                    pattern = column - 2;
                    if (pattern < 0)
                        asm volatile("mov r1, #0" : "=r"(pattern));
                }
                asm volatile(
                    "lsl r1, #3\n\tmov r3, r8\n\tldr r3, [r3, r1]\n\t"
                    "ldr r2, [r0]\n\teor r2, r3\n\tstr r2, [r0]\n\t"
                    "add r1, #4\n\tmov r3, r8\n\tldr r2, [r0, #0x20]\n\t"
                    "ldr r1, [r3, r1]\n\teor r2, r1\n\tstr r2, [r0, #0x20]"
                    : "+r"(pattern) : "r"(word), "r"(patterns)
                    : "r2", "r3", "memory");
            } while (++column <= 7 && (word++, 1));
            row++;
            base += 0x10;
        } while (row <= 5);
        group++;
    } while (group <= 1);
    {
        register void *result asm("r0");
        asm volatile("" : "=r"(result));
        return result;
    }
}
