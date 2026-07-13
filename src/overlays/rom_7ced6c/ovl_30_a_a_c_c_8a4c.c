extern unsigned char *__CreateActor(int, int, int, int);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __Func_80929d8(unsigned char *actor, int value);

struct OvlSprite946 {
    unsigned char pad[9];
    unsigned char low : 2;
    unsigned char mode : 2;
};

struct OvlActor946 {
    unsigned char pad[0x50];
    struct OvlSprite946 *sprite;
};

unsigned char *OvlFunc_946_2008a4c(int x, int y, int z, int actor_id)
{
    unsigned char *actor = __CreateActor(actor_id, x, y, z);
    register unsigned char *call_actor asm("r0") = actor;

    if (actor != 0) {
        asm volatile("" : "+r"(call_actor));
        ((struct OvlActor946 *)actor)->sprite->mode = 1;
        actor[0x55] = 0;
        actor[0x59] = 8;
        __Actor_SetSpriteFlags(call_actor, 0);
        call_actor = actor;
        asm volatile("" : "+r"(call_actor));
        __Func_80929d8(call_actor, 0xf);
        actor[0x23] = (actor[0x23] & 0xfe) | 2;
        return actor;
    }
    return 0;
}
