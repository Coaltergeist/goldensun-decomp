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

extern void Func_80030f8(u32 n);
extern void Func_800403c(void);
extern void Func_80040e8(void); 
extern void Func_8004760(void);
extern void Func_800479c(void);
extern void Func_8004858(void);
extern void InitRAMLib(void);
extern void SetIntrHandler(u32 intrNo, u32 vCount, intrfunc_t *handler);
extern void SetRAMBuildDate(void);
extern void _Func_808a8e4(int a1);
extern void _Func_80f9438(void);
extern void Func_8003650(void);

extern s32 ewram_2002090;
extern s8 iwram_3001ac4;
extern s8 iwram_3001ca0;
extern s8 iwram_3001d18;
extern s8 iwram_3001f54;
extern s8 iwram_3001f58;
extern s32 iwram_3007800;

void AgbMain(void) {
    (void) UnknownDMAPrefix();

    SET_IO(REG_WAITCNT, 0x4014);
    DMA3_CLEAR((void*)0x03000000, 0x1E000 / 4);
    Func_8004858();
    InitRAMLib();
    ewram_2002090 = 0;
    iwram_3001ac4 = 0;
    iwram_3001f54 = 0;
    iwram_3001f58 = 0;
    SetRAMBuildDate();
    Func_800479c();
    Func_8004760();
    REG_DISPCNT = 0x140;
    SetIntrHandler(0, 1, Func_8003650);
    SET_IO(REG_KEYCNT, 0xC00F);
    _Func_80f9438();
    Func_800403c();
    Func_80040e8();
    iwram_3007800 = 0;
    iwram_3001d18 = 1;
    iwram_3001ca0 = 0;
    Func_80030f8(0xA);
    _Func_808a8e4(0);
}

extern vu32 gKeyPress;

void Unused_WaitForever(void)
{
    for (;;) {
        (void) gKeyPress;
        Func_80030f8(1);
    }
}

void Func_8002ef8(void) {}
void Func_8002efc(void) {}
void Func_8002f00(void) {}
void Func_8002f04(void) {}
void Func_8002f08(void) {}
int Func_8002f0c(void) { return 0; }
