#include "dma.h"

extern unsigned char *iwram_3001f30;
extern void __Func_8092adc(int a, int b, int c);
extern void __Actor_SetColorswap(unsigned char *actor, int colorswap);
extern void __CutsceneWait(int frames);
extern unsigned char *__CreateActor(int actor, int x, int y, int z);

void OvlFunc_957_2008c98(void)
{
    unsigned char *state = iwram_3001f30;
    unsigned char *actor = *(unsigned char **)(state + 0x10);
    unsigned char *newActor;

    __Func_8092adc(*(short *)(state + 0x18), 0x4000, 0);
    __Actor_SetColorswap(actor, 0);
    __CutsceneWait(0x14);
    newActor = __CreateActor(0, *(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10));
    if (newActor != 0) {
        DMA3_SET(actor, newActor, 0x8400001c);
        *(int *)(actor + 0x6c) = 0;
        *(unsigned char **)(state + 0x10) = newActor;
        *(unsigned char *)(actor + 0x54) = 0;
    }
}
