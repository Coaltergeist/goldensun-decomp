typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

extern void *galloc_ewram(int slot, u32 size);
extern void StartTask(void (*task)(void), int priority);
extern void Func_8094544(void);
extern void Func_80944ec(void);

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

void Func_8094730(u32 param_1, u32 param_2, u32 param_3, u32 param_4, u32 param_5, u32 param_6, u32 param_7)
{
    u8 *buf = galloc_ewram(0x22, 0xf20);
    u32 zero;
    register u32 *src asm("r0") = &zero;
    *src = 0;
    {
        register vu32 *dma asm("r3") = &REG_DMA3SAD;
        register u8 *dst asm("r1") = buf;
        register u32 cnt asm("r2") = 0x850003c8;
        asm volatile(
            "stmia r3!, {r0,r1,r2}\n\t"
            "sub r3, #0xc"
            : "+r"(dma)
            : "r"(src), "r"(dst), "r"(cnt)
            : "memory"
        );
        {
            register vu32 *p asm("r1") = dma;
            while (*(p + 2) & 0x80000000)
                ;
        }
    }
    *(u8 *)(buf + 0xf01) = (u8)param_1;
    *(u32 *)(buf + 0xf08) = param_2;
    *(u32 *)(buf + 0xf0c) = param_5;
    *(u32 *)(buf + 0xf18) = param_4;
    *(u32 *)(buf + 0xf1c) = param_7;
    *(u32 *)(buf + 0xf10) = param_3;
    *(u32 *)(buf + 0xf14) = param_6;
    {
        u32 priority = 0xc8 << 4;
        StartTask(Func_8094544, priority);
    }
    {
        u32 priority = 0x90 << 3;
        StartTask(Func_80944ec, priority);
    }
}
