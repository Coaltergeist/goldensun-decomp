/*
 * Blocked by `static inline DMA3_COPY` in `include/dma.h` (see note at `include/dma.h:51-52`):
 * passing `gBuffer` to `static inline DMA3_COPY(gBuffer, ...)` copies its address into a formal
 * pseudo, allowing `cse2` to CSE `gBuffer` into `r5` across `__DecompressLZ(file + 0x1c0, gBuffer)`
 * instead of reloading `.L_gBuffer` into `r0` after `__DecompressLZ` as the GBA SDK `#define`
 * macro (`register const void *_src __asm__("r0") = src;`) did. Matches 102/104 instructions.
 */
extern unsigned char Lconst_1a[] __asm__(".Lconst_1a");
__asm__(".equ .Lconst_1a, 0x1a");

struct TitleBgScroll {
    u16 x;
    u16 y;
};

struct TitleUnk1e70 {
    u8 pad[0x14];
    u16 unk14;
};

extern unsigned char gBuffer[];
extern u16 iwram_3001ad0[];
extern struct TitleUnk1e70 *iwram_3001e70;
extern void __Func_8003b70(unsigned int);
extern void *__GetFile(int);
extern u32 __DecompressLZ(const void *, void *);

void OvlFunc_879_2008454(void) {
    u8 *file;
    u16 *map;
    struct TitleBgScroll *scroll;
    unsigned int row;
    unsigned int col;
    u16 tile;

    __Func_8003b70(0);
    REG_BG2CNT = 0x681;
    iwram_3001ad0[5] = 0;

    file = (u8 *)__GetFile((int)Lconst_1a);
    DMA3_COPY(file, (void *)0x5000000, 0x1c0);
    __DecompressLZ(file + 0x1c0, gBuffer);
    DMA3_COPY(gBuffer, (void *)0x6006800, 0x9600);

    tile = 0x1a0;
    map = (u16 *)0x6003000;
    for (row = 0; row < 20; row++) {
        for (col = 0; col < 30; col++) {
            *map++ = tile++;
        }
        *map++ = 0x1ff;
        *map++ = 0x1ff;
    }

    scroll = (struct TitleBgScroll *)iwram_3001ad0;
    for (row = 0; row < 4; row++) {
        scroll->y = 0;
        scroll->x = 0;
        scroll++;
    }
    DMA3_COPY(iwram_3001ad0, (void *)REG_ADDR_BG0HOFS, 0x10);

    iwram_3001e70->unk14 = 0x1400;
}
