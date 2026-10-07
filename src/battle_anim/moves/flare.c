/* battle_anim/moves/flare.c */
#include "nonmatching.h"
#include "anim.h"

INCLUDE_ASM("asm/battle_anim/moves/flare/Anim_Flare.s");

/* trailing helper (Func_80da24c) - no symbolic caller; folded here from the removed
   battle_anim/unknown/ holding dir (sits between Anim_Flare and Anim_Quake in ROM). */
int Func_80da24c(struct AnimContext *context, s16 *out)
{
    int n = context->__unk10 * 2 + 1;
    int count = 0;
    int index = 0;
    int i;

    for (i = 0; i != n; i++) {
        if (context->target == (s16)context->targets[i]) {
            index = i;
            break;
        }
    }
    for (i = 0; i != n; i++) {
        int v = index + i - context->__unk10;
        if (v >= 0 && v < (int)context->numTargets)
            out[count++] = v;
    }
    return count;
}
