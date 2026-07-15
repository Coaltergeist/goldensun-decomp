typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct {
    u8 pad0[8];
    u16 field8;
    u16 fielda;
    u8 pad1[0x32];
    u16 field3e;
    u8 pad2[0x308];
    u8 *entry;
    u8 pad3[0x50];
    u16 field39c;
    u16 field39e;
    u8 pad4[2];
    u16 field3a2;
} State;

extern void Func_801b9a8(State *state, int index);
extern void WaitFrames(int frames);
extern void Func_801ba68(State *state, int arg1);
extern void Func_801b9ec(State *state, int index);
extern void Func_801b010(int arg0, int arg1);

void Func_801b5c0(State *state)
{
    int idx;

    if (*(u32 *)&state->field39c != 0) {
        Func_801b9a8(state, state->field39e);
        state->field3a2 = 0x21;
        WaitFrames(1);
        idx = state->field39e;
        if (idx != 1) {
            goto decEnd;
        }
        if (state->field39c == 0) {
            goto decEnd;
        }
        state->field8 = 8;
        state->field39c -= 1;
        Func_801ba68(state, 0);
        if (state->field39c == 0) {
            state->fielda = 0;
        }
        state->field3e = idx;
        goto decDone;
    decEnd:
        state->field39e -= 1;
    decDone:
        state->field3a2 = 1;
        Func_801b9ec(state, state->field39e);
        WaitFrames(1);
        Func_801b010(*(u16 *)(state->entry + 0xa), 0);
        WaitFrames(1);
    }
}
