typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern volatile u32 gKeyHeld;
extern volatile u32 gKeyRepeat;
extern volatile u32 gKeyPress;
extern u8 *iwram_3001e74;
extern void WaitFrames(u32 nframes);

int Func_80c0eec(int value)
{
    u8 *base;
    volatile u32 *repeat;

    if (!(gKeyHeld & 8)) {
        goto skip;
    }
    repeat = &gKeyRepeat;

loop:
    base = iwram_3001e74;
    if (*repeat & 0x20) {
        *(int *)(base + 0x828) -= 1;
    }
    if (*repeat & 0x10) {
        *(int *)(base + 0x828) += 1;
    }
    if (*repeat & 0x40) {
        *(int *)(base + 0x828) -= 100;
    }
    if (*repeat & 0x80) {
        *(int *)(base + 0x828) += 100;
    }
    if (gKeyPress & 1) {
        value = *(int *)(base + 0x828);
        goto skip;
    }
    WaitFrames(1);
    goto loop;

skip:
    if (gKeyHeld & 4) {
        value = 0x18f;
    }
    return value;
}
