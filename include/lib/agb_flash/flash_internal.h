#ifndef GUARD_LIB_AGB_FLASH_FLASH_INTERNAL_H
#define GUARD_LIB_AGB_FLASH_FLASH_INTERNAL_H

#include "gba/types.h"

// GS1/GS2 ship the launch-era "Flash v123" save library. Like SA1's v126, it
// follows the USE_V126 code paths: IdentifyFlash iterates gSetup512KInfos, and
// ReadFlash/VerifyFlashSector size themselves off DefaultFlash512K rather than a
// per-chip gFlash field. (The later 1Mbit FLASH1M variant differs.)
#define AGBFLASH_USE_V126 1

#define FLASH_BASE ((u8 *)0xE000000)
#define FLASH_WRITE(addr, data) ((*(vu8 *)(FLASH_BASE + (addr))) = (data))

#define FLASH_ROM_SIZE_1M 131072
#define SECTORS_PER_BANK 16

struct FlashSector {
    u32 size;
    u8 shift;
    u16 count;
    u16 top;
};

struct FlashType {
    u32 romSize;
    struct FlashSector sector;
    u16 wait[2]; // game pak bus read/write wait
    union {
        struct {
            u8 makerId;
            u8 deviceId;
        } separate;
        u16 joined;
    } ids;
};

// Launch-SDK (v126) setup record: five entry points then the chip type, so
// `type` lands at +0x14. IdentifyFlash @0x6910 stores the five pointers from a
// matched record into gFlash et al. and confirms this layout.
struct FlashSetupInfo {
    u16 (*programFlashSector)(u16, void *);
    u16 (*eraseFlashChip)(void);
    u16 (*eraseFlashSector)(u16);
    u16 (*WaitForFlashWrite)(u8, u8 *, u8);
    const u16 *maxTime;
    struct FlashType type;
};

// The two Atmel AT29LV512 page records the agb_flash_at.c driver reads (raw-rodata
// labels .L7be4 / .L7c10). Five header words precede the type, mirroring
// FlashSetupInfo (type at +0x14).
struct FlashChipSetup {
    const void *header[5];
    struct FlashType type;
};

// Globals shared across the split TUs (pinned to fixed EWRAM in wram.sym).
extern const struct FlashType *gFlash;
extern u16 gFlashNumRemainingBytes;
extern u16 (*ProgramFlashSector)(u16, void *);
extern u16 (*EraseFlashChip)(void);
extern u16 (*EraseFlashSector)(u16);
extern u16 (*WaitForFlashWrite)(u8, u8 *, u8);
extern u8 gFlashTimeoutFlag;

// Const records living as raw rodata (agb_flash_data.s).
extern const struct FlashSetupInfo *const gSetup512KInfos[];
extern const struct FlashSetupInfo DefaultFlash512K;
extern const struct FlashChipSetup gFlashChip2; // .L7be4
extern const struct FlashChipSetup gFlashChip3; // .L7c10

// agb_flash.c core (old_agbcc -O)
u16 ReadFlashId(void);
u16 IdentifyFlash(void);
void FlashTimerIntr(void);
u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void));
void StartFlashTimer(u8 phase);
void StopFlashTimer(void);
u8 ReadFlash1(u8 *addr);
void SetReadFlash1(u16 *dest);
u16 WaitForFlashWrite_Common(u8 phase, u8 *addr, u8 lastData);
void ReadFlash_Core(u8 *src, u8 *dest, u32 size);
void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);
u32 VerifyFlashSector_Core(u8 *src, u8 *tgt, u16 size);
u32 VerifyFlashSector(u16 sectorNum, u8 *src);
// agb_flash_mx.c Macronix (old_agbcc -O)
u16 EraseFlashChip_MX(void);
u16 EraseFlashSector_MX(u16 sectorNum);
u16 ProgramByte(u8 *src, u8 *dest);
u16 ProgramFlashSector_MX(u16 sectorNum, u8 *src);
u32 VerifyEraseSector_Core(u8 *addr);
// agb_flash_verify.c (gcc-2.96)
u16 VerifyEraseSector(u8 *addr, u32 (*verify)(u8 *));
// agb_flash_at.c Atmel AT29LV512 (old_agbcc -O)
u16 Func_8006f84(u16 sectorNum, u8 *src); // MX29L512 program-sector; name TBD
u16 EraseFlashChip_AT(void);
u16 EraseFlashSector_AT_2(u16 page);
u16 EraseFlashSector_AT(u16 sectorNum);
u16 ProgramFlashSector_AT_2(u16 page, u8 *src);
u16 ProgramFlashSector_AT(u16 sectorNum, u8 *src);

#endif // GUARD_LIB_AGB_FLASH_FLASH_INTERNAL_H
