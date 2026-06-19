#include "gba/gba.h"
#include "lib/agb_flash/flash_internal.h"

// Macronix (MX29Lxxx) erase/program path. VerifyEraseSector_Core is the
// RAM-resident erase-check routine ProgramFlashSector_MX copies to the stack;
// VerifyEraseSector (the gcc-2.96 wrapper that runs it) lives in
// agb_flash_verify.c; it must link immediately after this TU so the copy-size
// (VerifyEraseSector - VerifyEraseSector_Core) is correct.

u16 EraseFlashChip_MX(void)
{
    u16 result;
    u16 readFlash1Buffer[0x20];

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x10);

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(3, FLASH_BASE, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 EraseFlashSector_MX(u16 sectorNum)
{
    u16 result;
    u8 *addr;
    u16 readFlash1Buffer[0x20];

    if (sectorNum >= 16)
        return 0x80FF;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    addr = FLASH_BASE + (sectorNum << gFlash->sector.shift);

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    *addr = 0x30;

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(2, addr, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 ProgramByte(u8 *src, u8 *dest)
{
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);
    *dest = *src;

    return WaitForFlashWrite(1, dest, *src);
}

u16 ProgramFlashSector_MX(u16 sectorNum, u8 *src)
{
    u16 result;
    u8 *dest;
    u8 numTries;
    u8 numErases;
    u8 j;
    u16 n;
    u16 *funcSrc;
    u16 *funcDest;
    u16 verifyBuffer[0x30];

    if (sectorNum >= 16)
        return 0x80FF;

    dest = FLASH_BASE + (sectorNum << gFlash->sector.shift);

    funcSrc = (u16 *)((intptr_t)VerifyEraseSector_Core ^ 1);
    funcDest = verifyBuffer;
    n = (intptr_t)VerifyEraseSector - (intptr_t)VerifyEraseSector_Core;
    while (n != 0) {
        *funcDest++ = *funcSrc++;
        n -= 2;
    }

    numTries = 0;
    for (;;) {
        result = EraseFlashSector_MX(sectorNum);
        if (result == 0) {
            result = VerifyEraseSector(dest, (u32 (*)(u8 *))((intptr_t)verifyBuffer + 1));
            if (result == 0)
                break;
        }
        if (++numTries == 0x51)
            return result;
    }

    numErases = 1;
    if (numTries != 0)
        numErases = 6;
    for (j = 1; j <= numErases; j++)
        EraseFlashSector_MX(sectorNum);

    SetReadFlash1(verifyBuffer);
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];
    gFlashNumRemainingBytes = gFlash->sector.size;
    while (gFlashNumRemainingBytes != 0) {
        result = ProgramByte(src, dest);
        if (result != 0)
            break;
        gFlashNumRemainingBytes--;
        src++;
        dest++;
    }
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

// RAM-resident erase-check: scans up to a sector of flash, returning 0 once a
// fully-erased (all-0xFF) sector is confirmed, else the count of bytes left.
u32 VerifyEraseSector_Core(u8 *addr)
{
    u32 size = gFlash->sector.size;

    while (size != 0) {
        if (*addr++ != 0xFF)
            break;
        size--;
    }

    return size;
}
