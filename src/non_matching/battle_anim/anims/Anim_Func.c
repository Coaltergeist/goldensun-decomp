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
