typedef unsigned short u16;

extern unsigned char *__MapActor_GetActor(int actor_id);
extern void ACTOR_DIRECTION_ACTION(int action_id, int actor_id);
extern int __GetFlag(int flag);
extern void __MessageID(int message_id);
extern void __ActorMessage(int actor_id, int mode);

void ACTOR_DIRECTION_FUNCTION(int actor_id)
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
    asm volatile("ldr %0, .LActorDirectionMask" : "=r"(compare) : "r"(facing));
    asm volatile("" : "+r"(facing), "+r"(compare));
    facing &= compare;
    compare = 0xc0;
    asm volatile("" : "+r"(facing), "+r"(compare));
    facing <<= 16;
    compare <<= 24;
    asm volatile("" : "+r"(facing), "+r"(compare));

    asm volatile("cmp %0, %1\nbne .LActorDirectionMessage"
                 :
                 : "r"(facing), "r"(compare)
                 : "cc");
    {
        register int action asm("r0") = ACTOR_DIRECTION_ACTION_ID;
        register int target asm("r1");

        asm volatile("" : "+r"(action));
        target = actor_id;
        asm volatile("" : "+r"(action), "+r"(target));
        ACTOR_DIRECTION_ACTION(action, target);
    }
    asm volatile("b .LActorDirectionDone\n"
                 ".align 2, 0\n"
                 ".LActorDirectionMask:\n"
                 ".word 0xffffc000\n"
                 ".LActorDirectionMessage:");
    if (__GetFlag(ACTOR_DIRECTION_FLAG)) {
        __MessageID(ACTOR_DIRECTION_MESSAGE_SET);
        __ActorMessage(actor_id, 0);
    } else {
        __MessageID(ACTOR_DIRECTION_MESSAGE_CLEAR);
        __ActorMessage(actor_id, 0);
    }
    asm volatile(".LActorDirectionDone:");
}
