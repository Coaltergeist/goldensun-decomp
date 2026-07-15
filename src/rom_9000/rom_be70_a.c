typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct SpriteSlot {
    u16 unk0;
    u16 tileOffset;
} SpriteSlot;

extern SpriteSlot gSpriteSlots[];
extern const u8 MapTable[] asm(".L1314c");

void Func_800be70(u8 *sprite, u32 index)
{
    u8 *tiles;
    int count;
    u32 row;

    tiles = (u8 *)0x06010000 + gSpriteSlots[sprite[0x1c]].tileOffset;
    count = sprite[0x20] * sprite[0x21] / 0x40;

    for (row = 0; row < (u32)count; row++, tiles += 0x40, index++) {
        if (index - 0x40 < 0x40) {
            u8 entry = MapTable[(index + row * 0x10) & 0x3f];
            u16 *pixel = (u16 *)(tiles + (entry & 0x3e));
            if (entry & 1)
                *pixel = *(u8 *)pixel;
            else
                *pixel &= 0xff00;
        }
    }
}
