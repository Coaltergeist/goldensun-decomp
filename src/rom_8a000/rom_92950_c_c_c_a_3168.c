typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;

struct WorkState {
    u8 padding[0x1d8];
    s16 effect_id;
};

extern struct WorkState *iwram_3001ebc;
extern int _Func_8017658(int id, int x, int y, int mode);
extern int _Func_8017394(int handle);
extern void WaitFrames(int frames);

void Func_8093168(int unused0, int unused1, int x, int y)
{
    register int raw_x asm("r0");
    register struct WorkState *state asm("r6");
    register int adjusted_y asm("r2");
    register int adjusted_x asm("r1");
    int handle;

    raw_x = x;
    state = iwram_3001ebc;
    adjusted_y = y;
    adjusted_x = raw_x;
    if (adjusted_y > 0x77)
        adjusted_y += 0x20;
    else
        adjusted_y -= 0x20;

    asm volatile("cmp r0, #8\n\tbge 1f\n\tmov r1, #8\n1:"
                 : "+r" (adjusted_x) : "r" (raw_x) : "cc");
    if (adjusted_x > 0x138)
        adjusted_x = 0x138;
    asm volatile("cmp r2, #0x14\n\tbge 2f\n\tmov r2, #0x14\n2:"
                 : "+r" (adjusted_y) : : "cc");
    if (adjusted_y > 0xdc)
        adjusted_y = 0xdc;

    handle = _Func_8017658(state->effect_id, adjusted_x, adjusted_y, 1);
    while (_Func_8017394(handle) == 0)
        WaitFrames(1);
    asm volatile("mov r0, #0xec\n\tlsl r0, #1\n\tadd r2, r6, r0\n\tldrh r3, [r2]\n\tadd r3, #1\n\tstrh r3, [r2]"
                 : : "r" (state));
}
