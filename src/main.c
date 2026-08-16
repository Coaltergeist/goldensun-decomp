// fakematch
/* main.c -- consolidated TU. */
#include "nonmatching.h"

#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"
#include "interrupt.h"

extern void WaitFrames();
extern void InitRAMLib();
extern void SetIntrHandler();
extern void SetRAMBuildDate();
extern void UpdateKeyPressRepeat();

extern void ClearSprites(void);
extern void ClearTasks(void); 
extern void ClearVRAM(void);
extern void LoadStaticUIGFX(void);
extern void ClearHeap(void);
extern void _GameStart(int a1);
extern void _InitSoundEngine(void);
extern void VBlank(void);

extern s32 gDMATaskCount;
extern s8 iwram_3001ac4;
extern s8 iwram_3001ca0;
extern s8 iwram_3001d18;
extern s8 gDebugMode;
extern s8 iwram_3001f58;
extern s32 gIWRAMHeap_end;

void AgbMain(void) {
    (void) UnknownDMAPrefix();

    SET_IO(REG_WAITCNT, 0x4014);
    DMA3_CLEAR((void*)0x03000000, 0x1E000 / 4);
    ClearHeap();
    InitRAMLib();
    gDMATaskCount = 0;
    iwram_3001ac4 = 0;
    gDebugMode = 0;
    iwram_3001f58 = 0;
    SetRAMBuildDate();
    LoadStaticUIGFX();
    ClearVRAM();
    REG_DISPCNT = 0x140;
    SetIntrHandler(0, 1, VBlank);
    SET_IO(REG_KEYCNT, 0xC00F);
    _InitSoundEngine();
    ClearSprites();
    ClearTasks();
    gIWRAMHeap_end = 0;
    iwram_3001d18 = 1;
    iwram_3001ca0 = 0;
    WaitFrames(0xA);
    _GameStart(0);
}

extern vu32 gKeyPress;

void Unused_WaitForever(void)
{
    for (;;) {
        (void) gKeyPress;
        WaitFrames(1);
    }
}

void Func_8002ef8(void) {}
void Func_8002efc(void) {}
void Func_8002f00(void) {}
void Func_8002f04(void) {}
void Func_8002f08(void) {}
int Func_8002f0c(void) { return 0; }

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
extern unsigned short FixupRamCode_ROM[];
extern void *alloc_iwram(unsigned size); //IWramMalloc
extern void free(void *mem);

void LoadMapCode(int file, void *dst) {
    void *src = GetFile(file);
    void (*func)(unsigned short *, int);
    unsigned decompressedSize = DecompressLZ(src, dst);

    // FAKE MATCH, the compiler wants to load _FIXUP_RAM_CODE_SIZE from the
    // literal pool before saving decompressedSize
    __asm__ volatile("");

    func = alloc_iwram((int)&_FIXUP_RAM_CODE_SIZE);
    DMA3_COPY(FixupRamCode_ROM, func, (int)&_FIXUP_RAM_CODE_SIZE);
    func(dst, decompressedSize);
    free(func);
}
