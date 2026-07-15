typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void *galloc_iwram(int slot, int size);
extern void gfree(int slot);
extern void LoadIcon(u8 *buffer, u32 icon_index);
extern int AllocSpriteSlot(void);
extern int UploadSpriteGFX(int slot, int size, const void *data);
extern u8 *L29a10[] __asm__(".L29a10");
extern u8 *L29e00[] __asm__(".L29e00");

typedef struct {
    u8 pad[0x600];
    u16 dim0;
    u16 dim1;
    u8 *gfx;
} IconBuf;

void LoadOldUIIcon(u32 a, u32 b, s32 *spriteSlot, s32 *uploadResult, s32 skipAlloc)
{
    IconBuf *buffer = galloc_iwram(0x11, 0xc1 << 3);

    buffer->gfx = L29a10[b];
    {
        u16 two = 2;
        buffer->dim0 = two;
        buffer->dim1 = two;
        LoadIcon((u8 *)buffer, 0);

        buffer->gfx = L29e00[a];
        buffer->dim0 = two;
        buffer->dim1 = two;
    }
    LoadIcon((u8 *)buffer, 1);

    if (skipAlloc == 0)
        *spriteSlot = AllocSpriteSlot();

    *uploadResult = UploadSpriteGFX(*spriteSlot, 0x80, (u8 *)buffer + 0x400);
    gfree(0x11);
}
