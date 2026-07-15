extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);
extern void __PlaySound(int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __CutsceneWait(int);
extern void OvlFunc_891_2008098(void);

void OvlFunc_891_200a244(void)
{
    register int flag asm("r0");
    register int stack4 asm("r3");
    register int stack5 asm("r2");

    __CutsceneStart();
    if (__GetFlag(0x818) != 0)
        goto done;
    flag = 0x816;
    asm volatile("" : "+r"(flag));
    if (__GetFlag(flag) == 0) {
        __Func_80933d4(0x20000, 0x4000);
        __Func_80933f8(0x11e0000, -1, 0x920000, 1);
        __Func_8093530();
        __PlaySound(0xba);
        stack4 = 4;
        stack5 = 3;
        asm volatile("" : "+r"(stack4), "+r"(stack5));
        __CopyMapTiles(0, 0x3b, 0x0f, 0x26, stack4, stack5);
        flag = 0x817;
        asm volatile("" : "+r"(flag));
        if (__GetFlag(flag) != 0)
            __CopyMapTiles(8, 0x3c, 0x11, 0x27, 2, 2);
        __Func_8092adc(0, 0, 0);
        __CutsceneWait(0x1e);
        flag = 0x816;
        asm volatile("" : "+r"(flag));
        __SetFlag(flag);
        flag = 0x817;
        asm volatile("" : "+r"(flag));
        if (__GetFlag(flag) != 0)
            OvlFunc_891_2008098();
    }
done:
    __CutsceneEnd();
}
