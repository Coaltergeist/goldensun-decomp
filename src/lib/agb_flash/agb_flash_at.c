#include "gba/gba.h"
#include "lib/agb_flash/flash_internal.h"

// Atmel AT29LV512 page-based erase/program driver (chip id 0x1F/0x3D). The two
// page records gFlashChip2 (.L7be4) and gFlashChip3 (.L7c10) are raw rodata.
// Func_8006f84 is the program-sector for the Macronix MX29L512 setup (id
// 0xC2/0x1C); name still TBD (GSHC lists it as ?; note that the 0x6e24
// "ProgramFlashSector_MX" is actually used by the LE/Default setups, so the _MX
// suffix there is a GS-internal misnomer rather than this routine's name).

u16 Func_8006f84(u16 sectorNum, u8 *src)
{
    u16 result;
    u8 *dest;
    u16 readFlash1Buffer[0x20];

    if (sectorNum >= 16)
        return 0x80FF;

    result = EraseFlashSector_MX(sectorNum);
    if (result != 0)
        return result;

    SetReadFlash1(readFlash1Buffer);
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];
    gFlashNumRemainingBytes = gFlash->sector.size;
    dest = FLASH_BASE + (sectorNum << gFlash->sector.shift);

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

u16 EraseFlashChip_AT(void)
{
    u16 result;
    u16 readFlash1Buffer[0x20];

    SetReadFlash1(readFlash1Buffer);
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlashChip3.type.wait[0];

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x10);

    result = WaitForFlashWrite(3, FLASH_BASE, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 EraseFlashSector_AT_2(u16 page)
{
    u8 *dest;
    u32 i;
    u16 savedIme;
    u16 result;

    dest = FLASH_BASE + (page << gFlashChip3.type.sector.shift);

    savedIme = REG_IME;
    REG_IME = 0;

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);

    i = gFlashChip3.type.sector.size;
    while (i != 0) {
        *dest++ = 0xFF;
        i--;
    }

    dest--;
    REG_IME = savedIme;

    result = WaitForFlashWrite(1, dest, 0xFF);
    if (result != 0)
        result = (result & 0xFF00) | 2;

    return result;
}

u16 EraseFlashSector_AT(u16 sectorNum)
{
    u16 result;
    u16 j;
    u16 page;
    u16 i;
    u16 readFlash1Buffer[0x20];

    if (sectorNum >= 16)
        return 0x80FF;

    SetReadFlash1(readFlash1Buffer);
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlashChip3.type.wait[0];

    page = sectorNum;
    page <<= 5;
    for (i = 0; i <= 0x1f; i++) {
        for (j = 2; j != 0; j--) {
            result = EraseFlashSector_AT_2(page);
            if (result == 0)
                break;
        }
        page++;
        if (result != 0)
            break;
    }
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 ProgramFlashSector_AT_2(u16 page, u8 *src)
{
    u8 *dest;
    u32 i;
    u16 savedIme;

    dest = FLASH_BASE + (page << gFlashChip3.type.sector.shift);

    savedIme = REG_IME;
    REG_IME = 0;

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);

    i = gFlashChip3.type.sector.size;
    while (i != 0) {
        *dest++ = *src++;
        i--;
    }

    dest--;
    src--;
    REG_IME = savedIme;

    return WaitForFlashWrite(1, dest, *src);
}

u16 ProgramFlashSector_AT(u16 sectorNum, u8 *src)
{
    u16 result;
    u16 j;
    u16 page;
    u16 readFlash1Buffer[0x20];

    if (sectorNum >= 16)
        return 0x80FF;

    SetReadFlash1(readFlash1Buffer);
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlashChip3.type.wait[0];

    page = sectorNum << 5;
    for (gFlashNumRemainingBytes = gFlashChip2.type.sector.size; gFlashNumRemainingBytes != 0;
         gFlashNumRemainingBytes -= gFlashChip3.type.sector.size, src += gFlashChip3.type.sector.size, page++) {
        for (j = 2; j != 0; j--) {
            result = ProgramFlashSector_AT_2(page, src);
            if (result == 0)
                break;
        }
        if (result != 0)
            break;
    }
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}
