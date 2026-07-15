#include "gba/types.h"

typedef struct {
    char pad00[8];
    u16 width;
    u16 pad0a;
    u16 x;
    u16 y;
} TileRegion;

extern u8 *iwram_3001e8c;
extern void *__Func_8004970(int);
extern void __DecompressLZ(const void *, void *);
extern void __free(void *);

void OvlFunc_880_2008cfc(TileRegion *region, const void *file)
{
    u8 *state = iwram_3001e8c;
    void *buffer = __Func_8004970(0x300);
    u16 *vram;
    u16 *mirror;
    int row;

    __DecompressLZ(file, buffer);
    vram = (u16 *)0x06002000 + region->y * 32 + region->x;
    mirror = (u16 *)(state + (region->y * 32 + region->x) * 2);
    for (row = 0; row <= 7; row++) {
        int column;
        for (column = 0; column <= 15; column++) {
            u16 tile = (region->width * row + column) | 0xf000;
            *vram++ = tile;
            *mirror++ = tile;
        }
        vram += 16;
        mirror += 16;
    }
    __free(buffer);
}
