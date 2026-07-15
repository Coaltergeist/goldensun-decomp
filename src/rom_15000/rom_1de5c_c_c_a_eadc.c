typedef unsigned char u8; typedef unsigned short u16; typedef unsigned int u32;
typedef struct Sprite { u32 zero; u8 active, visible; u16 x,y; u8 padA[4]; u8 icon,alpha; u8 pad10[4]; u32 attr,tile; } Sprite;
typedef struct PositionSource { u8 pad[12]; u16 x,y; } PositionSource;
typedef struct SpriteSlot { u16 pad,tile; } SpriteSlot;
extern SpriteSlot gSpriteSlots[];
extern Sprite *Func_8015e8c(void);
extern void Func_8003f3c(int icon);
extern void Func_8016584(PositionSource *source, Sprite *sprite);
Sprite *Func_801eadc(int iconArg, u32 flagsArg, PositionSource *sourceArg, int xOffsetArg, int yOffset)
{
    register int icon asm("r7");
    register u32 flags asm("r10");
    register PositionSource *source asm("r8");
    register int xOffset asm("r6");
    register Sprite *sprite asm("r5");
    asm volatile ("mov r7, r0\n\tmov r10, r1\n\tmov r8, r2\n\tmov r6, r3" : "=r" (icon), "=r" (flags), "=r" (source), "=r" (xOffset));
    sprite = Func_8015e8c();
    if (sprite == 0) {
        Func_8003f3c(icon);
        return 0;
    } else {
        register int x asm("r1");
        register int y asm("r2");
        register u32 attr asm("r3");
        asm volatile ("mov r0, r8\n\tldrh r1, [r0, #12]\n\tldrh r3, [r0, #14]\n\tldr r2, [sp, #24]\n\tlsl r3, #3\n\tlsl r1, #3\n\tadd r2, r3\n\tadd r1, r6, r1" : "=r" (x), "=r" (y) : "r" (source), "r" (xOffset) : "r0", "r3");
        x = (x + 8) & 0x1ff;
        y = (y + 8) & 0xff;
        asm volatile ("lsl r3, r1, #16\n\torr r3, r2\n\tmov r0, r10\n\torr r3, r0" : "=r" (attr) : "r" (x), "r" (y), "r" (flags) : "r0");
        sprite->attr = attr;
        sprite->tile = gSpriteSlots[icon].tile >> 5;
        sprite->alpha = 0xff;
        sprite->zero = 0;
        sprite->x = x;
        sprite->y = y;
        sprite->icon = icon;
        sprite->active = 1;
        sprite->visible = 1;
        asm volatile ("" ::: "r0");
        Func_8016584(source, sprite);
        return sprite;
    }
}
