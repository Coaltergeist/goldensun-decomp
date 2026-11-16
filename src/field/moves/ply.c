#include "nonmatching.h"
#include "actor.h"
#include "math.h"

extern void Field_Ply(void);
extern void Func_8097174(void);

void Func_80992f0(struct Actor *a)
{
    a->pos.x = a->prevPos.x + fx32_multiply(0x40000, sin(a->waveCounter << 9));
    a->waveCounter++;
    a->waveCounter = (a->waveCounter + 0x80) % 0x80;
}

extern unsigned char *iwram_3001f30__k2 __asm__("iwram_3001f30");
extern void vec3_translate(int, int, int *);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];
void Func_8099340(struct Actor *a)
{
    unsigned char *s = iwram_3001f30__k2;
    int v[3];
    short t;

    if (a != 0) {
        t = --a->waveCounter;
        if (t != 0) {
            v[0] = *(int *)(s + 0x4);
            v[1] = *(int *)(s + 0x8) + 0xa0000;
            v[2] = *(int *)(s + 0xc);
            vec3_translate(t << 16, a->__unk66 + (t << 11), v);
            a->pos.x = v[0];
            a->pos.y = v[1];
            a->pos.z = v[2];
        } else {
            _Actor_SetScript(a, Data_9f0b0);
        }
    }
}

INCLUDE_ASM("asm/field/moves/ply/Func_80993b0.s");

void Field_Ply_Target(void)
{
	Field_Ply();
	Func_8097174();
}

INCLUDE_ASM("asm/field/moves/ply/Field_Ply.s");
