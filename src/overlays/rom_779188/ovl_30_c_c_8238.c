typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct SpriteSlot { u16 pad, tile; } SpriteSlot;

extern short L650[] asm(".L650");
extern SpriteSlot gSpriteSlots[];
extern u32 Tasks_020082dc[] asm(".L6a0");
extern u16 Counter_L68c asm(".L68c");
extern u32 iwram_3001e40;
extern void Func_8003dec(u32 *object, int index) asm("__Func_8003dec");

void OvlFunc_879_2008238(void)
{
    int i;
    u32 tile;
    register u32 *w asm("r6");
    u32 *node;
    u32 baseAttr;

    node = Tasks_020082dc;
    w = node;
    tile = gSpriteSlots[L650[0]].tile >> 5;
    i = 0;
    baseAttr = 0x88;
    for (; i <= 0x11; i++) {
        int amount;
        u32 attr01;
        int y;

        y = 0xe8 - (0x12 - i) * 8;
        *w++ = 0;
        attr01 = y << 16;
        attr01 |= baseAttr;
        attr01 |= 0x84 << 8;
        *w++ = attr01;
        *w++ = 0xf000 | tile;

        amount = (s16)Counter_L68c / 2 - i;
        if (amount < 0) amount = 0;
        if (amount < 3 && (iwram_3001e40 & 1) != 0) amount = 0;
        if (amount != 0) {
            u32 *cur = node;
            node += 3;
            Func_8003dec(cur, 0xff);
        }

        tile += 2;
    }
    Counter_L68c++;
}
