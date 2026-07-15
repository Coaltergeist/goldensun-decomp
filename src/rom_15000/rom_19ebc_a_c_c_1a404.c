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
extern u32 NumMoveIcons(void);
extern u8 *L29a10[] __asm__(".L29a10");
extern u8 *L2de88[] __asm__(".L2de88");

typedef struct {
    u8 pad[0x600];
    u16 dim0;
    u16 dim1;
    u8 *gfx;
} IconBuf;

void LoadMoveIconID(u32 iconId, u32 variant, s32 *spriteSlot, s32 *uploadResult, s32 skipAlloc)
{
    IconBuf *buffer = galloc_iwram(0x11, 0xc1 << 3);
    s32 loaded = 0;

    if (iconId >= NumMoveIcons())
        iconId = 0;

    if (variant != 0) {
        buffer->gfx = L29a10[2];
        buffer->dim0 = 2;
        buffer->dim1 = 2;
        LoadIcon((u8 *)buffer, 0);
        loaded = 1;
    }

    buffer->gfx = L2de88[iconId];
    buffer->dim0 = 2;
    buffer->dim1 = 2;
    LoadIcon((u8 *)buffer, loaded);

    if (skipAlloc == 0)
        *spriteSlot = AllocSpriteSlot();

    *uploadResult = UploadSpriteGFX(*spriteSlot, 0x80, (u8 *)buffer + 0x400);
    gfree(0x11);
}
