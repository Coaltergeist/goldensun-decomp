/* decompress/lz.c -- consolidated TU. */
#include "nonmatching.h"

#include "gba/types.h"
#include "dma.h"

extern void DecompressLZ16_ROM(const void *src, void *dst);
extern char _DECOMPRESS_LZ16_SIZE[];
#define DECOMPRESS_LZ16_SIZE ((u32) _DECOMPRESS_LZ16_SIZE)

void DecompressLZ16(const void *src, void *dst) {
    u32 size = DECOMPRESS_LZ16_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(void *, void *) = funcBuf;
    DMA3_SET(DecompressLZ16_ROM, funcBuf, 0x84000000 | size);
    func(src, dst);
}

// the functions using IWRAM_ALLOC seem fake.
// It's the same pattern across all of them,
// so fixing the fakematch should just cascade down.

extern s32 DecompressLZ_ROM(const void *src, void *dst);
extern char _DECOMPRESS_LZ_SIZE[];
#define DECOMPRESS_LZ_SIZE ((u32) _DECOMPRESS_LZ_SIZE)

u32 DecompressLZ(const void *src, void *dst) {
    u32 result;
    do {
        u32 (*func)(const void *, void *) = alloc_iwram(DECOMPRESS_LZ_SIZE);
        DMA3_SET(DecompressLZ_ROM, func, 0x84000000 | (DECOMPRESS_LZ_SIZE / 4));
        do {
            result = func(src, dst);
        } while (0);
        free(func);
    } while (0);
    return result;
}

extern s32 DecompressLZ2_ROM(const void *src, void *dst);
extern char _DECOMPRESS_LZ2_SIZE[];
#define DECOMPRESS_LZ2_SIZE ((u32) _DECOMPRESS_LZ2_SIZE)

u32 DecompressLZ2(const void *src, void *dst) {
    u32 result;
    do {
        u32 (*func)(const void *, void *) = alloc_iwram(DECOMPRESS_LZ2_SIZE);
        DMA3_SET(DecompressLZ2_ROM, func, 0x84000000 | (DECOMPRESS_LZ2_SIZE / 4));
        do {
            result = func(src, dst);
        } while (0);
        free(func);
    } while (0);
    return result;
}

extern s32 DecompressLZ1_ROM(const void *src, void *dst);
extern char _DECOMPRESS_LZ1_SIZE[];
#define DECOMPRESS_LZ1_SIZE ((u32) _DECOMPRESS_LZ1_SIZE)

u32 DecompressLZ1(const void *src, void *dst) {
    u32 result;
    do {
        u32 (*func)(const void *, void *) = alloc_iwram(DECOMPRESS_LZ1_SIZE);
        DMA3_SET(DecompressLZ1_ROM, func, 0x84000000 | (DECOMPRESS_LZ1_SIZE / 4));
        do {
            result = func(src, dst);
        } while (0);
        free(func);
    } while (0);
    return result;
}
