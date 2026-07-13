typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *ewram_2004c00;

void Func_80f7f30(u8 *destination)
{
    register u32 r0 asm("r0") = (u32)destination;
    register u32 r1 asm("r1");
    register u32 r2 asm("r2");
    register u32 r3 asm("r3");
    register u32 r4 asm("r4");
    register u32 r5 asm("r5");
    register u32 r6 asm("r6");

    r3 = (u32)&ewram_2004c00;
    asm volatile ("" : "+r" (r3));
    r1 = 0x4404;
    asm volatile ("" : "+r" (r1));
    r2 = *(u32 *)r3;
    asm volatile ("" : "+r" (r2));
    r3 = r2 + r1;
    asm volatile ("" : "+r" (r3));
    r3 = *(u32 *)r3;
    asm volatile ("" : "+r" (r3));
    asm volatile ("" : "+r" (r1));
    r6 = r0;
    asm volatile ("" : "+r" (r6));
    r0 = 0;
    asm volatile ("" : "+r" (r0));

    if (r3 != 0) {
        r3 = 0x443c;
        asm volatile ("" : "+r" (r3));
        r4 = r2 + r3;
        asm volatile ("" : "+r" (r4));
        r3 -= 0x34;
        asm volatile ("" : "+r" (r3));
        r5 = r2 + r1;
        asm volatile ("" : "+r" (r5));
        r1 = r2 + r3;
        asm volatile ("" : "+r" (r1));
        do {
            r3 = *(u8 *)r1;
            asm volatile ("" : "+r" (r3));
            r2 = *(u32 *)r4;
            asm volatile ("" : "+r" (r2));
            *(u8 *)(r6 + r2) = (u8)r3;
            r3 = *(u32 *)r4;
            asm volatile ("" : "+r" (r3));
            r3++;
            asm volatile ("" : "+r" (r3));
            *(u32 *)r4 = r3;
            r3 = *(u32 *)r5;
            asm volatile ("" : "+r" (r3));
            r0++;
            asm volatile ("" : "+r" (r0));
            r1++;
            asm volatile ("" : "+r" (r1));
        } while (r0 != r3);
    }
}
