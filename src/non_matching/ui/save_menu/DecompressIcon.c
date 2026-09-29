#include "dma.h"

typedef struct { unsigned char _bytes[256]; } GlobalPtrs;

extern GlobalPtrs gPtrs;

extern void Func_8015afc(void);

void DecompressIcon(unsigned char *icon)
{
    unsigned char *buf;
    unsigned int (*func)(int, unsigned char *);
    int arg0;

    buf = galloc_iwram(0x31, 0x278);
    DMA3_COPY(Func_8015afc, buf, 0x278);
    arg0 = *(int *)(icon + 0x604);
    func = *(unsigned int (**)(int, unsigned char *))((char *)&gPtrs + 0xc4);
    func(arg0, icon);
    gfree(0x31);
}
