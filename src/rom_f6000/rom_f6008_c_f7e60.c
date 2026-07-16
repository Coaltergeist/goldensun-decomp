typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void Func_80f7e34(s32);
extern void Func_80f7df0(void);
extern u8 *ewram_2004c00;

void Func_80f7e60(s32 arg0_in, s32 arg1_in, s32 arg2_in)
{
    register s32 p0 asm("r0") = arg0_in;
    register s32 p1 asm("r1") = arg1_in;
    register s32 p2 asm("r2") = arg2_in;
    register s32 r8v asm("r8");
    register s32 r6v asm("r6");
    register s32 r10v asm("r10");
    register s32 r11v asm("r11");

    asm volatile(
        "mov %0, %5\n\t"
        "movs %1, #0\n\t"
        "mov %2, %4\n\t"
        "mov %3, %6"
        : "=r"(r8v), "=r"(r6v), "=r"(r10v), "=r"(r11v)
        : "r"(p0), "r"(p1), "r"(p2)
    );

    if (r6v < r8v) {
        register s32 r0v asm("r0");
        register s32 r7v asm("r7");
        register s32 r9v asm("r9");
        register s32 r3v asm("r3");
        register s32 r2v asm("r2");
        register s32 r5v asm("r5");
        register s32 r1v asm("r1");
        register s32 r4v asm("r4");

        r0v = 0x3ff;
        asm volatile("" : "+r"(r0v));
        r7v = 0x92;
        asm volatile("" : "+r"(r7v));
        r7v = r7v << 1;
        asm volatile("" : "+r"(r7v));
        r9v = r0v;
        asm volatile("" : "+r"(r9v), "+r"(r0v));
        r7v = r7v + r10v;
        asm volatile("" : "+r"(r7v), "+r"(r10v));

        do {
            r3v = r9v;
            asm volatile("" : "+r"(r3v), "+r"(r9v));
            r0v = r7v;
            asm volatile("" : "+r"(r0v), "+r"(r7v));
            r2v = r10v;
            asm volatile("" : "+r"(r2v), "+r"(r10v));
            r0v = r0v & r3v;
            asm volatile("" : "+r"(r0v), "+r"(r3v));
            r5v = r2v + r6v;
            asm volatile("" : "+r"(r5v), "+r"(r2v), "+r"(r6v));

            Func_80f7e34(r0v);

            r3v = (s32)&ewram_2004c00;
            asm volatile("" : "+r"(r3v));
            r0v = 0x4438;
            asm volatile("" : "+r"(r0v));
            r1v = *(s32 *)r3v;
            asm volatile("" : "+r"(r1v), "+r"(r3v));
            r3v = r1v + r0v;
            asm volatile("" : "+r"(r3v), "+r"(r1v), "+r"(r0v));
            r2v = *(s32 *)r3v;
            asm volatile("" : "+r"(r2v), "+r"(r3v));
            r0v = r11v;
            asm volatile("" : "+r"(r0v), "+r"(r11v));
            r4v = *(u8 *)(r0v + r2v);
            asm volatile("" : "+r"(r4v), "+r"(r0v), "+r"(r2v));
            r2v = r2v + 1;
            asm volatile("" : "+r"(r2v));
            r0v = 0x4440;
            asm volatile("" : "+r"(r0v));
            *(s32 *)r3v = r2v;
            r3v = r1v + r0v;
            asm volatile("" : "+r"(r3v), "+r"(r1v), "+r"(r0v));
            r3v = *(s32 *)r3v;
            asm volatile("" : "+r"(r3v));
            if (r2v == r3v) {
                r2v = r9v;
                asm volatile("" : "+r"(r2v), "+r"(r9v));
                r5v = r5v & r2v;
                asm volatile("" : "+r"(r5v), "+r"(r2v));
                r0v = 0x3404;
                asm volatile("" : "+r"(r0v));
                r3v = r5v << 2;
                asm volatile("" : "+r"(r3v), "+r"(r5v));
                r2v = 1;
                asm volatile("" : "+r"(r2v));
                r3v = r3v + r0v;
                asm volatile("" : "+r"(r3v), "+r"(r0v));
                r2v = -r2v;
                asm volatile("" : "+r"(r2v));
                *(s32 *)(r1v + r3v) = r2v;
                break;
            }
            r0v = r9v;
            asm volatile("" : "+r"(r0v), "+r"(r9v));
            r0v = r0v & r5v;
            asm volatile("" : "+r"(r0v), "+r"(r5v));
            r2v = 0x3404;
            asm volatile("" : "+r"(r2v));
            r3v = r0v << 2;
            asm volatile("" : "+r"(r3v), "+r"(r0v));
            r3v = r3v + r2v;
            asm volatile("" : "+r"(r3v), "+r"(r2v));
            *(s32 *)(r1v + r3v) = r4v;
            r6v = r6v + 1;
            asm volatile("" : "+r"(r6v));

            Func_80f7df0();
            asm volatile("" : "+r"(r7v));

            r7v = r7v + 1;
            asm volatile("" : "+r"(r7v));
        } while (r6v < r8v);
    }
    r6v = r6v + 1;
    asm volatile("" : "+r"(r6v));
    if (r6v < r8v) {
        register s32 r0v asm("r0");
        register s32 r7v asm("r7");
        register s32 r9v asm("r9");
        register s32 r3v asm("r3");
        register s32 r2v asm("r2");
        register s32 r5v asm("r5");
        register s32 r11v2 asm("r11");

        r3v = 0x3ff;
        asm volatile("" : "+r"(r3v));
        r0v = (s32)&ewram_2004c00;
        asm volatile("" : "+r"(r0v));
        r7v = 1;
        asm volatile("" : "+r"(r7v));
        r11v2 = r3v;
        asm volatile("" : "+r"(r11v2), "+r"(r3v));
        r9v = r0v;
        asm volatile("" : "+r"(r9v), "+r"(r0v));
        r7v = -r7v;
        asm volatile("" : "+r"(r7v));

        do {
            r2v = r10v;
            asm volatile("" : "+r"(r2v), "+r"(r10v));
            r5v = r2v + r6v;
            asm volatile("" : "+r"(r5v), "+r"(r2v), "+r"(r6v));
            r3v = r11v2;
            asm volatile("" : "+r"(r3v), "+r"(r11v2));
            r5v = r5v & r3v;
            asm volatile("" : "+r"(r5v), "+r"(r3v));
            r0v = r5v;
            asm volatile("" : "+r"(r0v), "+r"(r5v));

            Func_80f7e34(r0v);

            r0v = r9v;
            asm volatile("" : "+r"(r0v), "+r"(r9v));
            r2v = 0x3404;
            asm volatile("" : "+r"(r2v));
            r3v = *(s32 *)r0v;
            asm volatile("" : "+r"(r3v), "+r"(r0v));
            r5v = r5v << 2;
            asm volatile("" : "+r"(r5v));
            r5v = r5v + r2v;
            asm volatile("" : "+r"(r5v), "+r"(r2v));
            r6v = r6v + 1;
            asm volatile("" : "+r"(r6v));
            *(s32 *)(r3v + r5v) = r7v;
        } while (r6v < r8v);
    }
}
