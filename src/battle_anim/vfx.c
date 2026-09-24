/* battle_anim/vfx.c -- consolidated TU. */
#include "nonmatching.h"

extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern unsigned int DecompressLZ(const void *, void *);

void LoadVFXFile(int fileIndex, void *dst, int skipPalette, int loadPalette)
{
    void *src = GetFile(fileIndex);
    if (loadPalette != 0) {
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, src, 0x80);
    }
    if (skipPalette != 0) {
        src = (void *)((unsigned char *)src + 0x80);
    }
    DecompressLZ(src, dst);
}
