#include "nonmatching.h"
#include "actor.h"

extern struct Actor *iwram_3001e64;
void Func_8098294(int v)
{
    struct Actor *a = iwram_3001e64;
    int i;
    for (i = 0x3f; i >= 0; i--, a++) {
        unsigned char k;
        if (a->script == 0)
            continue;
        k = a->visible;
        if (k == 1) {
            unsigned char *spr = (unsigned char *)a->sprite;
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
