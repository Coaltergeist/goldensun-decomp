typedef unsigned char u8;

extern u8 *__CreateActor(int type, int x, int y, int z);
extern void __Actor_SetScript(u8 *actor, const void *script);
extern void __Sprite_SetAnim(u8 *sprite, int animation);
extern const u8 gScript_907__02009d7c[];

void OvlFunc_907_2008f3c(u8 *source)
{
    u8 *actor = __CreateActor(0x18, *(int *)(source + 8),
                              *(int *)(source + 0xc), *(int *)(source + 0x10));

    if (actor != 0) {
        u8 *sprite = *(u8 **)(actor + 0x50);

        __Actor_SetScript(actor, gScript_907__02009d7c);
        actor[0x55] = 0;
        actor[0x22] = 1;
        actor[0x23] = 2;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite[0x26] = 0;
            {
                register unsigned int work asm("r3");
                register unsigned int value asm("r2");

                work = 13;
                asm volatile("" : "+r"(work));
                value = sprite[5];
                asm volatile("" : "+r"(work), "+r"(value));
                work = -work;
                work &= value;
                value = 4;
                work |= value;
                sprite[5] = work;
            }
            sprite[9] |= 0xc;
        }
    }
}
