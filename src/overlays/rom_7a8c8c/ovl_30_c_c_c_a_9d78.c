#include "gba/types.h"

extern u32 iwram_3001e40;
extern void __PlaySound(int);
extern unsigned __Random(void);
extern void OvlFunc_922_2009c18(int, int, int, int,
                               int, int, int, int *);

void OvlFunc_922_2009d78(void)
{
    register u32 *clock asm("r2") = &iwram_3001e40;
    register u32 phase asm("r7");
    int data[6];

    phase = *(volatile u32 *)clock;
    phase &= 3;
    if (phase == 0) {
        register int *config asm("r6") = data;
        register unsigned random asm("r0");
        register unsigned scaled asm("r2");
        int horizontal;
        register int vertical asm("r3");

        config[1] = 10;
        config[2] = 0x8000;
        config[3] = 0x8000;
        config[4] = 0x1cccc;
        config[5] = 0x1cccc;

        if ((*clock & 7) == 0)
            __PlaySound(0x88);

        random = __Random();
        random <<= 1;
        random >>= 16;
        horizontal = 0xffff0000 - (random << 16);

        random = __Random();
        scaled = random << 1;
        scaled += random;
        scaled >>= 16;
        vertical = scaled << 1;
        vertical += scaled;
        scaled = vertical << 4;
        vertical += scaled;
        scaled = vertical << 8;
        vertical += scaled;
        vertical = -vertical;

        OvlFunc_922_2009c18(0x1340000, 0x400000, 0xde0000,
                            horizontal, vertical, phase, 0xd0001,
                            config);
    }
}
