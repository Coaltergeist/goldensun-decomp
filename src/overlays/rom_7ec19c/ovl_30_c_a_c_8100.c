typedef unsigned short u16;

extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Func_80b3284(int action_id, int actor_id);
extern int __GetFlag(int flag);
extern void __MessageID(int message_id);
extern void __ActorMessage(int actor_id, int mode);

void OvlFunc_962_2008100(int actor_id)
{
    unsigned char *actor = __MapActor_GetActor(0);
    register unsigned int facing asm("r3");
    register unsigned int compare asm("r2");

    compare = 0x80;
    asm volatile("" : "+r"(compare));
    facing = *(u16 *)(actor + 6);
    asm volatile("" : "+r"(facing), "+r"(compare));
    compare <<= 6;
    facing += compare;
    asm volatile("ldr %0, .LFacingMask_8100" : "=r"(compare) : "r"(facing));
    asm volatile("" : "+r"(facing), "+r"(compare));
    facing &= compare;
    compare = 0xc0;
    asm volatile("" : "+r"(facing), "+r"(compare));
    facing <<= 16;
    compare <<= 24;
    asm volatile("" : "+r"(facing), "+r"(compare));

    asm volatile("cmp %0, %1\nbne .LActorMessage_8100"
                 :
                 : "r"(facing), "r"(compare)
                 : "cc");
    {
        register int action asm("r0") = 10;
        register int target asm("r1");

        asm volatile("" : "+r"(action));
        target = actor_id;
        asm volatile("" : "+r"(action), "+r"(target));
        __Func_80b3284(action, target);
    }
    asm volatile("b .LActorMessageDone_8100\n"
                 ".align 2, 0\n"
                 ".LFacingMask_8100:\n"
                 ".word 0xffffc000\n"
                 ".LActorMessage_8100:");
    if (__GetFlag(0x96f)) {
        __MessageID(0x2620);
        __ActorMessage(actor_id, 0);
    } else {
        __MessageID(0x25d1);
        __ActorMessage(actor_id, 0);
    }
    asm volatile(".LActorMessageDone_8100:");
}
