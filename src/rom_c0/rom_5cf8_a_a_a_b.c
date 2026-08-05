/* Cluster Func_8005e70..Func_8005e70 extracted from goldensun/asm/rom_c0/rom_5cf8_a_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_5cf8_a_a_a_a.o and asm/rom_c0/rom_5cf8_a_a_a_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "interrupt.h"
#include "dma.h"
#include "gba/io.h"

struct LinkState {
    /* 0x00 */ u8  unk_00[0x14];
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ u8  unk_18[0x10];
    /* 0x28 */ u8 *unk_28;
    /* 0x2C */ u8 *unk_2C;
    /* 0x30 */ u8 *unk_30[4];
    /* 0x40 */ u8 *unk_40[4];
    /* 0x50 */ u8 *unk_50[4];
    /* 0x60 */ u8  unk_60[0x20];
    /* 0x80 */ u8  unk_80[0x20];
    /* 0xA0 */ u8  unk_A0[2][3][0x20];
}; // sizeof == 0x160

extern struct LinkState ewram_2002240;
extern u16 iwram_3001cb0;
extern u8  ewram_20023a0;
extern u32 ewram_2002080;
extern u16 ewram_2002008;
extern u32 ewram_20023ac;
extern u16 ewram_2002238;

extern void Func_800651c(void);
extern void SetIntrHandler(u32 intr, u32 dispstat, intrfunc_t *vector);
extern void Func_8006240(void);

void Func_8005d10(void) {
    u32 ime;
    s32 i;
    u32 temp;

    ime = REG_IME;
    SET_IO(REG_IME, REG_ADDR_IME);

    SetIntrHandler(7, 0, Func_8006240);
    SetIntrHandler(6, 0, Func_8006240);

    REG_IME = 0;
    REG_IE = REG_IE & 0xFF3F;

    if (REG_IF & 0x80)
        REG_IF = 0x80;
    if (REG_IF & 0x40)
        REG_IF = 0x40;

    REG_RCNT = 0x8000;

    REG_RCNT = 0;
    temp = 0x1000;
    (*(vu32*)REG_ADDR_SIOCNT) = temp;

    REG_RCNT = 0;
    temp = 0x2000;
    (*(vu32*)REG_ADDR_SIOCNT) = temp;

    REG_SIOCNT = REG_SIOCNT | 0x4003;

    REG_IME= 1;

    DMA3_CLEAR(&ewram_2002240, sizeof(ewram_2002240));

    ewram_2002240.unk_14 = -1;
    ewram_2002240.unk_28 = ewram_2002240.unk_60;
    ewram_2002240.unk_2C = ewram_2002240.unk_80;

    for (i = 0; i < 2; i++) {
        ewram_2002240.unk_30[i] = ewram_2002240.unk_A0[i][0];
        ewram_2002240.unk_40[i] = ewram_2002240.unk_A0[i][1];
        ewram_2002240.unk_50[i] = ewram_2002240.unk_A0[i][2];
    }

    REG_IME = 0;
    REG_IE = REG_IE | 0x80;
    REG_IME = 1;

    iwram_3001cb0 = 1;
    ewram_20023a0 = 0;
    ewram_2002080 = 0;
    ewram_2002008 = 0;
    ewram_20023ac = 0;
    ewram_2002238 = 0;

    Func_800651c();

    SET_IO(REG_IME, ime);
}

void Func_8005e70(void) {
    if (ewram_2002240.unk_00[0]) {
        ewram_2002240.unk_00[8] = 1;
    }
}

void Func_8005e88(void) {
    REG_IME = 0;
    REG_IE &= 0xff3f;
    REG_IME = 1;
    REG_SIOCNT = 0x2003;
    REG_TM3CNT = 0xC963;
    REG_IF = 0xC0;
    ewram_2002240.unk_00[8] = 0;
}