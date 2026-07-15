typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

void m4aSoundVSync(void)
{
    register u8 *info asm("r0");
    register u32 magic asm("r2");
    register u32 ident asm("r3");
    register u32 value asm("r1");
    register volatile u32 *dma asm("r2");

    /* These loads reach the original shared m4a pool after MP2KPlayerMain. */
    asm volatile (".hword 0x48aa" : "=r" (info));
    info = *(u8 **)info;
    asm volatile (".hword 0x4aaa" : "=r" (magic) : "r" (info));
    ident = *(u32 *)info;
    ident -= magic;
    asm volatile ("cmp %0, #1\n\tbhi .LmvsDone" : : "r" (ident));

    value = *(u8 *)(info + 4);
    asm volatile (
        "sub %0, #1\n\t"
        "strb %0, [%1, #4]\n\t"
        "bgt .LmvsDone"
        : "+r" (value)
        : "r" (info));

    value = *(u8 *)(info + 0xb);
    *(u8 *)(info + 4) = value;
    asm volatile ("" : "+r" (value));

    dma = (volatile u32 *)0x40000BC;
    value = dma[2];
    asm volatile ("lsl %0, #7\n\tbcc .Lmvs1" : "+r" (value));
    value = 0x84400004;
    dma[2] = value;
    asm volatile (".Lmvs1:");
    value = dma[5];
    asm volatile ("lsl %0, #7\n\tbcc .Lmvs2" : "+r" (value));
    value = 0x84400004;
    dma[5] = value;
    asm volatile (".Lmvs2:");

    value = 4;
    asm volatile ("" : "+r" (value));
    value <<= 8;
    ((volatile u16 *)dma)[5] = value;
    ((volatile u16 *)dma)[11] = value;
    value = 0xb600;
    ((volatile u16 *)dma)[5] = value;
    ((volatile u16 *)dma)[11] = value;

    asm volatile (".LmvsDone:");
}
