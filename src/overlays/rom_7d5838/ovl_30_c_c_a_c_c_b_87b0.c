typedef unsigned char u8;
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __MessageID(int);
extern void __Func_8092c40(u8 *, int);
extern int __Func_8091c7c(int, int);
extern void __CutsceneWait(int);
extern void __ActorMessage(u8 *, int);
extern void __Func_80925cc(u8 *, int);

void OvlFunc_950_20087b0(u8 *speaker_arg)
{
    register u8 *speaker asm("r6") = speaker_arg;
    __CutsceneStart();
    if (!__GetFlag(0x8bd)) {
        register int message asm("r5") = 0x2399;
        __MessageID(message);
        asm volatile(
            "mov r1, #0\n\tmov r0, r6\n\tbl __Func_8092c40"
            : : "r"(speaker) : "r0", "r1", "r2", "r3", "lr", "memory");
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(0xa);
            __MessageID(message + 1);
        } else {
            __MessageID(message + 2);
        }
        __ActorMessage(speaker, 0);
    } else {
        register int second_flag asm("r0");
        asm volatile("ldr r0, =0x8be\n\tbl __GetFlag"
                     : "=r"(second_flag)
                     : : "r1", "r2", "r3", "lr", "memory");
        if (!second_flag) {
            asm volatile("ldr r0, =0x8be\n\tbl __SetFlag"
                         : : : "r0", "r1", "r2", "r3", "lr", "memory");
            asm volatile("ldr r0, =0x239c\n\tbl __MessageID"
                         : : : "r0", "r1", "r2", "r3", "lr", "memory");
            asm volatile("mov r1, #0\n\tmov r0, r6\n\tbl __ActorMessage"
                         : : "r"(speaker)
                         : "r0", "r1", "r2", "r3", "lr", "memory");
            __CutsceneWait(0xa);
            __Func_80925cc(speaker, 2);
            __CutsceneWait(0x14);
        }
        asm volatile("ldr r0, =0x239d\n\tbl __MessageID"
                     : : : "r0", "r1", "r2", "r3", "lr", "memory");
        __ActorMessage(speaker, 0);
    }
    __CutsceneEnd();
}
