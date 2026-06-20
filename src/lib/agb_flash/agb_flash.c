#include "gba/gba.h"
#include "lib/agb_flash/flash_internal.h"

// Timer machinery: EWRAM globals private to this TU. Pinned in wram.sym.
extern u8 sTimerNum;
extern u16 sTimerCount;
extern vu16 *gTimerReg;
extern u16 gSavedIme;
extern const u16 *gFlashMaxTime;
// Set by SetReadFlash1, read by WaitForFlashWrite_Common (both below). Pinned too.
extern u8 (*PollFlashStatus)(u8 *);

#define DELAY()                                                                \
    do {                                                                       \
        vu16 i;                                                                \
        for (i = 20000; i != 0; i--)                                           \
            ;                                                                  \
    } while (0)

u16 ReadFlashId(void)
{
    u16 flashId;
    u16 readFlash1Buffer[0x20];
    u8 (*readFlash1)(u8 *);

    SetReadFlash1(readFlash1Buffer);
    readFlash1 = (u8 (*)(u8 *))((intptr_t)readFlash1Buffer + 1);

    // Enter ID mode.
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x90);
    DELAY();

    flashId = readFlash1(FLASH_BASE + 1) << 8;
    flashId |= readFlash1(FLASH_BASE);

    // Leave ID mode.
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xF0);
#if !AGBFLASH_USE_V126
    FLASH_WRITE(0x5555, 0xF0);
#endif
    DELAY();

    return flashId;
}

u16 IdentifyFlash(void)
{
    u16 result;
    u16 flashId;
    const struct FlashSetupInfo *const *setupInfo;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    flashId = ReadFlashId();

    setupInfo = gSetup512KInfos;
    result = 1;

    for (;;) {
        if ((*setupInfo)->type.ids.separate.makerId == 0)
            break;

        if (flashId == (*setupInfo)->type.ids.joined) {
            result = 0;
            break;
        }

        setupInfo++;
    }

    ProgramFlashSector = (*setupInfo)->programFlashSector;
    EraseFlashChip = (*setupInfo)->eraseFlashChip;
    EraseFlashSector = (*setupInfo)->eraseFlashSector;
    WaitForFlashWrite = (*setupInfo)->WaitForFlashWrite;
    gFlashMaxTime = (*setupInfo)->maxTime;
    gFlash = &(*setupInfo)->type;

    return result;
}

void FlashTimerIntr(void)
{
    if (sTimerCount != 0)
        if (--sTimerCount == 0)
            gFlashTimeoutFlag = 1;
}

u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void))
{
    if (timerNum >= 4)
        return 1;

    sTimerNum = timerNum;
    gTimerReg = &REG_TMCNT(sTimerNum);
    *intrFunc = FlashTimerIntr;
    return 0;
}

void StartFlashTimer(u8 phase)
{
    const u16 *maxTime = &gFlashMaxTime[phase * 3];
    gSavedIme = REG_IME;
    REG_IME = 0;
    REG_IE |= (INTR_FLAG_TIMER0 << sTimerNum);
    REG_IME = 1;
    gFlashTimeoutFlag = 0;
    sTimerCount = *maxTime++;
    *gTimerReg++ = *maxTime++;
    *gTimerReg-- = *maxTime++;
}

void StopFlashTimer(void)
{
    *gTimerReg++ = 0;
    *gTimerReg-- = 0;
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_TIMER0 << sTimerNum);
    REG_IME = gSavedIme;
}

// RAM-resident byte reader, copied into EWRAM by SetReadFlash1; PollFlashStatus
// points at the copy. (Originally a gcc-2.96 TU, but byte-matches old_agbcc too.)
u8 ReadFlash1(u8 *addr) { return *addr; }

void SetReadFlash1(u16 *dest)
{
    u16 *src;
    u16 i;

    PollFlashStatus = (u8 (*)(u8 *))((intptr_t)dest + 1);

    src = (u16 *)ReadFlash1;
    src = (u16 *)((intptr_t)src ^ 1);

    i = ((intptr_t)SetReadFlash1 - (intptr_t)ReadFlash1) >> 1;

    while (i != 0) {
        *dest++ = *src++;
        i--;
    }
}

u16 WaitForFlashWrite_Common(u8 phase, u8 *addr, u8 lastData)
{
    u16 result = 0;

    StartFlashTimer(phase);

    while (PollFlashStatus(addr) != lastData) {
        if (gFlashTimeoutFlag) {
            if (PollFlashStatus(addr) == lastData)
                break;

            if (gFlash->ids.joined == 0x1CC2)
                FLASH_WRITE(0x5555, 0xF0);

            result = phase | 0xC000u;
            break;
        }
    }

    StopFlashTimer();

    return result;
}

void ReadFlash_Core(u8 *src, u8 *dest, u32 size)
{
    while (size-- != 0) {
        *dest++ = *src++;
    }
}

void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size)
{
    u8 *src;
    u16 i;
    u16 readFlash_Core_Buffer[0x40];
    u16 *funcSrc;
    u16 *funcDest;
    void (*readFlash_Core)(u8 *, u8 *, u32);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

#if !AGBFLASH_USE_V126
    if (gFlash->romSize == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }
#endif

    funcSrc = (u16 *)ReadFlash_Core;
    funcSrc = (u16 *)((intptr_t)funcSrc ^ 1);
    funcDest = readFlash_Core_Buffer;

    i = ((intptr_t)ReadFlash - (intptr_t)ReadFlash_Core) >> 1;

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i--;
    }

    readFlash_Core = (void (*)(u8 *, u8 *, u32))((intptr_t)readFlash_Core_Buffer + 1);

#if AGBFLASH_USE_V126
    src = FLASH_BASE + (sectorNum << DefaultFlash512K.type.sector.shift) + offset;
#else
    src = FLASH_BASE + (sectorNum << gFlash->sector.shift) + offset;
#endif

    readFlash_Core(src, dest, size);
}

u32 VerifyFlashSector_Core(u8 *src, u8 *tgt, u16 size)
{
    while (size-- != 0) {
        if (*tgt++ != *src++)
            return (uintptr_t)(tgt - 1);
    }

    return 0;
}

u32 VerifyFlashSector(u16 sectorNum, u8 *src)
{
    u16 i;
    u16 verifyFlashSector_Core_Buffer[0x80];
    u16 *funcSrc;
    u16 *funcDest;
    u8 *tgt;
    u16 size;
    u32 (*verifyFlashSector_Core)(u8 *, u8 *, u32);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

#if !AGBFLASH_USE_V126
    if (gFlash->romSize == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }
#endif

    funcSrc = (u16 *)VerifyFlashSector_Core;
    funcSrc = (u16 *)((intptr_t)funcSrc ^ 1);
    funcDest = verifyFlashSector_Core_Buffer;

    i = ((intptr_t)VerifyFlashSector - (intptr_t)VerifyFlashSector_Core) >> 1;

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i--;
    }

    verifyFlashSector_Core = (u32 (*)(u8 *, u8 *, u32))((intptr_t)verifyFlashSector_Core_Buffer + 1);

#if AGBFLASH_USE_V126
    tgt = FLASH_BASE + (sectorNum << DefaultFlash512K.type.sector.shift);
    size = DefaultFlash512K.type.sector.size;
#else
    tgt = FLASH_BASE + (sectorNum << gFlash->sector.shift);
    size = gFlash->sector.size;
#endif

    return verifyFlashSector_Core(src, tgt, size); // return 0 if verified.
}
