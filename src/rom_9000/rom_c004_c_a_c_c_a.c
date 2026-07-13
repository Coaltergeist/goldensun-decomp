typedef unsigned short u16;

extern void Func_800c62c(void);
extern void Func_800c880(void);
extern void Func_80042c8(void (*task)(void));
extern void _Func_8091200(unsigned int size, unsigned int mode);
extern void _Func_8091254(unsigned int mode);
extern void WaitFrames(unsigned int frames);

void Func_800c5b4(void)
{
    register volatile u16 *display asm("r1");

    Func_80042c8(Func_800c62c);
    Func_80042c8(Func_800c880);
    _Func_8091200(0x10000, 1);
    _Func_8091254(1);
    WaitFrames(1);
    display = (volatile u16 *)0x04000000;
    asm volatile("" : "+r"(display));
    *display = (*display & 0xf1ff) | 0x1000;
}
