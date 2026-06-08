/* Trivial function cluster between Func_8002ee4 and Func_8002f10 in rom_2e00.s.
 *
 * Five no-op stubs (presumably callbacks or vtable slots intentionally left
 * empty) and a constant-zero return helper. agbcc -O2 emits each void leaf
 * as a bare `bx lr` (2 bytes) with 2 bytes of inter-function alignment
 * padding; the zero-returner is `mov r0, #0; bx lr` (4 bytes). Total .text
 * for this TU is exactly 24 bytes = 0x2f10 - 0x2ef8, preserving the original
 * ROM layout when slotted between rom_2e00_a.o and rom_2e00_c.o in stage1.ld.
 */

#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"
#include "interrupt.h"

extern void WaitFrames(u32 n);
extern void ClearSprites(void);
extern void ClearTasks(void); 
extern void ClearVRAM(void);
extern void Func_800479c(void);
extern void ClearHeap(void);
extern void InitRAMLib(void);
extern void SetIntrHandler(u32 intrNo, u32 vCount, intrfunc_t *handler);
extern void SetRAMBuildDate(void);
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
    Func_800479c();
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
