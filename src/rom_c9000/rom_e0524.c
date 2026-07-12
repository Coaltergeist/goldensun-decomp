#include "file_table.h"

extern void Func_8001af8(void *dst, unsigned char *src, unsigned int size)
    __attribute__((long_call));
extern void DecompressLZ(unsigned char *src, void *dst);

void LoadVFXFile(int fileId, void *dst, int useSecondBlock, int uploadPalette) {
    unsigned char *src = GetFile(fileId);

    if (uploadPalette != 0) {
        void (*copy)(void *, unsigned char *, unsigned int) =
            (void (*)(void *, unsigned char *, unsigned int))Func_8001af8;
        copy((void *)0x05000000, src, 0x80);
    }
    if (useSecondBlock != 0)
        src += 0x80;
    DecompressLZ(src, dst);
}
