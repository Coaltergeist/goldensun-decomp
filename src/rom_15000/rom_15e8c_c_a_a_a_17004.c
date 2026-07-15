typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;

extern int Func_80008ac(int num, int denom);
extern int Func_80170f8(int a, int b, int c, int d);

void Func_8017004(u8 *p, int save)
{
    int (*divide)(int, int);
    int buf[3];
    s16 y0 = *(s16 *)(p + 0x18);
    register int num asm("r0") = *(s16 *)(p + 0x1a);
    int dy = num - y0;
    int t1 = y0 * *(u16 *)(p + 8);
    int x0, sx0, x1, sx1;
    int t3;

    asm volatile("" : "+r"(num));
    divide = Func_80008ac;
    num <<= 17;
    buf[0] = t1 << 16;
    buf[1] = num;
    buf[2] = divide(num, buf[0]);
    x0 = (buf[2] >> 16) + *(u16 *)(p + 0xc);

    buf[0] = dy * *(u16 *)(p + 8) << 16;
    buf[2] = divide(buf[1], buf[0]);
    t3 = y0 * *(u16 *)(p + 0xa);
    sx0 = buf[2] >> 15;

    num = *(s16 *)(p + 0x1a) << 17;
    buf[1] = num;
    buf[0] = t3 << 16;
    buf[2] = divide(num, buf[0]);
    x1 = (buf[2] >> 16) + *(u16 *)(p + 0xe);

    buf[0] = dy * *(u16 *)(p + 0xa) << 16;
    buf[2] = divide(buf[1], buf[0]);
    sx1 = buf[2] >> 15;

    Func_80170f8(x0, x1, sx0, sx1);

    if (save) {
        *(s16 *)(p + 0x1c) = x0;
        *(s16 *)(p + 0x1e) = x1;
        *(s16 *)(p + 0x20) = sx0;
        *(s16 *)(p + 0x22) = sx1;
    }
}
