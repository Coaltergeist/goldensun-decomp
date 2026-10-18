#include "nonmatching.h"

extern unsigned char **iwram_3001f30;
extern void Field_Halt(void);
extern unsigned int MapActor_GetName(unsigned int actorID);

INCLUDE_ASM("asm/field/moves/halt/Func_809aa98.s");

void Field_Halt_Target(void) {
    unsigned char *p;

    p = iwram_3001f30[5];
    p[0x5b] = 1;
    Field_Halt();
}

INCLUDE_ASM("asm/field/moves/halt/Field_Halt.s");

extern unsigned int Random(void);
extern void _Actor_SetColorswap(void *actor, int colorswap);
extern signed char gScript_0809f160[8];

void Func_809ad70(void *actor) {
    _Actor_SetColorswap(actor, gScript_0809f160[(Random() << 3) >> 16]);
}

extern unsigned char *GetFieldActor__h(int) __asm__("GetFieldActor");
extern void _Actor_SetAnimSpeed(void *, int);
extern unsigned char gState[];
void Func_809ad90(int id)
{
    unsigned char *a = GetFieldActor__h(id);
    if (a != 0) {
        unsigned char *s = gState;
        unsigned char *c;
        *(int *)(s + 0x250) = *(int *)(a + 0x6c);
        c = s + 0x249;
        *c = 0;
        if (a[0x54] == 1) {
            unsigned char *g = *(unsigned char **)(*(unsigned char **)(a + 0x50) + 0x28);
            if (g != 0)
                *c = g[5];
        }
        *(void **)(a + 0x6c) = (void *)Func_809ad70;
        a[0x5b] = 1;
        _Actor_SetAnimSpeed(a, 0);
    }
}

INCLUDE_ASM("asm/field/moves/halt/Func_809ade8.s");

unsigned int Func_809ae3c(unsigned int arg0)
{
	unsigned int r5;
	r5 = arg0;
	if (MapActor_GetName(r5) == 0xff)
		return -1;
	return r5;
}

INCLUDE_ASM("asm/field/moves/halt/rodata.s");
