typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __Func_80b3284(int action, int actor);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __Func_80925cc(int actor, int mode);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __MessageID(int message_id);
extern void __ActorMessage(int actor, int mode);
extern void __SetFlag(int flag);
extern void __Func_8093054(int actor, int value);
extern void __Func_8092adc(int actor, int value, int duration);
extern void __CutsceneEnd(void);

void OvlFunc_887_2008e34(void)
{
    u8 *actor;
    u32 delta;

    actor = __MapActor_GetActor(0);
    delta = *(u16 *)(actor + 6) - 0x2000;
    if (delta > 0x9000) {
        __Func_80b3284(0, 0xd);
        return;
    }

    __CutsceneStart();
    if (__GetFlag(0x87a)) {
        __Func_80925cc(0xd, 2);
        __Func_809280c(0xd, 0, 0xa);
        if (__GetFlag(0x300) == 0) {
            __MessageID(0x1c14);
            __ActorMessage(0xd, 0);
            {
                register int flag300 asm("r0");
                asm volatile("mov %0, #0xc0\n\tlsl %0, %0, #2" : "=r"(flag300));
                __SetFlag(flag300);
            }
        }
        __MessageID(0x1c15);
        asm volatile(
            "mov r1, #0\n\t"
            "mov r0, #0xd\n\t"
            "bl __Func_8093054"
            :
            :
            : "r0", "r1", "r2", "r3", "lr");
        {
            register u32 delay asm("r5") = 0x9000;
            asm volatile(
                "mov r0, #0xd\n\t"
                "mov r1, r5\n\t"
                "mov r2, #0xa\n\t"
                "bl __Func_8092adc"
                :
                : "r"(delay)
                : "r0", "r1", "r2", "r3", "lr");
        }
    } else {
        if (__GetFlag(0x815)) {
            __MessageID(0x11a9);
        } else {
            __MessageID(0xf58);
        }
        __ActorMessage(0xd, 0);
    }
    __CutsceneEnd();
}
