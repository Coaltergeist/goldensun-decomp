typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001f2c;
extern void *Func_80a1814(void *state);
extern void Func_80a1870(void *object, int, int, int, int);
extern void *_CreateUIBox(int, int, int, int, int);

void Func_80a3354(void)
{
    u8 *state = iwram_3001f2c;
    int index;

    Func_80a1870(Func_80a1814(state), 2, 2, 8, 0);
    for (index = 3; index >= 0; index--)
        *(u16 *)(state + 0x144 + index * 2) = 0x1e;

    *(int *)(state + 0x28) = 0;
    *(int *)(state + 0x24) = 0;
    *(void **)(state + 0x2c) = _CreateUIBox(0, 0x11, 0x1e, 3, 2);
    *(int *)(state + 0x20) = 0;
    state[0x110] = 0;
    state[0x111] = 0;
    state[0x112] = 8;
    state[0x113] = 2;
}
