typedef unsigned short u16;
typedef unsigned int u32;

int Func_80f4100(const u16 *source, u16 *destination, int scale, int count)
{
    register u32 r0 asm("r0") = (u32)source;
    register u32 r1 asm("r1") = (u32)destination;
    register u32 r2 asm("r2") = (u32)scale;
    register u32 r3 asm("r3") = (u32)count;
    register u32 r4 asm("r4");
    register u32 r5 asm("r5");
    register u32 r6 asm("r6");
    register u32 r7 asm("r7");
    register u32 r8 asm("r8");
    register u32 r12 asm("r12");
    register u32 r14 asm("r14");

    r7 = r0;
    asm volatile ("" : "+r" (r7));
    r6 = r1;
    asm volatile ("" : "+r" (r6));
    r5 = r2;
    asm volatile ("" : "+r" (r5));

    if ((int)r3 > 0) {
        r1 = 0x1f;
        asm volatile ("" : "+r" (r1));
        r8 = r1;
        asm volatile ("" : "+r" (r8));
        r2 = 0xf8;
        asm volatile ("" : "+r" (r2));
        r1 = 0xf8;
        asm volatile ("" : "+r" (r1));
        r2 <<= 2;
        asm volatile ("" : "+r" (r2));
        r1 <<= 7;
        asm volatile ("" : "+r" (r1));
        r14 = r2;
        asm volatile ("" : "+r" (r14));
        r12 = r1;
        asm volatile ("" : "+r" (r12));
        r0 = r3;
        asm volatile ("" : "+r" (r0));

        do {
            r4 = *(u16 *)r7;
            asm volatile ("" : "+r" (r4));
            r2 = r8;
            asm volatile ("" : "+r" (r2));
            r3 = r4;
            asm volatile ("" : "+r" (r3));
            r3 &= r2;
            asm volatile ("" : "+r" (r3));
            r1 = r14;
            asm volatile ("" : "+r" (r1));
            r2 = r4;
            asm volatile ("" : "+r" (r2));
            r2 &= r1;
            asm volatile ("" : "+r" (r2));
            r3 *= r5;
            asm volatile ("" : "+r" (r3));
            r1 = r12;
            asm volatile ("" : "+r" (r1));
            r2 *= r5;
            asm volatile ("" : "+r" (r2));
            r1 &= r4;
            asm volatile ("" : "+r" (r1));
            r1 *= r5;
            asm volatile ("" : "+r" (r1));
            r4 = r3 >> 16;
            asm volatile ("" : "+r" (r4));
            r3 = r8;
            asm volatile ("" : "+r" (r3));
            r4 &= r3;
            asm volatile ("" : "+r" (r4));
            r2 >>= 16;
            asm volatile ("" : "+r" (r2));
            r3 = r14;
            asm volatile ("" : "+r" (r3));
            r2 &= r3;
            asm volatile ("" : "+r" (r2));
            r4 |= r2;
            asm volatile ("" : "+r" (r4));
            r1 >>= 16;
            asm volatile ("" : "+r" (r1));
            r2 = r12;
            asm volatile ("" : "+r" (r2));
            r1 &= r2;
            asm volatile ("" : "+r" (r1));
            r4 |= r1;
            asm volatile ("" : "+r" (r4));
            r0--;
            asm volatile ("" : "+r" (r0));
            *(u16 *)r6 = (u16)r4;
            r7 += 2;
            asm volatile ("" : "+r" (r7));
            r6 += 2;
            asm volatile ("" : "+r" (r6));
        } while (r0 != 0);
    }
    return 0;
}
