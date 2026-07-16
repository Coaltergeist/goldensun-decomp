typedef unsigned char u8;

struct Sprite {
    u8 pad[9];
    unsigned char low : 2;
    unsigned char field : 2;
};

struct Actor {
    u8 pad[0x50];
    struct Sprite *sprite;
};

void OvlFunc_common0_0(struct Actor *actor, unsigned int value)
{
    actor->sprite->field = value;
}

extern unsigned char *__CreateActor(int actor_id, int x, int y, int z);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __Func_80929d8(unsigned char *actor, int value);
extern void __Func_800c548(unsigned char *actor, int value);

unsigned char *OvlFunc_common0_18(int x, int y, int z, int actor_id)
{
    unsigned char *actor;

    actor = __CreateActor(actor_id, x, y, z);
    if (actor != 0) {
        unsigned char *sprite = *(unsigned char **)(actor + 0x50);
        register int mask asm("r3");
        register unsigned int value asm("r2");

        mask = 13;
        asm volatile("" : "+r"(mask));
        value = sprite[9];
        asm volatile("" : "+r"(mask), "+r"(value));
        mask = -mask;
        mask &= value;
        {
            register unsigned char *field asm("r2") = actor;

            asm volatile("" : "+r"(field), "+r"(mask));
            sprite[9] = mask;
            field += 0x55;
            asm volatile("" : "+r"(field), "+r"(mask));
            mask = 0;
            *field = mask;
            field += 4;
            asm volatile("" : "+r"(field));
            mask = 8;
            *field = mask;
        }
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8(actor, 0xe);
        __Func_800c548(actor, 1);
        return actor;
    }
    return 0;
}

/* Preserve the aligned size used by the original common overlay object. */
