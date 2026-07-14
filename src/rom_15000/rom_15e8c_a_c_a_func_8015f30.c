typedef unsigned char u8;
typedef unsigned int u32;
typedef volatile unsigned int vu32;

extern u8 *galloc_ewram(int slot, u32 size);
extern void Func_8015ef4(void);
extern void Func_8019d0c(void);
extern void Func_80160fc(void);
extern void Func_80173f4(void);
extern int StartTask(void (*task)(void), int priority);

void Func_8015f30(void)
{
    u32 value;
    u8 *buf = galloc_ewram(0xf, 0x12fc);
    register u32 *p asm("r5") = &value;

    *p = 0;
    {
        register u32 *src asm("r0") = p;
        register vu32 *base asm("r3") = (vu32 *)0x040000d4;
        register u8 *dst asm("r1") = buf;
        register u32 cnt asm("r2") = 0x850004bf;

        asm volatile(
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            : "+l"(base)
            : "l"(src), "l"(dst), "l"(cnt)
            : "memory");
    }
    asm volatile("" ::: "r0");

    {
        register unsigned int offset asm("r3");
        register u8 *field asm("r2");
        register unsigned int val asm("r3");

        offset = 0xea3;
        field = buf + offset;
        val = 1;
        asm volatile("" : "+r"(field), "+r"(val));
        *field = val;

        offset = 0x12b6;
        field = buf + offset;
        val = 0x63;
        asm volatile("" : "+r"(field), "+r"(val));
        *(unsigned short *)field = val;

        offset = 0xea7;
        field = buf + offset;
        val = 0xf;
        asm volatile("" : "+r"(field), "+r"(val));
        *field = val;
    }

    *p = 0xf000f000;
    {
        register u32 *src asm("r0") = p;
        register vu32 *base asm("r3") = (vu32 *)0x040000d4;
        register u8 *dst asm("r1") = buf;
        register u32 cnt asm("r2") = 0x85000140;

        asm volatile(
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            : "+l"(base)
            : "l"(src), "l"(dst), "l"(cnt)
            : "memory");
    }

    Func_8015ef4();
    Func_8019d0c();

    {
        register void (*task)(void) asm("r0");
        register int priority asm("r1");

        priority = 0x90;
        priority <<= 3;
        asm volatile("" : "+r"(priority));
        task = Func_80160fc;
        StartTask(task, priority);
    }

    Func_80173f4();
}
