/* render/blit_fade.c */
#include "nonmatching.h"

#include "gba/types.h"
#include "dma.h"

extern void BlitFade_Add_ROM(u32 *a, u32 b, u32 *c, u32 d);
extern char _BLITFADE_ADD_SIZE[];
#define BLITFADE_ADD_SIZE ((u32) _BLITFADE_ADD_SIZE)
extern void BlitFade_Sub_ROM(u32 *a, u32 b, u32 *c, u32 d);
extern char _BLITFADE_SUB_SIZE[];
#define BLITFADE_SUB_SIZE ((u32) _BLITFADE_SUB_SIZE)
extern void BlitFade_Div4_ROM(u32 *a, u32 *b, u32 c);
extern char _BLITFADE_DIV4_SIZE[];
#define BLITFADE_DIV4_SIZE ((u32) _BLITFADE_DIV4_SIZE)
extern void BlitFade_Div2_ROM(u32 *a, u32 *b, u32 c);
extern char _BLITFADE_DIV2_SIZE[];
#define BLITFADE_DIV2_SIZE ((u32) _BLITFADE_DIV2_SIZE)
extern void BlitFadeAlt_Add_ROM(u32 *a, u32 b, u32 *c, u32 d);
extern char _BLITFADE_ALT_ADD_SIZE[];
#define BLITFADE_ALT_ADD_SIZE ((u32) _BLITFADE_ALT_ADD_SIZE)
extern void BlitFadeAlt_Sub_ROM(u32 *a, u32 b, u32 *c, u32 d);
extern char _BLITFADE_ALT_SUB_SIZE[];
#define BLITFADE_ALT_SUB_SIZE ((u32) _BLITFADE_ALT_SUB_SIZE)
extern void BlitFadeAlt_Div4_ROM(u32 *a, u32 *b, u32 c);
extern char _BLITFADE_ALT_DIV4_SIZE[];
#define BLITFADE_ALT_DIV4_SIZE ((u32) _BLITFADE_ALT_DIV4_SIZE)
extern void BlitFadeAlt_Div2_ROM(u32 *a, u32 *b, u32 c);
extern char _BLITFADE_ALT_DIV2_SIZE[];
#define BLITFADE_ALT_DIV2_SIZE ((u32) _BLITFADE_ALT_DIV2_SIZE)

void BlitFade_Add(u32 *a, u32 b, u32 *c, u32 d) {
    u32 size = BLITFADE_ADD_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFade_Add_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c, d);
}

void BlitFade_Sub(u32 *a, u32 b, u32 *c, u32 d) {
    u32 size = BLITFADE_SUB_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFade_Sub_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c, d);
}

void BlitFade_Div4(u32 *a, u32 *b, u32 c) {
    u32 size = BLITFADE_DIV4_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFade_Div4_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c);
}

void BlitFade_Div2(u32 *a, u32 *b, u32 c) {
    u32 size = BLITFADE_DIV2_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFade_Div2_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c);
}

void BlitFadeAlt_Add(u32 *a, u32 b, u32 *c, u32 d) {
    u32 size = BLITFADE_ALT_ADD_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFadeAlt_Add_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c, d);
}

void BlitFadeAlt_Sub(u32 *a, u32 b, u32 *c, u32 d) {
    u32 size = BLITFADE_ALT_SUB_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFadeAlt_Sub_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c, d);
}

void BlitFadeAlt_Div4(u32 *a, u32 *b, u32 c) {
    u32 size = BLITFADE_ALT_DIV4_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFadeAlt_Div4_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c);
}

void BlitFadeAlt_Div2(u32 *a, u32 *b, u32 c) {
    u32 size = BLITFADE_ALT_DIV2_SIZE / 4;
    u8 funcBuf[size * 4];
    void (*func)(u32 *, u32 *, u32) = funcBuf;
    DMA3_SET(BlitFadeAlt_Div2_ROM, funcBuf, 0x84000000 | size);
    func(a, b, c);
}
