#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"

extern unsigned int iwram_3001e74[];
extern void UploadBGPalette(void *source, void *destination, int blend, int count);

void Func_80c0700(int a, int index)
{
    register unsigned char *base __asm__("r0") = (unsigned char *)iwram_3001e74[0];
    register int idx __asm__("r4") = index;
    register unsigned char *source __asm__("r5") = base + 0x544;
    unsigned int imeBackup;
    register unsigned int *backup __asm__("r6") = &imeBackup;

    __asm__ volatile ("" : : "r" (backup));

    {
        unsigned int old = REG_IME;
        *backup = old;
        SET_IO(REG_IME, REG_ADDR_IME);
    }

    if (idx == 0) {
        DMA3_SET(source, (void *)0x050000c0, 0x80000080);
    } else {
        int *slot = (int *)(base + 0x644);
        int blend = 0x10000 - idx * 0x444;
        *slot = blend;
        UploadBGPalette(source, (void *)0x050000c0, blend, 0x80);
    }

    {
        unsigned int oldIme = *backup;
        REG_IME = oldIme;
    }
}
