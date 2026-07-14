extern unsigned int iwram_3001e70;
extern void *galloc_ewram(unsigned int slot, unsigned int size);
extern int Func_80008ac(int num, int denom);
extern void Func_80935d4(void);
extern void StartTask(void (*task)(void), int priority);

void Func_80936a0(int param1, int param2)
{
    unsigned char *base = (unsigned char *)iwram_3001e70;
    register unsigned char *p asm("r0") = (unsigned char *)galloc_ewram(0x1b, 0xccc);
    register unsigned int off19e asm("r1");
    register short *addr19e asm("r3");

    asm volatile("" : "+r"(p));
    off19e = 0xcf;
    asm volatile("" : "+r"(off19e));
    off19e = off19e << 1;
    asm volatile("" : "+r"(off19e));
    addr19e = (short *)(p + off19e);
    asm volatile("" : "+r"(addr19e));

    if (*addr19e == 3) {
        int (*divide)(int, int) = Func_80008ac;
        int result = divide(param1, 0x10000);

        {
            register unsigned int t1 asm("r3");
            register unsigned int *addr350 asm("r1");
            register unsigned int *addr354 asm("r2");

            t1 = 0xd4;
            asm volatile("" : "+r"(t1));
            t1 = t1 << 2;
            asm volatile("" : "+r"(t1));
            addr350 = (unsigned int *)(base + t1);
            asm volatile("" : "+r"(addr350), "+r"(t1));
            t1 = t1 + 4;
            asm volatile("" : "+r"(t1));
            addr354 = (unsigned int *)(base + t1);
            asm volatile("" : "+r"(addr354), "+r"(t1));
            t1 = *addr354;
            asm volatile("" : "+r"(t1));
            *addr350 = t1;

            {
                register unsigned int t2 asm("r1");
                register unsigned short *addr358 asm("r3");

                t2 = 0xd6;
                asm volatile("" : "+r"(t2));
                t2 = t2 << 2;
                asm volatile("" : "+r"(t2));
                addr358 = (unsigned short *)(base + t2);
                asm volatile("" : "+r"(addr358), "+r"(t2));
                t2 = t2 + 2;
                asm volatile("" : "+r"(t2));
                *addr354 = result;
                *addr358 = param2;

                {
                    register unsigned int zero asm("r2");
                    register unsigned short *addr35a asm("r3");

                    zero = 0;
                    asm volatile("" : "+r"(zero));
                    addr35a = (unsigned short *)(base + t2);
                    asm volatile("" : "+r"(addr35a));
                    *addr35a = zero;
                }
            }
        }

        StartTask(Func_80935d4, 0xc94);
    }
}
