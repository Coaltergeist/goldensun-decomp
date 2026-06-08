/* Cluster Func_8002f3c..Func_8002f3c extracted from goldensun/rom_c0/src/rom_2e00_c.s.
 *
 * Total .text for this TU = 4 bytes (= 0x4).
 * Preserves the original ROM layout when slotted between
 * rom_c0/src/rom_2e00_c_a.o and rom_c0/src/rom_2e00_c_c.o in
 * goldensun/stage1.ld.
 */

#include "file_table.h"
#include "dma.h"

extern unsigned gRAMBuildDate[];

void SetRAMBuildDate(void)
{
    void *src = GetFile(FILE_BUILD_DATE);
    DMA3_COPY(src, gRAMBuildDate, 12);
    gRAMBuildDate[3] = 0;
}

void Func_8002f3c(void) {}

void *GetFile(int index) {
    return gFileTable[index];
}

#define MASK_HI 0xF800u
#define MASK_LO 0xF000u
#define MASK_IMM 0x07FFu

void ROM_Unused_DecodeThumbBranchLink(unsigned short *code, int len)
{
    int instructionCount = len >> 1;
    int i;
    unsigned abs;
    code++;
    for (i = 1; i < instructionCount; i++) {
        unsigned lo = 0;
        if (((lo = *(code++)) & MASK_HI) == MASK_HI) {
            unsigned hi = 0;
            if (((hi = (*(code - 2))) & MASK_HI) == MASK_LO) {
                unsigned ins1;
                unsigned ins2;
                abs = (((hi & MASK_IMM) << 12) | ((lo & MASK_IMM) << 1)) - 2*i;
                ins1 = ((abs >> 12) & 0x7ff)| MASK_LO;
                ins2 = ((abs >> 1) & 0x7ff)| MASK_HI;
                *(code - 2) = ins1 ;
                *(code - 1) = ins2 ;
            }
        }
    }
}

extern unsigned DecompressLZ(void *src, void *dst);
extern int _FIXUP_RAM_CODE_SIZE;
extern unsigned short ROM_FixupRamCode[];
extern void *Func_8004938(unsigned size); //IWramMalloc
extern void free(void *mem);

void LoadMapCode(int file, void *dst) {
    void *src = GetFile(file);
    void (*func)(unsigned short *, int);
    unsigned decompressedSize = DecompressLZ(src, dst);

    // FAKE MATCH, the compiler wants to load _FIXUP_RAM_CODE_SIZE from the
    // literal pool before saving decompressedSize
    __asm__ volatile("");

    func = Func_8004938((int)&_FIXUP_RAM_CODE_SIZE);
    DMA3_COPY(ROM_FixupRamCode, func, (int)&_FIXUP_RAM_CODE_SIZE);
    func(dst, decompressedSize);
    free(func);
}
