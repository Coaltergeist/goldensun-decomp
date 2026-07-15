typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 iwram_3001f1c[];
extern volatile u16 ewram_2002010;
extern u16 ewram_200200c;
extern u32 gKeyHeld;
extern int Func_80056cc(void);
extern int Func_8005c68(void);
extern void Func_8005cf8(void);

int Func_801f77c(void)
{
    register int result asm("r6");
    register int count asm("r5");
    register int ready asm("r0") = Func_80056cc();

    asm volatile("mov r6, #9\n\tmov r5, #0\n\tneg r6, r6"
                 : "=r" (result), "=r" (count) : "r" (ready));

    if (ready == 0) {
        register u8 *entry asm("r1");
        register u16 *first asm("r7");
        register u16 *second asm("r2");
        register int one asm("r4");
        register int remaining asm("r0");
        register int loaded asm("r0") = Func_8005c68();

        asm volatile("ldr r3, =iwram_3001f1c\n\tldr r1, [r3]\n\tldr r3, =ewram_2002010\n\tldr r2, =ewram_200200c\n\tstrh r5, [r3]\n\tmov r7, r3\n\tldr r3, =0x1070\n\tstrh r5, [r2]\n\tldr r4, 9f\n\tmov r6, r0\n\tadd r1, r3\n\tmov r0, #2"
                     : "=r" (entry), "=r" (first), "=r" (second), "=r" (one),
                       "=r" (remaining), "=r" (result)
                     : "r" (loaded), "r" (count) : "r3", "memory");
        do {
            register int member asm("r3");
            asm volatile("mov r3, #1\n\tldrsb r3, [r1, r3]"
                         : "=r" (member) : "r" (entry));
            if (member != 0) {
                *first = one;
                count++;
            }
            asm volatile("mov r3, #2\n\tldrsb r3, [r1, r3]"
                         : "=r" (member) : "r" (entry));
            if (member != 0)
                *second = one;
            remaining--;
            entry += 0x40;
        } while (remaining >= 0);

        {
            register u32 held asm("r3");
            register u32 mask asm("r2");
            asm volatile("ldr r3, =gKeyHeld\n\tmov r2, #0x90\n\tldr r3, [r3]\n\tb 1f\n\t.align 2\n\t9: .word 1\n\t.ltorg\n\t1:\n\tlsl r2, #1\n\tand r3, r2"
                         : "=r" (held), "=r" (mask));
            if (held != mask)
                ewram_2002010 = 0;
        }
    }

    Func_8005cf8();
    if (result == 0)
        goto fallback;
    if (count != result)
        goto fallback;
    {
        register int answer asm("r0") = result + 100;
        goto done;
        asm volatile(".align 2\n\t.ltorg");
fallback:
        answer = result;
done:
        return answer;
    }
}
