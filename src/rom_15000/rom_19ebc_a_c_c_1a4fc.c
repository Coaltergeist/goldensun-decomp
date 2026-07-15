typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef volatile u32 vu32;

extern void *galloc_iwram(int slot, int size);
extern const u8 *GetFile(const void *file);
extern const u8 _FILE_f0[];
extern void LoadIcon(u8 *buffer, u32 icon_index);
extern int AllocSpriteSlot(void);
extern int UploadSpriteGFX(int slot, int size, const void *data);
extern void gfree(int slot);

#define REG_DMA3SAD (*(vu32 *)0x040000d4)

void LoadPortrait(u32 portraitId, int unused, int *spriteSlot, int *uploadResult, int paletteBank, int allocSkip)
{
    u8 *buffer = galloc_iwram(0x11, 0xc1 << 3);
    const u8 *file = GetFile(_FILE_f0);
    register u32 idx asm("r3") = portraitId;
    register u32 off604 asm("r1");
    const u8 *icon;

    if (portraitId > 0x7f)
        idx -= 0x70;
    off604 = 0x604;
    icon = file + ((const u16 *)file)[idx];
    asm volatile(
        "mov r3, %1\n\t"
        "add r2, %0, r1\n\t"
        "add r3, r3, #0x20\n\t"
        "str r3, [r2]\n\t"
        "mov r2, #0xc0\n\t"
        "lsl r2, r2, #3\n\t"
        "add r3, %0, r2\n\t"
        "sub r1, r1, #2\n\t"
        "mov r2, #4\n\t"
        "strh r2, [r3, #0]\n\t"
        "add r3, %0, r1\n\t"
        "strh r2, [r3, #0]\n\t"
        :
        : "r"(buffer), "r"(icon), "r"(off604)
        : "r2", "r3", "memory");
    LoadIcon(buffer, 0);
    if (allocSkip == 0)
        *spriteSlot = AllocSpriteSlot();
    asm volatile(
        "mov r3, #0x80\n\t"
        "lsl r3, r3, #3\n\t"
        "mov r1, #0x80\n\t"
        "add r2, %0, r3\n\t"
        "ldr r0, [%1, #0]\n\t"
        "lsl r1, r1, #2\n\t"
        "bl UploadSpriteGFX\n\t"
        "mov r1, r8\n\t"
        "str r0, [r1, #0]\n\t"
        :
        : "r"(buffer), "r"(spriteSlot), "r"(uploadResult)
        : "r0", "r1", "r2", "r3", "lr", "memory");
    gfree(0x11);
    {
        register vu32 *dma asm("r3") = &REG_DMA3SAD;
        register const void *src asm("r0") = icon;
        register void *dst asm("r1") = (void *)(paletteBank * 0x20 + 0x05000200);
        register u32 cnt asm("r2") = 0x80000010;
        asm volatile(
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, #0xc"
            : "+r"(dma)
            : "r"(src), "r"(dst), "r"(cnt)
            : "memory");
    }
}
