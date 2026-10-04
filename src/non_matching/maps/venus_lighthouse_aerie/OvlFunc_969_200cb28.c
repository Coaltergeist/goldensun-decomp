extern void __MessageID(int);
extern void __PlaySound(int);
extern void __Func_8012330(int, int, int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);
extern void __CutsceneWait(int);
extern void __Func_80925cc(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __Func_809259c(int, int);

void OvlFunc_969_200cb28(void)
{
    __MessageID(0x2829);
    OvlFunc_969_2008894(0x15);
    __PlaySound(0x3e);
    __Func_8012330(0x10000, 0x10000, 0x10000);
    __Func_80933d4(0x4cccc, 0x9999);
    __Func_80933d4(0x40000, 0x8000);
    __Func_80933f8(0xc00000, 0xffc00000, 0xee0000, 1);
    __Func_8093530();
    __CutsceneWait(0x28);
    __Func_80925cc(0x15, 1);
    __ActorMessage_Wait(0x2015, 0, 0x28);
    __Func_80925cc(6, 3);
    OvlFunc_969_2008894(6);
    __MapActor_Surprise(0x15, 0x102);
    __CutsceneWait(0x3c);
    __ActorMessage_Wait(0x2015, 0, 0x50);
    __MapActor_Surprise(6, 0x102);
    __CutsceneWait(0x28);
    __Func_809259c(6, 2);
    OvlFunc_969_2008894(6);
}
