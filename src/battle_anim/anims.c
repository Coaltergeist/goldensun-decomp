#include "anim.h"
#include "nonmatching.h"

extern void *galloc_iwram(s32, u32);
extern void gfree(int);

extern void Anim_Ramses(struct AnimContext *);
extern void Anim_Nereid(struct AnimContext *);
extern void Anim_Kirin(struct AnimContext *);
extern void Anim_Atalanta(struct AnimContext *);
extern void Anim_Cybele(struct AnimContext *);
extern void Anim_Neptune(struct AnimContext *);
extern void Anim_Tiamat(struct AnimContext *);
extern void Anim_Procne(struct AnimContext *);
extern void Anim_Judgment(struct AnimContext *);
extern void Anim_Boreas(struct AnimContext *);
extern void Anim_Meteor(struct AnimContext *);
extern void Anim_Thor(struct AnimContext *);

void Anim_Summon(struct AnimContext *context)
{
    galloc_iwram(0x29, 0x302);
    galloc_iwram(0x27, 0x782c);
    galloc_iwram(0x28, 0x4000);

    if (context->anim == 0) {
        Anim_Meteor(context);
    } else {
        switch (context->anim) {
        case 1:
            Anim_Ramses(context);
            break;
        case 2:
            Anim_Nereid(context);
            break;
        case 3:
            Anim_Kirin(context);
            break;
        case 4:
            Anim_Atalanta(context);
            break;
        case 5:
            Anim_Cybele(context);
            break;
        case 6:
            Anim_Neptune(context);
            break;
        case 7:
            Anim_Tiamat(context);
            break;
        case 8:
            Anim_Procne(context);
            break;
        case 9:
            Anim_Judgment(context);
            break;
        case 10:
            Anim_Boreas(context);
            break;
        case 11:
            Anim_Meteor(context);
            break;
        case 12:
            Anim_Thor(context);
            break;
        }
    }

    gfree(0x28);
    gfree(0x27);
    gfree(0x29);
}

extern void *iwram_3001eec[];
extern void (*Data_80ee2b4[])(struct AnimContext *);

struct AnimState {
    u8 pad[0x7828];
    struct AnimContext *context;
};

void Anim_Func(struct AnimContext *context)
{
    struct AnimState *state;

    galloc_iwram(0x29, 0x302);
    galloc_iwram(0x27, 0x782c);
    galloc_iwram(0x28, 0x4000);

    state = (struct AnimState *)iwram_3001eec[0];
    state->context = context;

    if (context->anim == 0) {
        context->param = 0;
    } else {
        Data_80ee2b4[(int)context->anim - 1](context);
    }

    gfree(0x28);
    gfree(0x27);
    gfree(0x29);
}
