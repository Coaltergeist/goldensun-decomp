#include "nonmatching.h"

extern unsigned char *iwram_3001e64[];
void Func_8098294(int v)
{
    unsigned char *a = iwram_3001e64[0];
    int i;
    for (i = 0x3f; i >= 0; i--, a += 0x70) {
        unsigned char k;
        if (*(int *)a == 0)
            continue;
        k = a[0x54];
        if (k == 1) {
            unsigned char *spr = *(unsigned char **)(a + 0x50);
            short *g = *(short **)(spr + 0x28);
            if (*g == 0xc8) {
                ((unsigned char *)g)[5] = v;
                spr[0x25] = k;
            }
        }
    }
}

INCLUDE_ASM("asm/field/moves/reveal/Func_80982dc.s");

INCLUDE_ASM("asm/field/moves/reveal/Field_Reveal.s");

INCLUDE_ASM("asm/field/moves/reveal/Func_80984c0.s");
