#include "gba/types.h"
#include "dma.h"

extern u8 *gSaveWorkspace asm("iwram_3001f1c");
extern unsigned int Func_8005b24(unsigned int index);
extern void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);

int Func_8005c68(void)
{
    register u8 *slot asm("r5");
    register unsigned int index asm("r6");
    register int count asm("r8");
    u32 zero;
    register u32 *zeroPtr asm("r7");
    register u32 zeroValue asm("r10");
    register u8 *base asm("r3") = gSaveWorkspace;

    slot = base + (0x82 << 5);
    asm volatile ("" : "+r" (slot));

    index = 0;
    asm volatile ("" : "+r" (index));
    count = 0;
    zeroPtr = &zero;
    zeroValue = index;
    do {
        asm volatile (
            "mov r2, %2\n\t"
            "str r2, [%1]\n\t"
            "ldr r3, =0x040000d4\n\t"
            "mov r0, %1\n\t"
            "mov r1, %0\n\t"
            "ldr r2, =0x85000010\n\t"
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, #0xc"
            :
            : "l" (slot), "l" (zeroPtr), "r" (zeroValue)
            : "r0", "r1", "r2", "r3", "memory");

        {
            unsigned int sector = Func_8005b24(index);
            if (sector <= 15) {
                register unsigned int flashSector asm("r0") = sector;
                asm volatile (
                    "lsl r0, #16\n\t"
                    "mov r3, #0x40\n\t"
                    "lsr r0, #16\n\t"
                    "mov r1, #0\n\t"
                    "mov r2, %0\n\t"
                    "bl ReadFlash\n\t"
                    "mov r3, #1\n\t"
                    "add %1, r3"
                    : "+r" (slot), "+r" (count), "+r" (flashSector)
                    :
                    : "r1", "r2", "r3", "lr", "memory");
            }
        }

        {
            unsigned int sector = Func_8005b24(index + 3);
            if (sector <= 15)
                ReadFlash((u16)sector, 0x110, slot + 0x38, 4);
            else {
                asm volatile (
                    "mov r2, %1\n\t"
                    "str r2, [%0, #0x38]"
                    :
                    : "l" (slot), "r" (zeroValue)
                    : "r2", "memory");
            }
        }
        index++;
        slot += 0x40;
    } while (index <= 2);
    return count;
}
