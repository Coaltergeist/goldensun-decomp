typedef unsigned char u8;

extern u8 *__CreateActor(int actorId, int x, int y, int z);
extern u8 *__galloc_iwram(int index, int size);
extern void __LoadItemIcon(int item);
extern void __UploadSpriteGFX(int sprite, int size, void *source);
extern void __gfree(int index);

/* アイテム表示用の役者とスプライトを作る */
void OvlFunc_899_200c698(int item, int x, int y, int z)
{
    register int itemReg asm("r7") = item;
    register u8 *sprite asm("r6");
    register u8 *buffer asm("r5");
    register int actorId asm("r0");
    u8 *actor;

    asm volatile("" : "+r"(itemReg), "+r"(x), "+r"(y), "+r"(z));
    actorId = 0x16;
    asm volatile("" : "+r"(actorId), "+r"(x), "+r"(y), "+r"(z));
    buffer = 0;
    asm volatile("" : "+r"(actorId), "+r"(buffer), "+r"(x), "+r"(y), "+r"(z));
    actor = __CreateActor(actorId, x, y, z);

    if (actor != 0) {
        register int mask asm("r3");
        register unsigned int value asm("r2");

        sprite = *(u8 **)(actor + 0x50);
        sprite[0x26] = (unsigned int)buffer;
        sprite[0x27] = (unsigned int)buffer;
        mask = 0x21;
        asm volatile("" : "+r"(mask));
        value = sprite[5];
        asm volatile("" : "+r"(mask), "+r"(value));
        mask = -mask;
        mask &= value;
        sprite[5] = mask;
        sprite[9] &= 0xf;
        actor[0x55] = (unsigned int)buffer;
        actor[0x5c] = 1;

        buffer = __galloc_iwram(0x11, 0xc1 << 3);
        __LoadItemIcon(itemReg);
        buffer += 0x80 << 3;
        __UploadSpriteGFX(sprite[0x1c], 0x80, buffer);
        __gfree(0x11);
    }
}
