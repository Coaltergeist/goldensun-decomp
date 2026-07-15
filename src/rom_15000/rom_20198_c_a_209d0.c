#include "gba/types.h"
typedef struct ImageInfo { u8 pad[8]; u16 width,height,x,y; } ImageInfo;
extern u8 *iwram_3001e8c; extern void *Func_8004970(unsigned); extern unsigned DecompressLZ(const void*,void*); extern void free(void*);
void Func_80209d0(const ImageInfo *infoArg, const void *compressedArg)
{
    register const ImageInfo *info asm("r5") = infoArg;
    register const void *compressed asm("r8");
    register u16 *buffer asm("r10");
    register u16 *mirror asm("r6");
    register u8 **global asm("r3") = &iwram_3001e8c;
    register unsigned size asm("r0");
    register u16 *source asm("r7");
    register u16 *vram asm("r0");
    register int row asm("r12");
    register int height asm("r4");
    register int width asm("r2");
    register int column asm("r1");
    register int stride asm("r14");
    register int padding asm("r3");
    register int offset asm("r3");
    asm volatile ("mov r0, #0xc0\n\tlsl r0, #2\n\tldr r6, [r3]\n\tmov r8, r1" : "=r" (size), "=r" (mirror), "=r" (compressed) : "r" (global), "r" (compressedArg));
    buffer = Func_8004970(size);
    DecompressLZ(compressed,buffer);
    offset = info->y * 32 + info->x;
    asm volatile ("ldr r1, =0x06002000\n\tmov r2, #0\n\tldrh r4, [r5, #10]\n\tlsl r3, #1\n\tmov r12, r2\n\tmov r7, r10\n\tadd r0, r3, r1\n\tadd r6, r3" : "=r" (width), "=r" (height), "=r" (row), "=r" (source), "=r" (vram), "+r" (mirror) : "r" (offset));
    if (row < height) {
        asm volatile ("mov r3, #32\n\tldrh r2, [r5, #8]\n\tmov r14, r3" : "=r" (stride), "=r" (width));
        do {
            column=0;
            if (column < width) {
                do {
                    u16 value=*source++;
                    *vram++=value; *mirror++=value; width=info->width; column++;
                } while(column < width);
                height=info->height;
            }
            padding = stride-width; padding <<= 1; vram = (u16 *)((u8 *)vram + padding); mirror = (u16 *)((u8 *)mirror + padding); row++;
        } while(row < height);
    }
    free(buffer);
}
