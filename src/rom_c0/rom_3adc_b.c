/* Cluster Func_8003ce0..Func_8003ce0 extracted from goldensun/asm/rom_c0/rom_3adc.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3adc_a.o and asm/rom_c0/rom_3adc_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "gba/io.h"

extern vu8 iwram_3001ac0;
extern u8 iwram_3001aec;
extern vu8 iwram_3001c98;
extern vu8 iwram_3001ca8;
extern u8 iwram_3001cd4;
extern u16 iwram_3001cf8;

void Func_8003adc(void) {
    s32 temp1;
    u32 temp2;
    u32 temp3;
    u32 temp4;
    if (iwram_3001c98 == 0) return;

    if (iwram_3001cd4 != 0) {
        SET_IO(REG_BLDCNT, iwram_3001cf8 | 0x80);
    } else {
        SET_IO(REG_BLDCNT, iwram_3001cf8 | 0xC0);
    }

    iwram_3001ac0 = iwram_3001ac0 - 1;
    temp3 = iwram_3001ca8;
    temp1 = ((iwram_3001aec - iwram_3001ca8) * iwram_3001ac0);
    temp2 = temp1 / iwram_3001c98;
    REG_BLDY = temp3 + temp2;

    temp4 = iwram_3001ac0;
    if (temp4 == 0) {
        iwram_3001c98 = temp4;
    }
}

void Func_8003b70(u32 arg0) {
    iwram_3001cd4 = 0;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0x10;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003bb4(u32 arg0) {
    iwram_3001cd4 = 0;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003bf8(u32 arg0) {
    iwram_3001cd4 = 1;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0x10;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003c3c(u32 arg0) {
    iwram_3001cd4 = 1;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003c80(u8 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4) {
    vu8 *r2;
    vu8 *r1;
    iwram_3001cd4 = arg0;
    iwram_3001cf8 = arg1 & 0x3F;
    if (arg2 > 0x10) {
        iwram_3001aec = iwram_3001ca8;
    } else {
        iwram_3001aec = (u8) arg2;
    }
    iwram_3001ca8 = arg3;
    r1 = &iwram_3001ac0;
    r2 = &iwram_3001c98;
    *r2 = arg4;
    *r1 = *r2;
}

void Func_8003ce0(void)
{
    if (iwram_3001c98 != 0)
    {
        do
        {
            WaitFrames(1);
        } while (iwram_3001c98 != 0);
    }
}
