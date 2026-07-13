typedef unsigned char u8;

extern u8 *__CreateActor(int type, int x, int y, int z);
extern void __Actor_SetScript(u8 *actor, const void *script);
extern void __Sprite_SetAnim(u8 *sprite, int animation);
extern const u8 CREATE_ACTOR_SCRIPT[];

void CREATE_ACTOR_FUNCTION(u8 *source)
{
    u8 *actor = __CreateActor(0x18, *(int *)(source + 8),
                              *(int *)(source + 0xc), *(int *)(source + 0x10));

    if (actor != 0) {
        u8 *sprite = *(u8 **)(actor + 0x50);

        __Actor_SetScript(actor, CREATE_ACTOR_SCRIPT);
        actor[0x55] = 0;
        actor[0x22] = 1;
        actor[0x23] = 2;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite[0x26] = 0;
            sprite[9] |= 0xc;
        }
    }
}
