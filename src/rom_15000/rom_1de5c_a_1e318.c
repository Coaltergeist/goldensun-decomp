typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001e8c;

void Func_801e318(void)
{
    register u8 *base asm("r5");
    register u16 *cursor asm("r4");
    register u32 flag asm("r7");
    register s32 outer asm("r6");
    register s32 bound asm("r9");
    register u32 mask asm("sl");
    register u32 lo asm("r8");
    register u32 hi asm("lr");
    register u32 bytemask asm("ip");
    register s32 counter asm("r0");
    register u32 val asm("r1");
    u8 **addrp;
    register u8 *p asm("r2");
    register s32 k asm("r6");
    u32 tmp;

    addrp = &iwram_3001e8c;
    asm volatile("" : "+r"(addrp));
    tmp = 0x1e;
    asm volatile("" : "+r"(tmp));
    base = *addrp;
    asm volatile("" : "+r"(base));
    asm volatile("mov %0, %1" : "=r"(bound) : "r"(tmp), "r"(base));
    flag = base[0xea2];
    asm volatile("" : "+r"(flag));
    cursor = (u16 *)base;
    asm volatile("" : "+r"(cursor));
    outer = 0x14;
    asm volatile("" : "+r"(outer));

    do {
        if (bound == 0) {
            goto skip_inner;
        }
        mask = 0x3ff;
        lo = 0x1ff;
        counter = bound;
        hi = 0x27f;
        bytemask = 0xff;
        asm volatile("" : "+r"(mask), "+r"(lo), "+r"(counter), "+r"(hi), "+r"(bytemask));
        do {
            val = mask & *cursor;
            cursor++;
            if ((u32)(val - 0x80) < 0x80 ||
                (flag != 0 && val > lo && val <= hi)) {
                register u32 x1 asm("r3");
                register u32 x2 asm("r3");
                register u8 v asm("r3");
                register u32 two asm("r2");
                val = val & bytemask;
                x1 = 0x80;
                asm volatile("" : "+r"(x1));
                val ^= x1;
                x2 = 0xda0;
                asm volatile("" : "+r"(x2));
                val += x2;
                v = base[val];
                asm volatile("" : "+r"(v));
                two = 2;
                asm volatile("" : "+r"(two));
                v |= two;
                base[val] = v;
                asm volatile("" ::: "memory");
            }
            counter--;
            asm volatile("" : "+r"(counter), "+r"(cursor));
        } while (counter != 0);
skip_inner:
        outer--;
        asm volatile("" : "+r"(outer));
    } while (outer != 0);

    {
        register u32 off asm("r3");
        u8 zero;
        off = 0xda0;
        asm volatile("" : "+r"(off));
        zero = 0;
        asm volatile("" : "+r"(zero));
        k = 0xff;
        asm volatile("" : "+r"(k));
        p = base + off;
        asm volatile("" : "+r"(p));
        do {
            if (*p == 1) {
                *p = zero;
            }
            k--;
            p++;
            asm volatile("" : "+r"(k), "+r"(p));
        } while (k >= 0);
    }
}
