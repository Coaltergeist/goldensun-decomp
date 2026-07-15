typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 L2a50[] asm(".L2a50");
extern u8 L256c[] asm(".L256c");

extern void *__galloc_ewram(int slot, u32 size);
extern void __DecompressLZ1(const void *src, void *dst);
extern int __AllocSpriteSlot(void);
extern u32 __UploadSpriteGFX(u32 slot, int size, const void *gfx);
extern void __gfree(int slot);
extern void __StartTask(void (*task)(void), int priority);
extern void OvlFunc_891_2008eb0(void);

void OvlFunc_891_20094b8(void)
{
    u32 *entry;
    u32 *w;
    u8 *buffer;
    u32 slot;
    u32 uploaded;
    u32 i;
    u32 priority;

    entry = L2a50;
    buffer = __galloc_ewram(0xe, 0x400);
    __DecompressLZ1(L256c, buffer);

    slot = __AllocSpriteSlot();
    uploaded = __UploadSpriteGFX(slot, 0x80, buffer);
    i = 0;
    do {
        w = entry;
        *w++ = 0;
        *w++ = 0x40004000;
        i = i + 1;
        entry = entry + 3;
        *w = uploaded | 0xac00;
    } while (i < 9);

    slot = __AllocSpriteSlot();
    uploaded = __UploadSpriteGFX(slot, 0x80, buffer + 0x80);
    i = 0;
    do {
        w = entry;
        *w++ = 0;
        *w++ = 0x40004000;
        i = i + 1;
        entry = entry + 3;
        *w = uploaded | 0xdc00;
    } while (i < 9);

    slot = __AllocSpriteSlot();
    uploaded = __UploadSpriteGFX(slot, 0x80, buffer + 0x100);
    i = 0;
    do {
        w = entry;
        *w++ = 0;
        *w++ = 0x40004000;
        i = i + 1;
        entry = entry + 3;
        *w = uploaded | 0xc00;
    } while (i < 9);

    __gfree(0xe);
    priority = 0xc80;
    __StartTask(OvlFunc_891_2008eb0, priority);
}
