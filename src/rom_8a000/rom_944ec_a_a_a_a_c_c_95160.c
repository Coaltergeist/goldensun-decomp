typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

extern void *galloc_ewram(int slot, u32 size);
extern void Func_8090a5c(u32 a0, u32 a1, u32 a2, u32 a3);
extern void Func_809088c(s16 *start, s16 *end, s16 *output, s32 divisor);
extern void StartTask(void (*task)(void), int priority);
extern void Task_Thunder(void);
extern u8 *iwram_3001ed0;

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

void StartThunder(void)
{
    u8 *buf = galloc_ewram(0x1e, 0x1f88);
    u8 *context = iwram_3001ed0;
    u32 zero;
    register u32 *src asm("r0") = &zero;
    *src = 0;
    {
        register vu32 *dma asm("r3") = &REG_DMA3SAD;
        register u8 *dst asm("r1") = buf;
        register u32 cnt asm("r2") = 0x850007e2;
        asm volatile(
            "stmia r3!, {r0,r1,r2}\n\t"
            "sub r3, #0xc"
            : "+r"(dma)
            : "r"(src), "r"(dst), "r"(cnt)
            : "memory"
        );
    }
    {
        register u32 a1 asm("r1") = (u32)context;
        register u32 a2 asm("r2") = (u32)buf;
        register u32 a3 asm("r3") = 1;
        register u32 a0 asm("r0") = 0x10003;
        Func_8090a5c(a0, a1, a2, a3);
    }
    {
        register u32 a1 asm("r1") = (u32)context;
        register u32 a2 asm("r2") = (u32)(buf + 0xa80);
        register u32 a3 asm("r3") = 1;
        register u32 a0 asm("r0") = 0x10005;
        Func_8090a5c(a0, a1, a2, a3);
    }
    Func_809088c((s16 *)(buf + 0xa80), (s16 *)buf, (s16 *)(buf + 0x1500), 12);
    Func_8090a5c((u32)buf, 0, (u32)(context + 0xe00), 1);
    {
        u16 *p = (u16 *)(buf + 0x1f80);
        register u16 v = 0x96;
        asm volatile("" : "+r"(v));
        v = (u16)(v << 2);
        *p = v;
    }
    {
        register u32 off asm("r3") = 0x1f82;
        register int priority asm("r1");
        asm volatile("" : "+r"(off));
        priority = 0xc8;
        asm volatile("" : "+r"(priority));
        buf = buf + off;
        {
            register u16 v = 1;
            asm volatile("" : "+r"(v));
            *(u16 *)buf = v;
        }
        priority <<= 4;
        {
            register void (*task)(void) asm("r0") = Task_Thunder;
            StartTask(task, priority);
        }
    }
}
