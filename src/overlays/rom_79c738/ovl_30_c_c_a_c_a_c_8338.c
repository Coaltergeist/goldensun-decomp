typedef signed short s16;
typedef unsigned char u8;

extern u8 *iwram_3001ebc;
extern int __GetFlag(int);
extern void __PlaySound(int);
extern void __Func_80118a8(int);
extern void __CutsceneStart(void);
extern void __CutsceneWait(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetSpeed_abi(void) asm("__MapActor_SetSpeed");
extern void __MapActor_SetAnim(int, int);
extern void __Func_809228c(int, int, int);
extern void __Func_809228c_abi(void) asm("__Func_809228c");
extern void __Func_8092208(int, int, int);
extern void __Func_8092208_abi(void) asm("__Func_8092208");
extern void __Func_8091e9c(int);
extern void __CutsceneEnd(void);
extern void __Func_80118c0(int);

void OvlFunc_909_2008338(void)
{
    u8 *state = iwram_3001ebc;
    int played = 0;

    if (*(s16 *)(state + 0x16c) == 9) {
        if (!__GetFlag(0x200)) {
            __PlaySound(0xbc);
            played = 1;
        }
    } else {
        __PlaySound(0x9e);
        played = 1;
    }

    if (played) {
        __Func_80118a8(1);
        __Func_80118a8(2);
    }

    __CutsceneStart();
    __CutsceneWait(0xa);
    asm volatile("mov r1, #0x80\n\tmov r2, #0x80\n\tlsl r2, #7\n\t"
                 "mov r0, #0\n\tlsl r1, #8"
                 : : : "r0", "r1", "r2");
    __MapActor_SetSpeed_abi();
    __MapActor_SetAnim(0, 2);
    if (*(s16 *)(state + 0x16c) == 9) {
        asm volatile("mov r2, #0x10\n\tmov r0, #0\n\tmov r1, #0\n\tneg r2, r2"
                     : : : "r0", "r1", "r2");
        __Func_809228c_abi();
    } else {
        asm volatile("mov r2, #0x10\n\tmov r0, #0\n\tmov r1, #3\n\tneg r2, r2"
                     : : : "r0", "r1", "r2");
        __Func_8092208_abi();
    }
    __CutsceneWait(0x10);
    __Func_8091e9c(*(s16 *)(state + 0x16c));
    __CutsceneEnd();
    __Func_80118c0(1);
    __Func_80118c0(2);
}
