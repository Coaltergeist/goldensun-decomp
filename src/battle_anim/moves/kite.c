/* battle_anim/moves/kite.c */
#include "anim.h"

struct KiteState {
    u8 pad[0x7828];
    struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void Anim_Djinni(struct AnimContext *, int, int, int, int *, int *);

void Anim_Kite(struct AnimContext *context)
{
    struct KiteState *state = (struct KiteState *)*iwram_3001eec;
    int a;
    int b;

    state->context = context;
    AnimStart(0);
    Anim_Djinni(context, 7, state->context->side ^ 1, 0, &a, &b);
    AnimEnd();
}
