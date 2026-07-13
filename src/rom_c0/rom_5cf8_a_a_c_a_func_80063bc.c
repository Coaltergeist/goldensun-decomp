#include "gba/types.h"

extern u32 gTransferSource asm("ewram_2002080");
extern u8 gTransferState[] asm("ewram_2002220");
extern u16 gTransferLength asm("ewram_2002008");
extern u8 gTransferBusy asm("ewram_20023a4");

s32 Func_80063bc(u32 source, u32 length)
{
    register u32 *sourceSlot asm("r5") = &gTransferSource;
    u32 currentSource = *sourceSlot;
    register u32 transferLength asm("r6") = length;
    register vu8 *state asm("r7") = gTransferState;

    if (currentSource != 0)
        return -1;

    {
        register vu16 *ime asm("r2") = (vu16 *)0x04000208;
        register u32 previousIme asm("r1");

        /* Preserve the ROM's unusual REG_IME read/address-write pair. */
        asm volatile(
            "ldrh\tr1, [r2]\n\t"
            "strh\tr2, [r2]"
            : "=r"(previousIme)
            : "r"(ime)
            : "memory");
        state[1] = 0x80;
        gTransferLength = transferLength;
        gTransferBusy = currentSource;
        *sourceSlot = source;
        state[0] = 1;
        *ime = previousIme;
    }

    return 0;
}
