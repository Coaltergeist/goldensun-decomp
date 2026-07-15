typedef unsigned short u16;

extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_80b0278(int actor, int arg);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int value);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __CutsceneWait(int duration);

void OvlFunc_950_2008500(int actor)
{
    unsigned char *mapActor = __MapActor_GetActor(0);
    unsigned int value = *(u16 *)(mapActor + 6);
    register unsigned int mask asm("r2");
    int message;

    value += 0x2000;
    asm volatile("ldr r2, =0xffffc000" : "=r"(mask));
    value &= mask;
    value <<= 16;
    if (value == 0x80000000) {
        __Func_80b0278(0x1c, actor);
    } else {
        int firstFlag = __GetFlag(0x950);
        asm volatile(
            "cmp r0, #0\n\t"
            "beq 1f\n\t"
            "ldr r0, =0x238d\n\t"
            "b 2f\n\t"
            ".align 2\n\t"
            ".pool\n"
            "1:"
            : "=r"(message) : "r"(firstFlag));
        if (__GetFlag(0x962)) {
            message = 0x221b;
            asm volatile("2:");
            __MessageID(message);
            __ActorMessage(actor, 0);
        } else {
            register int msg5 asm("r5");
            register int arg0 asm("r0");
            register int arg1 asm("r1");

            msg5 = 0x1fd5;
            asm volatile("" : "+r"(msg5));
            __MessageID(msg5);
            arg1 = 0;
            arg0 = actor;
            asm volatile("" : "+r"(arg0), "+r"(arg1));
            __Func_8092c40(arg0, arg1);
            if (__Func_8091c7c(0, 0) == 0) {
                __CutsceneWait(0xa);
                __MessageID(msg5 + 1);
            } else {
                __MessageID(msg5 + 2);
            }
            __ActorMessage(actor, 0);
        }
    }
}
