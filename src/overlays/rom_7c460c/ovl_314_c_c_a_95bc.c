extern void __CutsceneStart(void);
extern void __MapTransitionIn(void);
extern void __Func_809218c(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __CutsceneWait(int);
extern void __Func_8096fb0(int, int);
extern void __Func_80970f8(int, int);
extern void __Func_809728c(void);
extern void __FieldMove(int);
extern void __Func_8097174(void);
extern void __CutsceneEnd(void);
extern void Move_NoArgs(void) asm("__Func_809218c");

void OvlFunc_939_20095bc(void)
{
    __CutsceneStart();
    __MapTransitionIn();
    __Func_809218c(0, 0x98, 0xa8);
    __MapActor_WaitMovement(0);
    __CutsceneWait(0x14);
    __Func_8096fb0(0x92, 1);
    __Func_80970f8(0, 0);
    __Func_809728c();
    __FieldMove(1);
    __Func_8097174();
    __Func_809218c(0, 0x90, 0xb8);
    __MapActor_WaitMovement(0);
    __Func_809218c(0, 0x58, 0xb8);
    __MapActor_WaitMovement(0);
    __Func_809218c(0, 0x58, 0xc8);
    __MapActor_WaitMovement(0);
    __Func_809218c(0, 0x48, 0xc8);
    __MapActor_WaitMovement(0);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");
        r2 = 0x90;
        asm volatile("" : "+r"(r2));
        r1 = 0x48;
        asm volatile("" : "+r"(r1), "+r"(r2));
        r2 <<= 1;
        asm volatile("" : "+r"(r1), "+r"(r2));
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        Move_NoArgs();
    }
    __MapActor_WaitMovement(0);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");
        r2 = 0x90;
        asm volatile("" : "+r"(r2));
        r1 = 0x58;
        asm volatile("" : "+r"(r1), "+r"(r2));
        r2 <<= 1;
        asm volatile("" : "+r"(r1), "+r"(r2));
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        Move_NoArgs();
    }
    __MapActor_WaitMovement(0);
    __CutsceneEnd();
}
