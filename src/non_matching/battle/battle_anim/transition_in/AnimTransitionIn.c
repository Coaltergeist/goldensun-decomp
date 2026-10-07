#include "dma.h"

#include "task.h"

struct TransitionInWork {
    u8 pad[8];
    s32 mode;
};

extern unsigned char Data_230[] __asm__(".Lconst_230");

__asm__(".equ .Lconst_230, 0x230");

extern void *iwram_3001f00[];

extern void *GetFile(int);

extern void *galloc_iwram(int, int);

extern void gfree(int);

extern void Func_80b5138(void);

extern void UploadBGPalette(void *, void *, int, int);

extern void Func_80c0098(void *);

extern void Func_80c00d8(void *);

extern void Func_80008d4(void *, u32);

extern void Func_80c0130(void);

void AnimTransitionIn(int a0, int fileId, int a2)
{
    struct TransitionInWork *work = iwram_3001f00[0];
    void *file = GetFile(fileId);
    u8 *state = *(u8 **)((u8 *)iwram_3001f00 - 0x8c);
    int size = (int)Data_230;
    void *decomp = galloc_iwram(0x31, size);
    void (*decompress)(const void *, void *);
    u8 *palette;
    void (*clear)(void *, u32);

    DMA3_COPY(Func_80b5138, decomp, size);

    decompress = (void (*)(const void *, void *))iwram_3001f00[5];
    decompress((u8 *)file + 0x100, (void *)0x06008000);
    gfree(0x31);

    palette = state + 0x544;
    DMA3_COPY(file, palette, 0x100);

    if (a2 >= 0) {
        int scale = 0x10000 - a2 * 1092;
        *(s32 *)(state + 0x644) = scale;
        UploadBGPalette(palette, (void *)0x050000c0, scale, 0x80);
    }

    DMA3_SET((void *)0x05000200, (void *)0x050000a0, 0x80000010);

    *(vu16 *)0x050000bc = *(vu16 *)0x050001e8;
    Func_80c0098((void *)0x06003800);
    Func_80c00d8((void *)0x0600f800);

    clear = Func_80008d4;
    clear((void *)0x0600ffc0, 0x40);

    if (work->mode == 0) {
        StartTask(Func_80c0130, 0x4ff);
    }

    work->mode = a0;
    if (a0 == 1) {
        REG_BG1CNT = 0x1f83;
    }
}
