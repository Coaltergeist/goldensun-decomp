typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *ewram_2004c00;

void Func_80f7df0(int index)
{
    register u32 r0 asm("r0") = (u32)index;
    register u32 r1 asm("r1");
    register u32 r2 asm("r2");
    register u32 r3 asm("r3");
    register u8 *r4 asm("r4");
    register u32 r5 asm("r5");

    r3 = (u32)&ewram_2004c00;
    asm volatile ("" : "+r" (r3));
    r1 = r0 << 1;
    asm volatile ("" : "+r" (r1));
    r4 = *(u8 **)r3;
    asm volatile ("" : "+r" (r4));
    r3 = 0x3404;
    asm volatile ("" : "+r" (r3));
    r1 += r0;
    asm volatile ("" : "+r" (r1));
    r0 <<= 2;
    asm volatile ("" : "+r" (r0));
    r0 += r3;
    asm volatile ("" : "+r" (r0));
    r2 = *(u32 *)(r4 + r0);
    asm volatile ("" : "+r" (r2));
    r0 = 0xc0;
    asm volatile ("" : "+r" (r0));
    r2 <<= 2;
    asm volatile ("" : "+r" (r2));
    r1 <<= 2;
    asm volatile ("" : "+r" (r1));
    r3 = (u32)(r4 + r2);
    asm volatile ("" : "+r" (r3));
    r0 <<= 6;
    asm volatile ("" : "+r" (r0));
    r3 += r0;
    asm volatile ("" : "+r" (r3));
    r5 = r1 + 4;
    asm volatile ("" : "+r" (r5));
    *(u32 *)(r4 + r5) = r3;
    r2 += r0;
    asm volatile ("" : "+r" (r2));
    r3 = *(u32 *)(r4 + r2);
    asm volatile ("" : "+r" (r3));
    *(u32 *)(r4 + r1) = r3;
    r3 = (u32)(r4 + r1);
    asm volatile ("" : "+r" (r3));
    *(u32 *)(r4 + r2) = r3;
    r2 = *(u32 *)r3;
    asm volatile ("" : "+r" (r2));
    if (r2 != 0)
        *(u32 *)(r2 + 4) = r3;
}
