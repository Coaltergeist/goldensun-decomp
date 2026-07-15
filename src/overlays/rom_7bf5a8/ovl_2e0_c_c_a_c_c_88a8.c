extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __Func_801776c(int, int);
extern void __PlaySound(int);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __CutsceneWait(int);
extern void OvlFunc_935_2008754(void);

void OvlFunc_935_20088a8(void)
{
    register int flag asm("r0") = 0x9a8;
    register int last asm("r5");
    register int fifth asm("r6");

    if (__GetFlag(flag))
        return;
    __Func_801776c(0x1528, 1);
    __SetFlag(0x9a8);
    __PlaySound(0x9b);
    last = 0x1b;
    fifth = 0x5c;
    __Func_80105d4(0x6b, 0x1b, 1, 1, fifth, last);
    __CutsceneWait(0x27);
    __Func_80105d4(0x6c, 0x1b, 1, 1, fifth, last);
    __CutsceneWait(0x32);
    __PlaySound(0x9c);
    fifth = 0x19;
    __Func_80105d4(1, 0x18, 1, 2, fifth, last);
    __CutsceneWait(0x28);
    __Func_80105d4(2, 0x18, 1, 2, fifth, last);
    __CutsceneWait(0x28);
    OvlFunc_935_2008754();
}
