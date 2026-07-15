typedef unsigned char u8;
typedef unsigned int u32;

typedef unsigned int (*FillVram)(unsigned int address, unsigned int size, unsigned int value);

extern unsigned int iwram_3001e8c;
extern int Func_80170f8(int a, int b, int c, int d);
extern int Func_8017248(int a, int b, int c, int d, int e);
extern unsigned int Func_80008d8(void);

void Func_8016230(u8 *p)
{
    u8 *work = (u8 *)iwram_3001e8c;
    int v = *(unsigned short *)(p + 0xa);
    int flags = *(unsigned short *)(p + 0x16);
    int x, y, z;
    int zero = 0;
    FillVram fill;

    *(unsigned short *)(p + 0x1a) = zero;
    x = *(unsigned short *)(p + 0xc);
    y = *(unsigned short *)(p + 0xe);
    z = *(unsigned short *)(p + 8);

    if (flags & 8) {
        if (flags & 0x20) {
            register int a0 asm("r0") = x;
            register int a1 asm("r1") = y;
            register int a2 asm("r2") = z;
            register int a3 asm("r3") = v;
            asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2), "+r"(a3));
            Func_80170f8(a0, a1, a2, a3);
            fill = (FillVram)Func_80008d8;
            fill(0x6002500, 0xf00, 0x44444444);
        } else {
            fill = (FillVram)Func_80008d8;
            fill(0x6002500, 0xf00, 0);
        }
        Func_8017248(x, y, z, v, 0);
    } else {
        Func_80170f8(x, y, z, v);
    }

    work[0xea3] = 1;
}
