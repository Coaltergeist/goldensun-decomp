typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;
#define REG_DMA3SAD (*(vu32 *)0x040000d4)
extern u16 ewram_2004c00;
extern s16 ewram_2004c04;
extern s32 ewram_2004c0c;
extern s32 iwram_3001800;

void Func_80f0538(void)
{
    register u32 *dst asm("r0");
    register s32 tile asm("r1");
    register s32 value asm("r2");
    register s32 col asm("r4");
    register u32 attr asm("r5");
    register s32 row asm("r6");
    register u32 step asm("r7");
    register s32 limit asm("r8");
    register u32 base asm("r10");
    register s32 x asm("r14");
    register s32 xrow asm("r12");
    register u32 raw asm("r3");

    asm volatile(
        "ldr r3, 10f\n\t"
        "ldrh r3, [r3]"
        : "=r" (raw));
    col = 7;
    col &= raw;
    value = (s32)(raw << 16) >> 16;
    if (value < 0) {
        value += 7;
    }
    asm volatile(
        "ldr r3, 11f\n\t"
        "asr %0, #3\n\t"
        "and %0, r3"
        : "+r" (value)
        :
        : "r3");
    asm volatile(
        "lsl r3, %1, #1\n\t"
        "add r3, %1\n\t"
        "lsl %0, r3, #3"
        : "=r" (tile)
        : "r" (value)
        : "r3");
    asm volatile(
        "ldr r3, 12f\n\t"
        "ldr r3, [r3]\n\t"
        "mov %0, r3"
        : "=r" (dst)
        :
        : "r3");
    asm volatile(
        "neg r3, %6\n"
        "add r3, #16\n"
        "ldr r2, 13f\n\t"
        "mov %0, r3\n\t"
        "mov r3, #0xc0\n\t"
        "lsl r3, #2\n\t"
        "mov %3, #0x80\n\t"
        "add %5, #0xc0\n\t"
        "mov %4, #0\n\t"
        "mov %2, r2\n\t"
        "mov %1, r3\n\t"
        "lsl %3, #14"
        : "=r" (x), "=r" (limit), "=r" (base), "=r" (step),
          "=r" (row), "+r" (dst)
        : "r" (col)
        : "r2", "r3");

    do {
        asm volatile(
            "mov %0, #0xc0\n\t"
            "mov %1, %3\n\t"
            "lsl %0, #13\n\t"
            "mov %2, #5\n\t"
            "b 14f\n\t"
            ".align 2\n\t"
            "11:\n\t.word 0x1f\n"
            "10:\n\t.word ewram_2004c00\n"
            "12:\n\t.word ewram_2004c0c\n"
            "13:\n\t.word 0x40004000\n"
            "14:"
            : "=r" (attr), "=r" (xrow), "=r" (col)
            : "r" (x));
        do {
            asm volatile(
                "mov r3, %2\n\t"
                "mov r2, %4\n\t"
                "orr r3, %3\n\t"
                "orr r3, r2\n\t"
                "mov r2, %0\n\t"
                "stmia r2!, {r3}\n\t"
                "str %1, [r2]"
                :
                : "r" (dst), "r" (tile), "r" (xrow), "r" (attr), "r" (base)
                : "r2", "r3", "memory");
            tile += 4;
            dst += 2;
            if (tile == limit) {
                tile = 0;
            }
            col--;
            attr += step;
        } while (col >= 0);
        asm volatile(
            "mov r3, #8\n\t"
            "add %0, #1\n\t"
            "add %1, r3"
            : "+r" (row), "+r" (x)
            :
            : "r3");
    } while (row <= 15);

    {
        register vu32 *dma asm("r3") = &REG_DMA3SAD;
        register u32 src asm("r0") = ewram_2004c0c;
        register u32 dstreg asm("r1") = 0x07000000;
        register u32 count asm("r2") = 0x84000100;
        asm volatile(
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, #0xc"
            : "+r" (dma)
            : "r" (src), "r" (dstreg), "r" (count)
            : "memory");
    }

    if (ewram_2004c04 == 0 && (iwram_3001800 & 3) == 0) {
        ewram_2004c00++;
    }
}
