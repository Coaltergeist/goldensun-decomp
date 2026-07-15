typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MessageID(int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_8092848(int, int, int);
extern int __GetFlag(int);
extern void __MapActor_Emote(int, int, int);
extern void __Func_8093040(int, int, int);
extern void __SetFlag(int);
extern void __WaitFrames(int);

void OvlFunc_901_200858c(void)
{
    register u8 *actor asm("r5");
    register u8 *flags asm("r6");
    register int message asm("r7");
    register int saved asm("r8");
    register int value asm("r2");
    register int old asm("r3");
    register int one asm("r3");
    register int a0 asm("r0");
    register int a1 asm("r1");
    register int a2 asm("r2");

    actor = __MapActor_GetActor(0xe);
    asm volatile(
        "mov r3, #6\n"
        "ldrsh r2, [%3, r3]\n"
        "mov %0, %3\n"
        "add %0, #0x64\n"
        "ldrh %2, [%0]\n"
        "mov %1, r2"
        : "=r"(flags), "=r"(saved), "=r"(old)
        : "r"(actor)
        : "r2");
    asm volatile("ldr %0, =2" : "=r"(value));
    value |= old;
    *(u16 *)flags = value;
    __CutsceneStart();
    asm volatile("ldr %0, =0x1cb1" : "=r"(message));
    __MessageID(message);
    asm volatile("" : "+r"(message));
    __MapActor_SetAnim(0xe, 0);
    asm volatile("" : "+r"(message));
    __Func_8092848(0xe, 0, 2);
    asm volatile("" : "+r"(message));
    a0 = 0xc0;
    asm volatile("" : "+r"(a0), "+r"(message));
    a0 <<= 2;
    if (__GetFlag(a0) == 0) {
        asm volatile("b 1f\n.align 2\n.ltorg\n1:");
        asm volatile("" : "+r"(message));
        a1 = 0x80;
        a0 = 0xe;
        asm volatile("" : "+r"(a0), "+r"(a1));
        a1 <<= 1;
        a2 = 0x3c;
        __MapActor_Emote(a0, a1, a2);
        __Func_8093040(0xe, 0, 0xa);
        __Func_8093040(0xe, 0, 0xa);
        a0 = 0xc0;
        asm volatile("" : "+r"(a0), "+r"(message));
        a0 <<= 2;
        __SetFlag(a0);
    }
    asm volatile("" : "+r"(message));
    __MessageID(message + 2);
    a1 = 0;
    a0 = 0xe;
    a2 = 0xa;
    asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
    __Func_8093040(a0, a1, a2);
    value = saved;
    asm volatile("" : "+r"(value));
    *(u16 *)(actor + 6) = value;
    __WaitFrames(1);
    __CutsceneEnd();
    one = 1;
    asm volatile("" : "+r"(one));
    *(u16 *)flags = one;
    __SetFlag(0x307);
}
