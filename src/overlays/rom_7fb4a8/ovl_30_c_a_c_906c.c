typedef unsigned char u8;
typedef unsigned int u32;

extern u8 gState[];
extern void __CutsceneStart(void);
extern void __Func_809280c(int, u32, int);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __Func_8092c40(int, int);
extern int __CutsceneEnd(void);

int OvlFunc_971_200906c(int scene)
{
    register int sceneId asm("r5") = scene;
    register int messageOffset asm("r6") = 0;
    register int message asm("r7");
    __CutsceneStart();
    asm volatile("cmp r5, #0xd\n\tbeq .Lscene13_971\n\tcmp r5, #0xd\n\tbgt .LsceneDefault_971\n\tcmp r5, #0xc\n\tbne .LsceneDefault_971\n\tldr r7, =0x2985\n\tb .LsceneSelected_971\n.Lscene13_971:\n\tldr r7, =0x297f\n\tb .LsceneSelected_971\n.LsceneDefault_971:\n\tldr r7, =0x2982\n.LsceneSelected_971:" : "=r"(message) : "r"(sceneId));
    {
        register u32 value asm("r1");
        register int first asm("r0");
        asm volatile("ldr r3, =gState\n\tmov r2, #0xfa\n\tlsl r2, #1\n\tadd r3, r2\n\tmov r0, r5\n\tldr r1, [r3]"
                     : "=r"(value), "=r"(first) : "r"(sceneId) : "r2", "r3");
        __Func_809280c(first, value, 0);
    }
    if (__GetFlag(0x304) != 0) {
        int flag;
        register int flagArg asm("r0");
        asm volatile("ldr r0, =0x305" : "=r"(flagArg));
        flag = __GetFlag(flagArg);
        {
            register int normalized asm("r3") = (u32)(-flag | flag) >> 31;
            asm volatile("" : "+r"(normalized));
            messageOffset = normalized;
            asm volatile("" : "+r"(messageOffset));
            messageOffset = 2 - messageOffset;
        }
    }
    __MessageID(message + messageOffset);
    {
        register int first asm("r0");
        register int second asm("r1");
        asm volatile("mov r1, #0\n\tmov r0, r5"
                     : "=r"(first), "=r"(second) : "r"(sceneId));
        __Func_8092c40(first, second);
    }
    return __CutsceneEnd();
}
