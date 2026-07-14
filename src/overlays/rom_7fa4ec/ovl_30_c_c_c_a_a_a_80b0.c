typedef unsigned short u16;
typedef unsigned int u32;

extern u32 udivsi3_RAM(u32, u32) asm("_udivsi3_RAM");
extern u16 frameCounter asm(".L181c");
extern u16 colorTable[] asm(".L14ac");

void OvlFunc_970_20080b0(void)
{
    register u32 src asm("r0") = udivsi3_RAM(frameCounter, 6);
    register u32 base asm("r2") = (u32)colorTable;
    register void *source asm("r0");
    register volatile u32 *dma asm("r3");
    register void *dest asm("r1");
    register u32 control asm("r2");

    src = (u16)src * 2;
    src = src + base;
    source = (void *)src;
    dma = (volatile u32 *)0x040000d4;
    asm volatile ("" : "+r"(dma));
    dest = (void *)0x050000e8;
    asm volatile ("" : "+r"(dest));
    control = 0x80000006;
    asm volatile (
        "stmia r3!, {r0, r1, r2}\n"
        "sub r3, #0xc"
        : "+r"(dma)
        : "r"(source), "r"(dest), "r"(control)
        : "memory"
    );

    frameCounter++;
    if (frameCounter > 0x23)
        frameCounter = 0;
}
