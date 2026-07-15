typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef int s32;

struct WorkState {
    u8 pad0[0x1cc];
    s32 flag_1cc;
    u8 pad1[0x1d8 - 0x1d0];
    s16 effect_id;
    u8 pad2[0x1f4 - 0x1da];
    u32 last_actor_id;
    u32 effect_handle;
};

extern struct WorkState *iwram_3001ebc;
extern unsigned int GetFieldActor(unsigned int actorID);
extern int _Func_8017658(int id, int x, int y, int mode);
extern int _Func_8017394(int handle);
extern void WaitFrames(int frames);

void Func_80930bc(u32 actorID)
{
    register int x asm("r6");
    register int y asm("r7");
    register struct WorkState *state asm("r8");
    register int adjusted_x asm("r1");
    register int adjusted_y asm("r2");
    int handle;

    state = iwram_3001ebc;
    actorID &= 0xfff;
    GetFieldActor(actorID);
    state->last_actor_id = actorID;
    if (state->flag_1cc == 0) {
        adjusted_y = y;
        adjusted_x = x;
        if (adjusted_y > 0x77)
            adjusted_y += 0x20;
        else
            adjusted_y -= 0x20;

        asm volatile("cmp r1, #8\n\tbge 1f\n\tmov r1, #8\n1:"
                     : "+r"(adjusted_x) : : "cc");
        if (adjusted_x > 0x138)
            adjusted_x = 0x138;
        asm volatile("cmp r2, #0x14\n\tbge 2f\n\tmov r2, #0x14\n2:"
                     : "+r"(adjusted_y) : : "cc");
        if (adjusted_y > 0xdc)
            adjusted_y = 0xdc;

        handle = _Func_8017658(state->effect_id, adjusted_x, adjusted_y, 1);
        state->effect_handle = handle;
        while (_Func_8017394(handle) == 0)
            WaitFrames(1);
    }
    {
        s16 *field = &state->effect_id;
        *field = *field + 1;
    }
}
