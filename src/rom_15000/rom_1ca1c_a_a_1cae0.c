typedef unsigned short u16;

extern u16 Func_801cbd4(int, int, int, int);

void Func_801cae0(int value)
{
    register int input asm("r5") = value;
    register int eeee asm("r10") = 0xeeee;
    register int cccc asm("r9") = 0xcccc;
    register int bbbb asm("r6") = 0xbbbb;

    *(volatile u16 *)0x050001e8 = Func_801cbd4(input, eeee, cccc, 0x11110);
    *(volatile u16 *)0x050001ea = Func_801cbd4(input, 0xd555, bbbb, eeee);
    {
        register int aaaa asm("r8") = 0xaaaa;
        *(volatile u16 *)0x050001ec = Func_801cbd4(input, bbbb, aaaa, cccc);
        *(volatile u16 *)0x050001ee = Func_801cbd4(input, 0xa221, 0x9999, aaaa);
    }
    *(volatile u16 *)0x050001f0 = Func_801cbd4(input, 0x10888, 0xdddd, 0x13333);
    *(volatile u16 *)0x050001f2 = Func_801cbd4(input, 0x12221, eeee, 0x15555);
    *(volatile u16 *)0x050001f4 = Func_801cbd4(input, 0x13bbb, 0x10000, 0x17777);
}
