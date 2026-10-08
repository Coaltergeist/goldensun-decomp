extern unsigned char gBuffer[];
extern unsigned char iwram_3001ad0[];
extern unsigned char iwram_3001e70[];
extern void __Func_8003b70(unsigned int);
extern void *__GetFile(int);
extern void __DecompressLZ(void *, void *);

void OvlFunc_879_2008454(void) {
    u8 *file;
    u16 *map;
    u16 *scroll;
    unsigned int row;
    unsigned int col;
    short tile;

    __Func_8003b70(0);
    REG_BG2CNT = 0x681;
    *(u16 *)(iwram_3001ad0 + 0xa) = 0;

    file = (u8 *)__GetFile(0x1a);
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

    scroll = (u16 *)iwram_3001ad0;
    for (row = 0; row < 4; row++) {
        scroll[1] = 0;
        scroll[0] = 0;
        scroll += 2;
    }
    DMA3_COPY(iwram_3001ad0, (void *)REG_ADDR_BG0HOFS, 0x10);

    *(u16 *)(*(u8 **)iwram_3001e70 + 0x14) = 0x1400;
}
