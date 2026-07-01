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
        u32 (*func)(const void *, void *) = Func_8004938(DECOMPRESS_LZ_SIZE);
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
        u32 (*func)(const void *, void *) = Func_8004938(DECOMPRESS_LZ2_SIZE);
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
        u32 (*func)(const void *, void *) = Func_8004938(DECOMPRESS_LZ1_SIZE);
        DMA3_SET(DecompressLZ1_ROM, func, 0x84000000 | (DECOMPRESS_LZ1_SIZE / 4));
        do {
            result = func(src, dst);
        } while (0);
        free(func);
    } while (0);
    return result;
}

extern void BlitFade_Add_ROM(u32 *a, u32 b, u32 *c, u32 d);
extern char _BLITFADE_ADD_SIZE[];
#define BLITFADE_ADD_SIZE ((u32) _BLITFADE_ADD_SIZE)

void BlitFade_Add(u32 *a, u32 b, u32 *c, u32 d) {
    u32 size = BLITFADE_ADD_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFade_Add_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c, d);
}

extern void BlitFade_Sub_ROM(u32 *a, u32 b, u32 *c, u32 d);
extern char _BLITFADE_SUB_SIZE[];
#define BLITFADE_SUB_SIZE ((u32) _BLITFADE_SUB_SIZE)

void BlitFade_Sub(u32 *a, u32 b, u32 *c, u32 d) {
    u32 size = BLITFADE_SUB_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFade_Sub_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c, d);
}

extern void BlitFade_Div4_ROM(u32 *a, u32 *b, u32 c);
extern char _BLITFADE_DIV4_SIZE[];
#define BLITFADE_DIV4_SIZE ((u32) _BLITFADE_DIV4_SIZE)

void BlitFade_Div4(u32 *a, u32 *b, u32 c) {
    u32 size = BLITFADE_DIV4_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFade_Div4_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c);
}

extern void BlitFade_Div2_ROM(u32 *a, u32 *b, u32 c);
extern char _BLITFADE_DIV2_SIZE[];
#define BLITFADE_DIV2_SIZE ((u32) _BLITFADE_DIV2_SIZE)

void BlitFade_Div2(u32 *a, u32 *b, u32 c) {
    u32 size = BLITFADE_DIV2_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFade_Div2_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c);
}

extern void BlitFadeAlt_Add_ROM(u32 *a, u32 b, u32 *c, u32 d);
extern char _BLITFADE_ALT_ADD_SIZE[];
#define BLITFADE_ALT_ADD_SIZE ((u32) _BLITFADE_ALT_ADD_SIZE)

void BlitFadeAlt_Add(u32 *a, u32 b, u32 *c, u32 d) {
    u32 size = BLITFADE_ALT_ADD_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFadeAlt_Add_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c, d);
}

extern void BlitFadeAlt_Sub_ROM(u32 *a, u32 b, u32 *c, u32 d);
extern char _BLITFADE_ALT_SUB_SIZE[];
#define BLITFADE_ALT_SUB_SIZE ((u32) _BLITFADE_ALT_SUB_SIZE)

void BlitFadeAlt_Sub(u32 *a, u32 b, u32 *c, u32 d) {
    u32 size = BLITFADE_ALT_SUB_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFadeAlt_Sub_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c, d);
}

extern void BlitFadeAlt_Div4_ROM(u32 *a, u32 *b, u32 c);
extern char _BLITFADE_ALT_DIV4_SIZE[];
#define BLITFADE_ALT_DIV4_SIZE ((u32) _BLITFADE_ALT_DIV4_SIZE)

void BlitFadeAlt_Div4(u32 *a, u32 *b, u32 c) {
    u32 size = BLITFADE_ALT_DIV4_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFadeAlt_Div4_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c);
}

extern void BlitFadeAlt_Div2_ROM(u32 *a, u32 *b, u32 c);
extern char _BLITFADE_ALT_DIV2_SIZE[];
#define BLITFADE_ALT_DIV2_SIZE ((u32) _BLITFADE_ALT_DIV2_SIZE)

void BlitFadeAlt_Div2(u32 *a, u32 *b, u32 c) {
    u32 size = BLITFADE_ALT_DIV2_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFadeAlt_Div2_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c);
}
