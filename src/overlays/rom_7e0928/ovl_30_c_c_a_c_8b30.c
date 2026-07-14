#include "actor.h"

extern unsigned char gState[];

extern struct Actor *__MapActor_GetActor(int actor_id);
extern void __MapActor_Surprise(int actor, int emote);
extern void __Actor_SetAnim(struct Actor *actor, int animNo);
extern void __Actor_TravelTo(struct Actor *actor, int x, int y, int z);
extern void __Actor_WaitMovement(struct Actor *actor);
extern void __Func_8092708(int actor, int arg1, int arg2);

void OvlFunc_956_2008b30(void)
{
    register unsigned char *base asm("r3") = gState;
    register unsigned int off asm("r0") = 0xfa;
    unsigned char *statePtr;
    struct Actor *actor;

    asm volatile("" : "+r"(base), "+r"(off));
    off <<= 1;
    statePtr = base + off;
    asm volatile("" : "+r"(statePtr));

    actor = __MapActor_GetActor(*(unsigned int *)statePtr);

    if (actor->pos.x > (0xa6 << 18))
        actor->pos.x = 0xa6 << 18;

    actor->bounce = 0x80 << 9;
    actor->speed = 0x80 << 10;

    __Actor_SetAnim(actor, 5);
    {
        register unsigned int z asm("r3") = actor->pos.z;
        register unsigned int mask asm("r2") = 0xfff00000;
        register unsigned int shifted asm("r0") = 0xc0;
        int y;
        asm volatile("" : "+r"(z), "+r"(mask), "+r"(shifted));
        z &= mask;
        shifted <<= 12;
        y = actor->pos.y;
        z += shifted;
        __Actor_TravelTo(actor, actor->pos.x, y, z);
    }
    __Actor_WaitMovement(actor);

    __MapActor_Surprise(*(unsigned int *)statePtr, 0x81 << 1);
    __Func_8092708(*(unsigned int *)statePtr, 6, 0);
}
