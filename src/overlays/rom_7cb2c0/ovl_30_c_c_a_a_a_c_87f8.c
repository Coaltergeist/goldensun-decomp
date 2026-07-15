typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int);
extern void __Func_809259c(int, int);
extern void __MessageID(int);
extern void OvlFunc_945_200c86c(int);
extern void __Func_809280c(int, int, int);
extern void __Func_8092c40(int, int);
extern void __Func_8092c40_abi(void) asm("__Func_8092c40");
extern int __Func_8091c7c(int, int);
extern void __CutsceneWait(int);
extern void OvlFunc_945_200c880(int, int);
extern void __ActorMessage(int, int);
extern void __Func_8092adc(int, int, int);
extern void __Func_8092adc_abi(void) asm("__Func_8092adc");

void OvlFunc_945_20087f8(void)
{
    __CutsceneStart();
    if (__GetFlag(0x925)) {
        __Func_809259c(8, 2);
        __MessageID(0x1e13);
        OvlFunc_945_200c86c(8);
        __Func_809280c(8, 0, 0xa);
        asm volatile("mov r1, #0\n\tmov r0, #8"
                     : : : "r0", "r1");
        __Func_8092c40_abi();
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(0x28);
            OvlFunc_945_200c86c(8);
            OvlFunc_945_200c880(8, 0x3000);
            __ActorMessage(8, 0);
        } else {
            *(u16 *)(iwram_3001ebc + 0x1d8) += 2;
            __ActorMessage(8, 0);
            asm volatile("mov r1, #0xc0\n\tmov r0, #8\n\t"
                         "lsl r1, #6\n\tmov r2, #0"
                         : : : "r0", "r1", "r2");
            __Func_8092adc_abi();
        }
    } else {
        __MessageID(0x1d4e);
        __ActorMessage(8, 0);
    }
    __CutsceneEnd();
}
