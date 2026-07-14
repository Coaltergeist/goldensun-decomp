#include "actor.h"

extern unsigned char gState[];

struct State {
    unsigned char pad[500];
    unsigned int actor;
};

extern struct Actor *__MapActor_GetActor(int actor_id);
extern void __MapActor_Surprise(int actor, int emote);
extern void __Actor_SetAnim(struct Actor *actor, int animNo);
extern void __Actor_TravelTo(struct Actor *actor, int x, int y, int z);
extern void __Actor_WaitMovement(struct Actor *actor);

void OvlFunc_956_2008ad4(void)
{
    register unsigned char *statePtr asm("r6") = gState;
    register unsigned int off asm("r0") = 0xfa;
    struct Actor *actor;

    asm volatile("" : "+r"(statePtr), "+r"(off));
    off <<= 1;
    statePtr += off;
    asm volatile("" : "+r"(statePtr));

    actor = __MapActor_GetActor(*(int *)statePtr);

    actor->bounce = 0x80 << 9;
    actor->speed = 0x80 << 10;
    __MapActor_Surprise(*(int *)statePtr, 0x81 << 1);
    __Actor_SetAnim(actor, 5);
    {
        register unsigned int z asm("r3") = actor->pos.z;
        register unsigned int mask asm("r2") = 0xfff00000;
        register unsigned int shifted asm("r0") = 0xc0;
        asm volatile("" : "+r"(z), "+r"(mask), "+r"(shifted));
        z &= mask;
        shifted <<= 13;
        z += shifted;
        __Actor_TravelTo(actor, actor->pos.x, actor->pos.y, z);
    }
    __Actor_WaitMovement(actor);
}
