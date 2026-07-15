typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

extern void *galloc_ewram(int slot, u32 size);
extern void InitSprites(int mode);
extern s32 StartTask(void (*task)(void), u32 priority);
extern void Func_800d340(void);
extern void UpdateActors(void);
extern void Func_800c880(void);
extern void Func_800c62c(void);
extern u32 iwram_3001d1c;
extern u32 iwram_3001cc0;

void InitActors(int param0)
{
    register int mode asm("r7") = param0;
    register void *hdr asm("r8");
    register void *pool asm("r6");
    register u32 *stack asm("r4");
    register u32 fill asm("r5");
    register vu32 *dma asm("r3");
    register u32 *src asm("r0");
    register u8 *dst asm("r1");
    register u32 cnt asm("r2");

    hdr = galloc_ewram(6, 0x5c);
    pool = galloc_ewram(5, 0xe0 << 5);
    InitSprites(mode);

    {
        u32 zero;
        fill = 0;
        stack = &zero;
        asm volatile("" : "+r"(stack));
        *stack = fill;
        dma = &REG_DMA3SAD;
        asm volatile("" : "+r"(dma));
        src = stack;
        asm volatile("" : "+r"(src));
        dst = (u8 *)pool;
        cnt = 0x85000700;
        asm volatile(
            "stmia r3!, {r0,r1,r2}\n\t"
            "sub r3, #0xc"
            : "+r"(dma)
            : "r"(src), "r"(dst), "r"(cnt)
            : "memory"
        );

        *stack = fill;
        src = stack;
        asm volatile("" : "+r"(src));
        dst = (u8 *)hdr;
        cnt = 0x85000017;
        asm volatile(
            "stmia r3!, {r0,r1,r2}\n\t"
            "sub r3, #0xc"
            : "+r"(dma)
            : "r"(src), "r"(dst), "r"(cnt)
            : "memory"
        );
    }

    if (mode == 4) {
        StartTask(Func_800d340, 0xc8a);
    } else {
        StartTask(UpdateActors, 0xc8a);
    }

    if ((u32)(mode - 3) < 2) {
        StartTask(Func_800c880, 0xc8 << 4);
    } else {
        StartTask(Func_800c62c, 0xc8 << 4);
        iwram_3001d1c = 0;
        iwram_3001cc0 = 0;
    }

    dst = (u8 *)hdr;
    {
        register u32 zeroByte asm("r2") = 0;
        register u32 fifteenByte asm("r3") = 0xf;
        asm volatile("" : "+r"(zeroByte), "+r"(fifteenByte));
        dst[6] = (u8)fifteenByte;
        dst[7] = (u8)zeroByte;
    }
}
