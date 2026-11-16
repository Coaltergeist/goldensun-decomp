/*
 * Blocked by `static inline DMA3_COPY` in `include/dma.h` (same limitation as
 * `src/non_matching/maps/title/OvlFunc_879_2008454.c`):
 * passing `gBuffer` to `static inline DMA3_COPY(gBuffer, ...)` copies its address into a formal
 * pseudo, allowing `cse2` to CSE `gBuffer` into `r5` across `__DecompressLZ(file + 0x1c0, gBuffer)`
 * instead of reloading `.L_gBuffer` into `r0` after `__DecompressLZ` as the GBA SDK `#define`
 * macro (`register const void *_src __asm__("r0") = src;`) did.
 */
#include "dma.h"
#include "state/global_state.h"

extern GlobalState gState;
extern unsigned char gBuffer[];
extern void __Func_8003b70(int);
extern void *__GetFile(int);
extern void __DecompressLZ(const void *, void *);
extern void *Menu_GetActor(int) __asm__("__MapActor_GetActor");

extern unsigned char Lconst_1a[] __asm__(".Lconst_1a");
__asm__(".equ .Lconst_1a, 0x1a");
extern unsigned char Lconst_0[] __asm__(".Lconst_0");
__asm__(".equ .Lconst_0, 0");

struct BgScroll880 {
    unsigned short hofs;
    unsigned short vofs;
};

struct BgRegs880 {
    struct BgScroll880 bg[4];
};

struct Unk3001e70 {
    unsigned char pad[0x14];
    unsigned short unk14;
};

extern struct BgRegs880 iwram_3001ad0;
extern struct Unk3001e70 *iwram_3001e70;

void OvlFunc_880_2008054(void) {
    GlobalState *state;
    unsigned char *file;
    unsigned short *tilemap;
    unsigned short tile;
    struct BgScroll880 *scroll;
    unsigned char *actor;
    unsigned int row;
    unsigned int col;

    __Func_8003b70(0);
    REG_BG2CNT = 0x0681;
    iwram_3001ad0.bg[2].vofs = 0;

    file = (unsigned char *)__GetFile((int)Lconst_1a);
    DMA3_COPY(file, (void *)0x05000000, 0x1c0);

    __DecompressLZ(file + 0x1c0, gBuffer);
    DMA3_COPY(gBuffer, (void *)0x06006800, 0x9600);

    tile = 0x1a0;
    tilemap = (unsigned short *)0x06003000;
    for (row = 0; row < 20; row++) {
        for (col = 0; col < 30; col++) {
            *tilemap++ = tile++;
        }
        *tilemap++ = 0x1ff;
        *tilemap++ = 0x1ff;
    }

    scroll = iwram_3001ad0.bg;
    for (row = 0; row < 4; row++) {
        scroll->vofs = 0;
        scroll->hofs = 0;
        scroll++;
    }

    DMA3_COPY(&iwram_3001ad0, (void *)REG_ADDR_BG0HOFS, 16);

    iwram_3001e70->unk14 = 0x1400;

    state = &gState;
    actor = (unsigned char *)Menu_GetActor(*(int *)((char *)state + 0x1f4));
    actor[0x55] = (int)Lconst_0;
}
