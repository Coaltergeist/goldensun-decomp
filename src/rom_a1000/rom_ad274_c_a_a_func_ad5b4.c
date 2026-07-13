#include "gba/types.h"

extern u8 iwram_3001f2c[];

unsigned int Func_80ad5b4(unsigned int index, unsigned int value,
                          unsigned int flags, int enabled)
{
    const unsigned int enabledMask = 0xffff8000;
    register int savedEnabled asm("r5") = enabled;
    register u8 **global asm("r3");
    register u8 *state asm("r4");
    register unsigned int baseOffset asm("r6");
    register unsigned int indexReg asm("r0") = index;
    register unsigned int valueReg asm("r1") = value;
    register unsigned int flagsReg asm("r2") = flags;
    register unsigned int temporary asm("r3");

    asm volatile("" : "+r"(savedEnabled));
    asm volatile("ldr %0, =iwram_3001f2c" : "=r"(global));
    baseOffset = 0x89;
    state = *global;
    baseOffset <<= 2;
    temporary = indexReg << 2;
    temporary += baseOffset;
    if (*(void **)(state + temporary) != 0) {
        indexReg <<= 1;
        baseOffset += 0x10;
        temporary = indexReg + baseOffset;
        *(u16 *)(state + temporary) = valueReg;
        temporary = 0x8f;
        temporary <<= 2;
        indexReg += temporary;
        temporary = flagsReg;
        if (savedEnabled != 0) {
            temporary = enabledMask;
            temporary |= flagsReg;
        }
        *(u16 *)(state + indexReg) = temporary;
    }
    return indexReg;
}
