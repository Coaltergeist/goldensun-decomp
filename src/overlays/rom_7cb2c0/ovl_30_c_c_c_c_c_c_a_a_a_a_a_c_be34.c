extern void __CutsceneStart(void);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void OvlFunc_945_200c8ac(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);
extern void OvlFunc_945_200c8e8(int, int, int);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_80921c4(int actor, int x, int y);
extern void __Func_8092adc(int, int, int);
extern void __Func_809259c(int, int);
extern void __MessageID(int);
extern void __Func_8093040(int, int, int);

void OvlFunc_945_200be34(void)
{
    register int a0 asm("r0");
    register int a1 asm("r1");
    register int a2 asm("r2");

    __CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 0, 0);
    OvlFunc_945_200c8e8(0x12, 0, 0);
    __MapActor_SetPos(0, 0, 0);

    a1 = 0x96;
    a0 = 0x10;
    asm volatile("" : "+r"(a0), "+r"(a1));
    a1 <<= 16;
    __MapActor_SetPos(a0, a1, 0x24a0000);

    OvlFunc_945_200c8ac(0x9c0000, -1, 0x2180000, 0x1000001);
    OvlFunc_945_200c8e8(8, 0, 0);

    a0 = 0x10;
    a1 = 0xcccc;
    asm volatile("" : "+r"(a0), "+r"(a1));
    __MapActor_SetSpeed(a0, a1, 0x6666);

    a0 = 0x10;
    a1 = 0xa8;
    asm volatile("" : "+r"(a0), "+r"(a1));
    __Func_80921c4(a0, a1, 0x242);

    a0 = 0x10;
    a1 = 0xa8;
    asm volatile("" : "+r"(a0), "+r"(a1));
    __Func_80921c4(a0, a1, 0x22a);

    a1 = 0x80;
    a2 = 0x14;
    a0 = 0x10;
    asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
    a1 <<= 8;
    __Func_8092adc(a0, a1, a2);

    __Func_809259c(0x10, 2);
    __MessageID(0x1e3c);
    __Func_8093040(0x10, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xc, 0);
}
