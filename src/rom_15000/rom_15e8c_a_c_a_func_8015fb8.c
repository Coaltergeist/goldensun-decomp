typedef unsigned int u32;
typedef u32 (*CopyTiles)(void *destination, u32 size);

extern void Func_80008d4(void);

u32 Func_8015fb8(u32 param1, u32 param2)
{
    register u32 high asm("r9");
    register u32 v3 asm("r3") = param1;
    register u32 mask asm("r0") = 0x3ff;

    {
        volatile u32 saved_high;
        register u32 high_copy asm("r2") = high;
        register u32 v4 asm("r4") = param2;

        saved_high = high_copy;

        v4 &= mask;
        {
            register u32 base asm("r2") = 0x6000010;

            mask &= v3;
            mask <<= 5;
            v4 <<= 5;
            mask += base;
            base -= 0x10;
            {
                register u32 dest_addr asm("r1") = v4 + base;
                register volatile u32 *dma asm("r3") = (volatile u32 *)0x040000d4;
                register u32 ctrl asm("r2") = 0x80000008;

                asm volatile(
                    "stmia\t%0!, {%1, %2, %3}\n\t"
                    "sub\t%0, #0xc"
                    : "+l"(dma)
                    : "l"(mask), "l"(dest_addr), "l"(ctrl)
                    : "memory");

                {
                    register u32 off asm("r3") = 0x600000c;

                    v4 += off;
                    asm volatile("" : "+r"(v4));
                    {
                        register void *arg0 asm("r0") = (void *)v4;

                        asm volatile("" : "+r"(arg0));
                        {
                            register CopyTiles fn asm("r3") = (CopyTiles)Func_80008d4;

                            asm volatile("" : "+r"(fn));
                            {
                                register u32 arg1 asm("r1") = 0x14;

                                asm volatile("" : "+r"(arg1));
                                return fn(arg0, arg1);
                            }
                        }
                    }
                }
            }
        }
    }
}
