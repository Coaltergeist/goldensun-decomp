/* Cluster Func_8003808..Func_800380c extracted from goldensun/rom_c0/src/rom_3650.s.
 *
 * Total .text for this TU = 8 bytes (= 0x8).
 * Preserves the original ROM layout when slotted between
 * rom_c0/src/rom_3650_a.o and rom_c0/src/rom_3650_c.o in stage1.ld.
 */

#include "gba/io.h"
#include "dma.h"

extern void Func_8003adc(void);
extern s16 Func_8006088(void*, void*);
extern void Func_800655c(void);
extern void RunTasks(u32);
extern void UploadPalette(void);
extern void _UpdateMusicSettings(void);
extern void cam4aSoundMain(void);

extern u8 ewram_2002020;
extern u8 ewram_2002220;
extern vs32 gKeyHeld;
extern vs32 gKeyPress;
extern vs32 gKeyRepeat;
extern void *gPtrs[];
extern s32 iwram_3001800;
extern u8 iwram_3001ad0[];
extern s32 iwram_3001af8;
extern s32 iwram_3001b00;
extern u16 iwram_3001cb0;
extern u16 iwram_3001ccc;
extern void (*iwram_3001cfc)(void);
extern s32 iwram_3001d0c;
extern u8 iwram_3001d18;
extern s16 iwram_3001d28;
extern u8 iwram_3001e44;
extern s16 iwram_3001f64;

void VBlank(void) {
    u32 keyInput;
    u32 keyRepeat;
    (void) UnknownDMAPrefix();
    if (iwram_3001cb0 != 0) {
        s16 *ptr = &iwram_3001f64;
        *ptr = Func_8006088(&ewram_2002220, &ewram_2002020);;
        Func_800655c();
    }
    _UpdateMusicSettings();
    Func_8003adc();
    if (iwram_3001e44 != 0) {
        if (iwram_3001d18 != 0) {
            DMA3_COPY(gPtrs[0x34], (void*) 0x07000000, 1024);
        }
        DMA3_COPY(iwram_3001ad0, (void *)REG_ADDR_BG0HOFS, 16);
        UploadPalette();
        iwram_3001e44 = 0;
    }

    if (iwram_3001cfc != NULL) {
        void (*savedFunction)(void) = iwram_3001cfc;
        iwram_3001cfc = NULL;
        savedFunction();
    }
    RunTasks(0x480);
    keyInput = REG_KEYINPUT ^ 0x3FF;
    keyRepeat = keyInput & ~gKeyHeld;
    gKeyPress = keyRepeat;
    iwram_3001af8 |= keyRepeat;
    gKeyHeld = keyInput;
    if (keyInput == 0) {
        iwram_3001b00 = 19;
        gKeyRepeat = keyInput;
    } else if (gKeyHeld & (iwram_3001d0c ^ 0xFFFF)) {
        iwram_3001b00 = -1;
        gKeyRepeat = keyInput;
    } else if (iwram_3001b00 > 0) {
        iwram_3001b00 -= 1;
    }
    iwram_3001d0c = keyInput;
    iwram_3001800 += 1;
    iwram_3001ccc += 1;
    iwram_3001d28 = 1;
    cam4aSoundMain();
}


extern u8 RAM_SoundFXCode[];
extern u8 ROM_SoundFXCode[];

#define SOUND_FX_SEGMENT_SIZE (0x98)

s32 SetSoundFXMode(u32 filterID) {
    if (filterID > 4) {
        filterID = 0;
    }
    DMA3_COPY(ROM_SoundFXCode + (filterID * SOUND_FX_SEGMENT_SIZE), RAM_SoundFXCode, SOUND_FX_SEGMENT_SIZE);
    return 0;
}

void Func_8003808(void) {}
void Func_800380c(void) {}

extern bool16 ewram_2002000;
extern bool8 gSoftReset;

void KeypadIntr(void) {
    if (!ewram_2002000) {
        SET_IO(REG_KEYCNT, (KEY_AND_INTR | KEY_INTR_ENABLE | DPAD_ANY | JOY_EXCL_DPAD));
        gSoftReset = 1;
    }
}
