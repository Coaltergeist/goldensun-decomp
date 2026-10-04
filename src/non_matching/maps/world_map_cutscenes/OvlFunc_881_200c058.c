void OvlFunc_881_200c058(unsigned int arg0)
{
    extern unsigned int iwram_3001f30;
    extern struct SpriteSlot gSpriteSlots[];
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern void __Func_8003f3c(int);
    extern void OvlFunc_881_200c004(struct Actor *);

    struct Actor *parent;
    struct Actor *actors[2];
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned int ptr;
    unsigned int mask;
    int i;
    u8 b;

    ptr = iwram_3001f30;
    mask = 0x3f;
    parent = (struct Actor *)arg0;

    for (i = 0; i <= 1; i++) {
        actor = (struct Actor *)__CreateActor(0x1a, parent->pos.x, parent->pos.y, parent->pos.z);
        actors[i] = actor;
        if (actor != NULL) {
            actor->floorPos = parent->floorPos;
            sprite = actor->sprite;
            actor->__unk55 = 0;
            actor->waveCounter = 0;
            actor->linkedActor = parent;
            if (sprite != NULL) {
                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = *(u16 *)(ptr + 0x46);
                sprite->__unk1D |= 1;
                *(u16 *)&sprite->oam.attr2Lo = (*(u16 *)&sprite->oam.attr2Lo & ~0x3ff) | ((gSpriteSlots[sprite->slot].vramOffset >> 5) & 0x3ff);
                b = ((u8 *)sprite)[5];
                b &= ~0x20;
                ((u8 *)sprite)[5] = (b & mask) | 0x40;
                ((u8 *)sprite)[7] = (((u8 *)sprite)[7] & mask) | 0x80;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    actors[0]->update = (void *)OvlFunc_881_200c004;
    actors[0]->sprite->oam.priority = 1;
    actors[1]->update = (void *)OvlFunc_881_200bfb4;
    actors[1]->sprite->oam.priority = 1;
    actors[1]->flags = 2;
}
