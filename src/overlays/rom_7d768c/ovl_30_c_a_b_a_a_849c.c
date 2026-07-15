extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int,int);
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __Func_8097608(void);
extern void __CutsceneWait(int);
extern void __MapActor_Emote(int,int,int);
extern void __Func_809280c(int,int,int);
extern void __MapActor_DoAnim(int,int);
extern void __Func_8092adc(int,int,int);
extern void __CutsceneEnd(void);
void OvlFunc_952_200849c(int unused, int actor)
{
    __CutsceneStart();
    { register int value asm("r0"); asm volatile("ldr r0, =0x2052" : "=r"(value)); __MessageID(value); }
    __ActorMessage(actor, 0);
    { register int flag asm("r0"); asm volatile("ldr r0, =0x968" : "=r"(flag));
    if (__GetFlag(flag) == 0) {
        asm volatile("ldr r0, =0x968" : "=r"(flag)); __SetFlag(flag);
        __Func_8097608();
        __CutsceneWait(50);
        { register int a asm("r0"); register int b asm("r1"); register int c asm("r2");
          asm volatile("mov r1, #0x80\n\tmov r0, r5\n\tlsl r1, #1\n\tmov r2, #0x46" : "=r"(a), "=r"(b), "=r"(c));
          __MapActor_Emote(a,b,c); }
        { register int a asm("r0"); register int b asm("r1"); register int c asm("r2"); asm volatile("mov r2, #0x28\n\tmov r0, r5\n\tmov r1, #0" : "=r"(a), "=r"(b), "=r"(c)); __Func_809280c(a,b,c); }
        { register int a asm("r0"); register int b asm("r1"); asm volatile("mov r1, #0\n\tmov r0, r5" : "=r"(a), "=r"(b)); __ActorMessage(a,b); }
        __CutsceneWait(30);
        { register int a asm("r0"); register int b asm("r1"); asm volatile("mov r1, #4\n\tmov r0, r5" : "=r"(a), "=r"(b)); __MapActor_DoAnim(a,b); }
        __CutsceneWait(20);
        __ActorMessage(actor, 0);
        { register int a asm("r0"); register int b asm("r1"); register int c asm("r2");
          asm volatile("mov r1, #0x80\n\tmov r0, r5\n\tlsl r1, #8\n\tmov r2, #0" : "=r"(a), "=r"(b), "=r"(c));
          __Func_8092adc(a,b,c); }
    }
    }
    __CutsceneEnd();
}
