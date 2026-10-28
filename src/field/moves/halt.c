#include "nonmatching.h"
#include "actor.h"

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

extern unsigned char *GetFieldActor(int);
extern void _Actor_SetAnimSpeed(void *, int);
extern unsigned char gState[];
void Func_809ad90(int id)
{
    struct Actor *a = (struct Actor *)GetFieldActor(id);
    if (a != 0) {
        unsigned char *s = gState;
        unsigned char *c;
        *(int *)(s + 0x250) = (int)a->update;
        c = s + 0x249;
        *c = 0;
        if (a->visible == 1) {
            unsigned char *g = *(unsigned char **)((unsigned char *)a->sprite + 0x28);
            if (g != 0)
                *c = g[5];
        }
        a->update = (actorfun_t)Func_809ad70;
        a->stop = 1;
        _Actor_SetAnimSpeed(a, 0);
    }
}

extern unsigned char *GetFieldActor(int);
extern void _Actor_SetAnimSpeed(void *, int);
extern unsigned char gState[];
void Func_809ade8(int id)
{
    struct Actor *a = (struct Actor *)GetFieldActor(id);
    if (a != 0) {
        if (a->update == (actorfun_t)Func_809ad70) {
            unsigned char *s = gState;
            int *p = (int *)(s + 0x250);
            a->update = (actorfun_t)*p;
            *p = 0;
            _Actor_SetColorswap(a, (signed char)s[0x249]);
        }
        a->stop = 0;
        _Actor_SetAnimSpeed(a, 0x10);
    }
}

unsigned int Func_809ae3c(unsigned int arg0)
{
	unsigned int r5;
	r5 = arg0;
	if (MapActor_GetName(r5) == 0xff)
		return -1;
	return r5;
}

INCLUDE_ASM("asm/field/moves/halt/rodata.s");
