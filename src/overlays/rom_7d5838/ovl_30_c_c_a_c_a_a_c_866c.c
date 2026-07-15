typedef unsigned short u16;

extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_80b0278(int actor, int arg);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int value);

void OvlFunc_950_200866c(int actor)
{
    unsigned char *mapActor = __MapActor_GetActor(0);
    unsigned int value = *(u16 *)(mapActor + 6);
    register unsigned int mask asm("r2");
    int message;

    value += 0x2000;
    asm volatile("ldr r2, =0xffffc000" : "=r"(mask));
    value &= mask;
    value <<= 16;
    if (value == 0xc0000000) {
        __Func_80b0278(0x1b, actor);
    } else {
        int firstFlag = __GetFlag(0x950);
        asm volatile(
            "cmp r0, #0\n\t"
            "beq 1f\n\t"
            "ldr r0, =0x238f\n\t"
            "b 2f\n\t"
            ".align 2\n\t"
            ".pool\n"
            "1:"
            : "=r"(message) : "r"(firstFlag));
        if (__GetFlag(0x962)) {
            message = 0x221d;
            asm volatile("2:");
            __MessageID(message);
            __ActorMessage(actor, 0);
        } else {
            __MessageID(0x1fd9);
            __ActorMessage(actor, 0);
        }
    }
}
