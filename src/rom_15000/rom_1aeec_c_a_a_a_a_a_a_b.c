typedef unsigned char u8;
typedef unsigned short u16;

typedef struct SpriteLayer {
    u8 reserved0[4];
    u8 palette;
    u8 reserved5;
    u16 tile;
} SpriteLayer;

extern void Func_8003dec(unsigned int *object, int index);

void Func_801c154(SpriteLayer *layer, int tile, int palette)
{
    register int mask asm("r3");
    register int oldTile asm("r4");

    /* Preserve the original compiler's literal loads and register schedule. */
    asm volatile("ldr %0, .L801c154_low_mask" : "=r"(mask));
    oldTile = layer->tile;
    tile &= mask;
    asm volatile("ldr %0, .L801c154_high_mask" : "=r"(mask));
    mask &= oldTile;
    mask |= tile;
    layer->tile = mask;
    layer->palette = palette;
    Func_8003dec((unsigned int *)layer, 0xfc);
    asm volatile(
        "b .L801c154_after_pool\n"
        ".align 2, 0\n"
        ".L801c154_low_mask:\n"
        ".word 0x1ff\n"
        ".L801c154_high_mask:\n"
        ".word 0xfffffe00\n"
        ".L801c154_after_pool:");
}
