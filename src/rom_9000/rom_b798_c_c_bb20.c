typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

extern void *galloc_ewram(int slot, u32 size);
extern void *galloc_iwram(int slot, u32 size);
extern void LoadSpritePalette(void);
extern void UploadSpriteGFX(int slot, int size, const void *src);
extern u8 SpriteGfx_12f20[] asm(".L12f20");
extern void Func_800a418(void);

void InitSprites(int param0)
{
    u32 zero;
    register void *buf1 asm("r7");
    register void *buf2 asm("r6");
    register u32 *stack asm("r4");
    register u32 fill asm("r5");
    register vu32 *dma asm("r3");
    register u32 *src asm("r0");
    register void *dst asm("r1");
    register u32 cnt asm("r2");

    if (param0 == 3) {
        buf1 = galloc_ewram(4, 0xe00);
        buf2 = galloc_ewram(3, 0xc0 << 3);
    } else {
        buf1 = galloc_iwram(4, 0xe00);
        buf2 = galloc_iwram(3, 0xc0 << 3);
    }

    LoadSpritePalette();

    fill = 0;
    stack = &zero;
    asm volatile("" : "+r"(stack));
    *stack = fill;
    dma = &REG_DMA3SAD;
    asm volatile("" : "+r"(dma));
    src = stack;
    asm volatile("" : "+r"(src));
    dst = buf1;
    cnt = 0x85000380;
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
    dst = buf2;
    cnt = 0x85000180;
    asm volatile(
        "stmia r3!, {r0,r1,r2}\n\t"
        "sub r3, #0xc"
        : "+r"(dma)
        : "r"(src), "r"(dst), "r"(cnt)
        : "memory"
    );

    {
        register const void *arg2 asm("r2");
        register int arg1 asm("r1");
        register int arg0 asm("r0");
        arg2 = SpriteGfx_12f20;
        asm volatile("" : "+r"(arg2));
        arg1 = 0x80;
        asm volatile("" : "+r"(arg1));
        arg0 = 0x5d;
        UploadSpriteGFX(arg0, arg1, arg2);
    }

    asm volatile("ldr r5, =0x7c" : "=r"(fill));
    {
        register int slot asm("r0");
        register u32 size asm("r1");
        register void *buf3 asm("r0");
        slot = 0x35;
        asm volatile("" : "+r"(slot));
        size = fill;
        buf3 = galloc_iwram(slot, size);
        {
            register u32 cnt2 asm("r2");
            register void *dst2 asm("r1");
            register void *src2 asm("r0");
            cnt2 = 0x84;
            asm volatile("" : "+r"(cnt2));
            fill >>= 2;
            asm volatile("" : "+r"(fill));
            cnt2 <<= 24;
            asm volatile("" : "+r"(cnt2));
            dst2 = buf3;
            asm volatile("" : "+r"(dst2));
            dma = &REG_DMA3SAD;
            asm volatile("" : "+r"(dma));
            asm volatile("ldr r0, =Func_800a418" : "=r"(src2));
            cnt2 = cnt2 | fill;
            asm volatile(
                "stmia r3!, {r0,r1,r2}\n\t"
                "sub r3, #0xc"
                : "+r"(dma)
                : "r"(src2), "r"(dst2), "r"(cnt2)
                : "memory"
            );
        }
    }
}
