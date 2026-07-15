typedef unsigned short u16;

typedef struct MapActor {
    unsigned char pad0[6];
    u16 animation;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern void __UI_Sanctum(int actor);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int arg1);

void OvlFunc_950_200891c(int actor)
{
    unsigned int value = __MapActor_GetActor(0)->animation;
    register unsigned int mask asm("r2");

    value += 0x2000;
    asm volatile("ldr r2, 1f" : "=r" (mask) : "r" (value));
    value &= mask;
    if (value << 16 == 0xc0000000) {
        __UI_Sanctum(actor);
    } else {
        register int message asm("r0");
        if (__GetFlag(0x950)) {
            asm volatile(
                "ldr r0, 1f+4\n"
                "b .L950_show_message\n"
                ".align 2\n"
                "1:\n"
                ".word 0xffffc000\n"
                ".word 0x23bf"
                : "=r" (message));
        }
        if (__GetFlag(0x962)) {
            message = 0x2231;
            goto show_message;
        }
        goto default_message;
show_message:
        asm volatile(".L950_show_message:");
        __MessageID(message);
        __ActorMessage(actor, 0);
        goto message_done;
default_message:
        __MessageID(0x1feb);
        __ActorMessage(actor, 0);
message_done:
        ;
    }
}
