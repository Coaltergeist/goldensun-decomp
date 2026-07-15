typedef unsigned char u8;
typedef signed short s16;
typedef unsigned int u32;

extern s16 gSpriteSlot asm(".L10");
extern const u8 gPaletteOffsets[] asm(".L1");
extern const u8 _FILE_e7[];
extern void *__Func_8004970(u32 size);
extern int __AllocSpriteSlot(void);
extern const void *__GetFile(const void *file);
extern void __DecompressLZ(const void *source, void *dest);
extern void __UploadSpriteGFX(int slot, int size, const void *source);
extern void __free(void *ptr);

void OvlFunc_common1_88c(int variant)
{
    register int selected asm("r5") = variant;
    register u8 *buffer asm("r6") = __Func_8004970(0xe5 << 5);
    register s16 *slot asm("r7") = &gSpriteSlot;
    register int paletteOffset asm("r8");

    if (*slot == -1)
        *slot = __AllocSpriteSlot();

    paletteOffset = gPaletteOffsets[selected];
    if (selected == 8)
        selected = 4;

    __DecompressLZ(__GetFile(_FILE_e7), buffer);

    asm volatile(
        "mov r2, r8\n\tadd r0, r6, r2\n\t"
        "ldr r3, =0x040000d4\n\tldr r1, =0x050003e0\n\t"
        "ldr r2, =0x84000008\n\tstmia r3!, {r0, r1, r2}\n\t"
        "sub r3, #0xc"
        : : "r"(paletteOffset), "r"(buffer) : "r0", "r1", "r2", "r3", "memory");

    asm volatile(
        "lsl r2, r5, #10\n\tadd r2, r6\n\t"
        "mov r1, #0x80\n\tadd r2, #0xa0\n\t"
        "lsl r1, #3\n\tmov r3, #0\n\t"
        "ldrsh r0, [r7, r3]\n\tbl __UploadSpriteGFX"
        : : "r"(selected), "r"(buffer), "r"(slot)
        : "r0", "r1", "r2", "r3", "memory");

    {
        register volatile u32 *dma asm("r1");
        register u32 busy asm("r2");
        asm volatile("mov r2, #0x80\n\tldr r1, =0x040000d4\n\t"
                     "lsl r2, #24"
                     : "=r"(dma), "=r"(busy));
        while (dma[2] & busy)
            ;
    }
    __free(buffer);
}
