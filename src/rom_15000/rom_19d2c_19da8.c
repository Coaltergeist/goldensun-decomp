typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001e8c;
extern u32 GetPortrait(u32 character);
extern void *CreateUIBox(int x, int y, int width, int height, int style);
extern void *Func_801ec6c(int, int, int, void *, int, int);

void *Func_8019da8(u32 character, int param_2, int x, int y)
{
    u8 *state;
    u32 portrait;
    void *box;
    s32 mode;
    s32 closeMode;

    state = iwram_3001e8c;
    portrait = GetPortrait(character);
    if (portrait == (u32)-1)
        return 0;

    closeMode = -4;
    mode = closeMode;
    if (state[0xea4] != 0) {
        box = CreateUIBox(x, y, 6, 5, 2);
        mode = 0;
    } else {
        box = CreateUIBox(x, y, 5, 5, 2);
    }
    if (box != 0) {
        Func_801ec6c(character, param_2, -1, box, mode, closeMode);
    }
    return box;
}
