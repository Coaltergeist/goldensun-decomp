extern void __Func_8003b70(int);
extern void *__GetFile(int);
extern void __DecompressLZ(const void *, void *);
extern void *Menu_GetActor(int) __asm__("__MapActor_GetActor");

extern unsigned char iwram_3001ad0[];
extern unsigned char gBuffer[];
extern unsigned char *iwram_3001e70;
extern unsigned char gState[];

typedef struct {
    const void *src;
    void *dest;
    unsigned int cnt;
} DmaTransfer;

static inline void DmaCopy(const void *src, void *dest, unsigned int cnt) {
    DmaTransfer transfer;
    transfer.src = src;
    transfer.dest = dest;
    transfer.cnt = cnt;
    *(volatile DmaTransfer *)0x040000D4 = transfer;
}

void OvlFunc_880_2008054(void) {
    void *file;
    volatile unsigned short *tilemap;
    unsigned short tile;
    unsigned short *scroll;
    unsigned char *actor;
    int row;
    int col;
    int i;

    __Func_8003b70(0);
    *(volatile unsigned short *)0x0400000C = 0x0681;
    *(unsigned short *)(iwram_3001ad0 + 0x0A) = 0;

    file = __GetFile(0x1A);
    DmaCopy(file, (void *)0x05000000, 0x84000070);

    __DecompressLZ((unsigned char *)file + 0x1C0, gBuffer);
    DmaCopy(gBuffer, (void *)0x06006800, 0x84002580);

    tilemap = (volatile unsigned short *)0x06003000;
    tile = 0x1A0;
    for (row = 0; row < 20; row++) {
        for (col = 0; col < 30; col++) {
            *tilemap++ = tile++;
        }
        *tilemap++ = 0x1FF;
        *tilemap++ = 0x1FF;
    }

    scroll = (unsigned short *)iwram_3001ad0;
    for (i = 0; i < 4; i++) {
        scroll[1] = 0;
        scroll[0] = 0;
        scroll += 2;
    }

    DmaCopy(iwram_3001ad0, (void *)0x04000010, 0x84000004);

    *(unsigned short *)(iwram_3001e70 + 0x14) = 0x1400;

    actor = (unsigned char *)Menu_GetActor(*(int *)(gState + 0x1F4));
    actor[0x55] = 0;
}
