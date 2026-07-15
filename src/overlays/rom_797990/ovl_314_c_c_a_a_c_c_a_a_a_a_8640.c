#include "gba/types.h"

typedef struct MapActor {
    u8 filler0[6];
    u16 animation;
    u8 filler8[0x5c];
    u16 flags;
} MapActor;

extern MapActor *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_8092848(int, int, int);
extern void __Func_8093040(int, int, int);
extern void __WaitFrames(int);
extern void __CutsceneEnd(void);

void OvlFunc_901_2008640(void)
{
    register MapActor *actor asm("r5") = __MapActor_GetActor(15);
    register int savedAnimation asm("r8");
    register int zero asm("r10");
    register u16 *flags asm("r6");
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int animationOut asm("r2");
    register int animationIn asm("r1");
    register int zeroSource asm("r1");

    flags = &actor->flags;
    asm volatile("mov r2, #6\nldrsh r1, [r5, r2]"
                 : "=r" (animationIn) : "r" (actor) : "r2");
    asm volatile(
        "ldr r3, 1f\n"
        "ldrh r2, [r6]\n"
        "orr r3, r2\n"
        "strh r3, [r6]"
        : : "r" (flags), "r" (animationIn)
        : "r2", "r3", "memory");
    savedAnimation = animationIn;
    asm volatile("" : : "r" (savedAnimation));
    zeroSource = 0;
    asm volatile("" : : "r" (zeroSource));
    zero = zeroSource;
    __CutsceneStart();
    asm volatile("ldr %0, 1f+4" : "=r" (arg0));
    __MessageID(arg0);
    __MapActor_SetAnim(15, 0);
    __Func_8092848(15, 0, 2);
    arg1 = 0;
    arg0 = 15;
    arg2 = 10;
    __Func_8093040(arg0, arg1, arg2);
    animationOut = savedAnimation;
    actor->animation = animationOut;
    arg0 = 1;
    asm volatile(
        "b 2f\n"
        ".align 2\n"
        "1:\n"
        ".word 2\n"
        ".word 0x1cb4\n"
        "2:"
        : : "r" (arg0) : "memory");
    __WaitFrames(arg0);
    __CutsceneEnd();
    *flags = zero;
}
