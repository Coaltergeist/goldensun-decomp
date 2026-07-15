extern int OvlFunc_890_200a5b0(void);
extern int __GetFlag(int);
extern int __GetFlag_abi(void) asm("__GetFlag");
extern void __SetFlag(int);
extern void __SetFlag_abi(void) asm("__SetFlag");
extern void __ClearFlag(int);
extern void __ClearFlag_abi(void) asm("__ClearFlag");
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8091200(int, int);
extern void __Func_8091200_abi(void) asm("__Func_8091200");
extern void __Func_8091254(int);
extern void OvlFunc_890_20089f4(void);
extern void OvlFunc_890_2009be8(void);

void OvlFunc_890_2008054(void)
{
    if (OvlFunc_890_200a5b0()) {
        asm volatile("ldr r0, =0x201" : : : "r0");
        if (!__GetFlag_abi()) {
            __CutsceneStart();
            asm volatile("mov r1, #1\n\tldr r0, =0x2051cc" : : : "r0", "r1");
            __Func_8091200_abi();
            __Func_8091254(0x14);
            asm volatile("ldr r0, =0x201" : : : "r0");
            __SetFlag_abi();
            asm volatile("mov r0, #0x80\n\tlsl r0, #2" : : : "r0");
            __ClearFlag_abi();
            asm volatile("ldr r0, =0x202" : : : "r0");
            __ClearFlag_abi();
            asm volatile("ldr r0, =0x80a" : : : "r0");
            if (!__GetFlag_abi())
                OvlFunc_890_20089f4();
            if (OvlFunc_890_200a5b0()) {
                asm volatile("ldr r0, =0x811" : : : "r0");
                if (!__GetFlag_abi())
                    OvlFunc_890_2009be8();
            }
            __CutsceneEnd();
        }
    } else {
        asm volatile("mov r0, #0x80\n\tlsl r0, #2" : : : "r0");
        if (!__GetFlag_abi()) {
        __CutsceneStart();
        __Func_8091200(0x10000, 1);
        __Func_8091254(0x14);
        asm volatile("mov r0, #0x80\n\tlsl r0, #2" : : : "r0");
        __SetFlag_abi();
        asm volatile("ldr r0, =0x201" : : : "r0");
        __ClearFlag_abi();
        asm volatile("ldr r0, =0x202" : : : "r0");
        __ClearFlag_abi();
        __CutsceneEnd();
        }
    }
}
