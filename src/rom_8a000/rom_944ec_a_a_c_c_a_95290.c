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

void StartThunder2(u32 param_1, u32 param_2)
{
    register u32 p2 asm("sl") = param_2;
    u8 *buf = galloc_ewram(0x1e, 0x1f88);
    u8 *context = iwram_3001ed0;
    u32 zero;
    register u32 *src asm("r0") = &zero;
    *src = 0;
    asm volatile("" : "+r"(p2));
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
        register u32 a0 asm("r0") = param_1;
        Func_8090a5c(a0, a1, a2, a3);
    }
    {
        register u32 a1 asm("r1") = (u32)context;
        register u32 a2 asm("r2") = (u32)(buf + 0xa80);
        register u32 a3 asm("r3") = 1;
        register u32 a0 asm("r0") = p2;
        Func_8090a5c(a0, a1, a2, a3);
    }
    Func_809088c((s16 *)(buf + 0xa80), (s16 *)buf, (s16 *)(buf + 0x1500), 12);
    {
        register u8 *ctx asm("r8") = context;
        register u32 a2 asm("r2");
        asm volatile(
            "mov r3, #0xe0\n\t"
            "lsl r3, r3, #4\n\t"
            "add r8, r3\n\t"
            "mov r2, r8"
            : "+r"(ctx), "=r"(a2)
            :
            : "r3"
        );
        {
            register u32 a0 asm("r0") = (u32)buf;
            register u32 a1 asm("r1") = 0;
            register u32 a3 asm("r3") = 1;
            Func_8090a5c(a0, a1, a2, a3);
        }
    }
    asm volatile(
        "mov r3, #0xfc\n\t"
        "lsl r3, r3, #5\n\t"
        "add r2, %0, r3\n\t"
        "mov r3, #0x78\n\t"
        "strh r3, [r2, #0]"
        :
        : "r"(buf)
        : "r2", "r3", "memory"
    );
    {
        register u32 off asm("r3") = 0x1f82;
        register int priority asm("r1");
        asm volatile("" : "+r"(off));
        priority = 0xc8;
        asm volatile("" : "+r"(priority));
        buf = buf + off;
        *(u16 *)buf = 0;
        priority <<= 4;
        {
            register void (*task)(void) asm("r0") = Task_Thunder;
            StartTask(task, priority);
        }
    }
}
