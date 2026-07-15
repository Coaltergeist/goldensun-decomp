typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 __GetFlag(u32 flag);
extern void __SetFlag(u32 flag);
extern void __ClearFlag(u32 flag);
extern void __CutsceneWait(s32 frames);
extern void __Func_8012330(s32 x, s32 y, s32 z);
extern void __PlaySound(s32 id);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8012350(void);
extern void __Func_8091e9c(s32 id);
extern u8 *iwram_3001ebc;

void OvlFunc_924_20090c0(void) {
    if (__GetFlag(0xc4 << 2) && __GetFlag(0x311) && __GetFlag(0x312)) {
        __SetFlag(0x876);
        __CutsceneWait(0x1e);
        {
            register s32 arg0 asm("r0");
            register s32 arg1 asm("r1");
            register s32 arg2 asm("r2");

            arg0 = 0x80;
            asm volatile("" : "+r"(arg0));
            arg1 = 0x80;
            asm volatile("" : "+r"(arg0), "+r"(arg1));
            arg2 = 0x80;
            asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
            arg1 <<= 9;
            arg2 <<= 9;
            arg0 <<= 9;
            __Func_8012330(arg0, arg1, arg2);
        }
        __PlaySound(0x8d);
        __CutsceneWait(0x3c);
        *(u32 *)(iwram_3001ebc + 0x1c0) = 0x100;
        __MapTransitionOut();
        __WaitMapTransition();
        __PlaySound(0x121);
        {
            register s32 arg0 asm("r0");
            register s32 arg1 asm("r1");
            register s32 arg2 asm("r2");

            arg0 = 1;
            asm volatile("" : "+r"(arg0));
            arg1 = 1;
            asm volatile("" : "+r"(arg0), "+r"(arg1));
            arg0 = -arg0;
            arg1 = -arg1;
            arg2 = 0xe666;
            __Func_8012330(arg0, arg1, arg2);
        }
        __Func_8012350();
        __Func_8091e9c(0xd);
    } else {
        __ClearFlag(0x876);
    }
}
