typedef struct {
    unsigned char _pad0[0x1c0];
    int transition;
    unsigned char _pad1[4];
    int transitionSpeed;
} MapState;

#include "state/global_state.h"

extern GlobalState gState;

extern unsigned char Lconst_0[] __asm__(".Lconst_0");

__asm__(".equ .Lconst_0, 0");

int SuhallaRooms_MapInit(void)
{
    unsigned int r3;
    unsigned int r2;
    MapState *p;
    unsigned char *actor;
    unsigned char *ptr;
    int flag4 = 4;
    int zero;
    int val;
    int zero2;
    int mask;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 0x5a) {
        __SetFlag(0x96f);
    }
    p = *(MapState **)iwram_3001ebc;
    p->transition = 0x209;
    p->transitionSpeed = 0x18;

    ptr = (unsigned char *)__MapActor_GetActor(0xc) + 0x59;
    *ptr |= flag4;
    zero = 0;

    ptr = (unsigned char *)__MapActor_GetActor(0xd) + 0x59;
    *ptr |= flag4;

    actor = (unsigned char *)__MapActor_GetActor(0x14);
    *(unsigned char *)(*(unsigned char **)(actor + 0x50) + 0x26) = zero;
    val = 0x80;
    val <<= 7;
    *(short *)(*(unsigned char **)(actor + 0x50) + 0x1e) = val;
    zero2 = (int)Lconst_0;
    mask = -0xd;
    *(unsigned char *)(*(unsigned char **)(actor + 0x50) + 9) = (mask & *(unsigned char *)(*(unsigned char **)(actor + 0x50) + 9)) | flag4;

    actor = (unsigned char *)__MapActor_GetActor(0x15);
    *(unsigned char *)(*(unsigned char **)(actor + 0x50) + 0x26) = zero2;
    *(short *)(*(unsigned char **)(actor + 0x50) + 0x1e) = val;
    actor[0x55] = 2;
    *(int *)(actor + 0xc) = zero;

    return 0;
}
