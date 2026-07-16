typedef unsigned short u16;

extern void Func_8003b70(unsigned int);
extern unsigned int Random(void);
extern void WaitFrames(unsigned int);

int Func_80bffb8(void)
{
    volatile u16 bg0;
    volatile u16 bg1;
    volatile u16 bg2;
    volatile u16 bg3;
    int i;

    bg0 = *(volatile u16 *)0x04000008;
    *(volatile u16 *)0x04000008 = bg0 | 0x40;
    bg1 = *(volatile u16 *)0x0400000a;
    *(volatile u16 *)0x0400000a = bg1 | 0x40;
    bg2 = *(volatile u16 *)0x0400000c;
    *(volatile u16 *)0x0400000c = bg2 | 0x40;
    bg3 = *(volatile u16 *)0x0400000e;
    *(volatile u16 *)0x0400000e = bg3 | 0x40;
    *(volatile u16 *)0x04000050 = 0x3eee;

    Func_8003b70(0x10);
    for (i = 0; i <= 0xf; i++) {
        Random();
        Random();
        Random();
        Random();
        *(volatile u16 *)0x0400004c = (i << 8) | i;
        WaitFrames(1);
    }

    *(volatile u16 *)0x04000000 = 1;
    WaitFrames(4);

    *(volatile u16 *)0x04000008 = bg0;
    *(volatile u16 *)0x0400000a = bg1;
    *(volatile u16 *)0x0400000c = bg2;
    *(volatile u16 *)0x0400000e = bg3;
    return 0;
}
