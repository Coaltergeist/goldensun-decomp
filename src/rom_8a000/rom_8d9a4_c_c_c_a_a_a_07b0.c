typedef unsigned int u32;

extern u32 *iwram_3001ecc;

void Func_80907b0(u32 value_arg)
{
    register u32 *base asm("r5");
    register u32 value asm("r4");

    asm volatile("ldr r3, =iwram_3001ecc\n\t"
                 "sub sp, sp, #4\n\t"
                 "ldr r5, [r3]\n\t"
                 "ldr r3, =0xf000f000\n\t"
                 "mov r4, r0\n\t"
                 "mov r0, sp\n\t"
                 "str r3, [r0]\n\t"
                 "ldr r1, =0x06002000\n\t"
                 "ldr r3, =0x040000d4\n\t"
                 "ldr r2, =0x85000140\n\t"
                 "stmia r3!, {r0, r1, r2}\n\t"
                 "sub r3, r3, #12"
                 : "=r"(base), "=r"(value)
                 : : "r0", "r1", "r2", "r3");

    {
        register int sentinel asm("r2");
        asm volatile("mov r2, #1\n\tneg r2, r2" : "=r"(sentinel));
    if (value != (u32)sentinel) {
        register u32 pattern asm("r1") = 0;
        register int count asm("r3") = 7;
        register u32 *dst asm("r2");

        do {
            pattern <<= 4;
            count--;
            pattern |= value;
        } while (count >= 0);

        dst = (u32 *)((char *)base + 0x508);
        count = 7;
        do {
            count--;
            *dst++ = pattern;
        } while (count >= 0);

        asm volatile("mov r2, #161\n\t"
                     "lsl r2, r2, #3\n\t"
                     "mov r1, #192\n\t"
                     "add r0, r5, r2\n\t"
                     "ldr r3, =0x040000d4\n\t"
                     "lsl r1, r1, #19\n\t"
                     "ldr r2, =0x84000008\n\t"
                     "stmia r3!, {r0, r1, r2}\n\t"
                     "sub r3, r3, #12"
                     : : "r"(base)
                     : "r0", "r1", "r2", "r3");
    }
    }
    asm volatile("add sp, sp, #4");
}
