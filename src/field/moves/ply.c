#include "nonmatching.h"

extern void Field_Ply(void);
extern void Func_8097174(void);

INCLUDE_ASM("asm/field/moves/ply/Func_80992f0.s");

extern unsigned char *iwram_3001f30__k2 __asm__("iwram_3001f30");
extern void vec3_translate(int, int, int *);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];
void Func_8099340(unsigned char *a)
{
    unsigned char *s = iwram_3001f30__k2;
    int v[3];
    short t;

    if (a != 0) {
        t = --*(short *)(a + 0x64);
        if (t != 0) {
            v[0] = *(int *)(s + 0x4);
            v[1] = *(int *)(s + 0x8) + 0xa0000;
            v[2] = *(int *)(s + 0xc);
            vec3_translate(t << 16, *(short *)(a + 0x66) + (t << 11), v);
            *(int *)(a + 0x8) = v[0];
            *(int *)(a + 0xc) = v[1];
            *(int *)(a + 0x10) = v[2];
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
