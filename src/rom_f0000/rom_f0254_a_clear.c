#include "dma.h"

/* クレジット背景の画面とパレットをクリア */
void Func_80f0254(s32 page)
{
    u32 value;
    register u32 screen __asm__("r1");
    register u32 palette __asm__("r5");
    register u32 fill __asm__("r3");
    register u32 *stack __asm__("r4");
    register u32 *src __asm__("r0");
    register vu32 *dma __asm__("r3");
    register u32 count __asm__("r2");

    if (page == 0) {
        screen = 0xc0;
        __asm__ volatile ("" : "+r" (screen));
        palette = 0xa0;
        __asm__ volatile ("" : "+r" (palette));
        fill = 0x01010101;
        __asm__ volatile ("" : "+r" (fill));
        screen <<= 19;
        palette <<= 19;
    } else {
        fill = 0x81818181;
        __asm__ volatile ("" : "+r" (fill));
        screen = 0x06008000;
        __asm__ volatile ("" : "+r" (screen));
        palette = 0x05000100;
        __asm__ volatile ("" : "+r" (palette));
    }

    stack = &value;
    __asm__ volatile ("" : "+r" (stack));
    *stack = fill;
    src = stack;
    __asm__ volatile ("" : "+r" (src));
    dma = &REG_DMA3SAD;
    count = 0x85001e00;
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        : "+r" (dma)
        : "r" (src), "r" (screen), "r" (count)
        : "memory"
    );

    *stack = 0;
    src = stack;
    __asm__ volatile ("" : "+r" (src));
    dma = &REG_DMA3SAD;
    __asm__ volatile ("" : "+r" (dma));
    screen = palette;
    count = 0x85000040;
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        : "+r" (dma)
        : "r" (src), "r" (screen), "r" (count)
        : "memory"
    );
}
