#include "gba/types.h"

extern u8 iwram_3001e70[];
extern u8 gBuffer[];

int OvlFunc_948_2008244(
    u32 bufferIndex,
    u32 tileX,
    u32 tileY,
    u32 width,
    u32 height,
    u32 attribute)
{
    register u32 rectangleWidth __asm__("r4") = width;
    register u32 startTileX __asm__("r6") = tileX;
    register u32 rowCount __asm__("r12") = height;
    register u32 fillAttribute __asm__("r5") = attribute;
    register u8 *bufferTable __asm__("r2");
    register u8 *tileBuffer __asm__("r0");
    register u8 *rowTiles __asm__("r3");
    register u32 row __asm__("r1") = tileY;
    register u32 column __asm__("r2");
    register u32 offset __asm__("r3");

    bufferTable = *(u8 **)iwram_3001e70;
    if (bufferTable == 0)
        return 0;

    if (bufferIndex <= 2) {
        offset = (bufferIndex * 3) << 4;
        offset += 0x130;
        tileBuffer = *(u8 **)(bufferTable + offset);
    } else {
        tileBuffer = gBuffer;
    }

    offset = row << 7;
    __asm__ volatile ("" : "+r" (offset));
    offset = startTileX + offset;
    offset <<= 2;
    tileBuffer += offset;
    for (row = 0; row < rowCount; row++) {
        __asm__ volatile ("" : "+r" (row));
        rowTiles = tileBuffer + (row << 9);
        column = 0;
        if (column < rectangleWidth) {
            do {
                column++;
                rowTiles[2] = fillAttribute;
                rowTiles += 4;
            } while (column < rectangleWidth);
        }
    }
    return 0;
}
