typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef signed int s32;

typedef struct MenuState {
    u8 pad0[0x7c];
    void *unk7C;
    u8 pad80[0xc];
    u16 unk8C;
    u8 pad8E[8];
    u16 unk96;
} MenuState;

extern MenuState *iwram_3001f38;
extern void Func_80164d4(void *box, s32 a, s32 b, s32 c, s32 d);
extern void Func_801e7c0(s32 msg, void *box, s32 x, s32 y);

void Func_8028aa8(void)
{
    MenuState *state;
    s32 msg;
    s16 mode;

    state = iwram_3001f38;
    if ((s16)state->unk96 != (s16)state->unk8C) {
        state->unk96 = state->unk8C;
        Func_80164d4(state->unk7C, 8, 0x28, 0x90, 0x50);
        mode = (s16)state->unk8C;
        switch (mode) {
        case 0:
            msg = 0xc7b;
            Func_801e7c0(msg, state->unk7C, 0x12, 0x28);
            Func_801e7c0(msg + 1, state->unk7C, 0x12, 0x30);
            Func_801e7c0(msg + 2, state->unk7C, 0x12, 0x38);
            Func_801e7c0(msg + 3, state->unk7C, 0x12, 0x40);
            msg += 4;
            Func_801e7c0(msg, state->unk7C, 0x12, 0x48);
            break;
        case 1:
            msg = 0xc7b;
            Func_801e7c0(msg, state->unk7C, 0x12, 0x28);
            Func_801e7c0(msg + 1, state->unk7C, 0x12, 0x30);
            msg += 2;
            Func_801e7c0(msg, state->unk7C, 0x12, 0x38);
            break;
        case 2:
        default:
            msg = 0xc7b;
            Func_801e7c0(msg, state->unk7C, 0x12, 0x28);
            msg += 1;
            Func_801e7c0(msg, state->unk7C, 0x12, 0x30);
            break;
        }
    }
}
