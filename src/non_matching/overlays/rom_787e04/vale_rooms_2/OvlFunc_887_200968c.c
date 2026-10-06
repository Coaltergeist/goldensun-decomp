extern void __Sprite_SetAnim(struct Sprite *, int);
extern void __Func_8003f3c(u32);
extern u8 *iwram_3001f30;
extern struct SpriteSlot gSpriteSlots[];
extern void OvlFunc_887_2009638(struct Actor *);

void OvlFunc_887_200968c(unsigned int a)
{
    struct Actor *actor = (struct Actor *)a;
    struct Actor *spawned[2];
    u8 *base = iwram_3001f30;
    int mask = 0x3f;
    int i;

    for (i = 0; i < 2; i++) {
        struct Actor *newActor = __CreateActor(0x1a, actor->pos.x, actor->pos.y, actor->pos.z);
        spawned[i] = newActor;
        if (newActor != NULL) {
            struct Sprite *sprite = newActor->sprite;
            newActor->floorPos = actor->floorPos;
            newActor->__unk55 = 0;
            newActor->waveCounter = 0;
            newActor->linkedActor = actor;
            if (sprite != NULL) {
                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = *(u16 *)(base + 0x46);
                sprite->__unk1D |= 1;
                *(u16 *)&sprite->oam.attr2Lo = (*(u16 *)&sprite->oam.attr2Lo & ~0x3ff) | ((gSpriteSlots[sprite->slot].vramOffset >> 5) & 0x3ff);
                ((u8 *)&sprite->oam.attr0)[1] = ((((u8 *)&sprite->oam.attr0)[1] & ~0x20) & mask) | 0x40;
                ((u8 *)&sprite->oam.attr1)[1] = (((u8 *)&sprite->oam.attr1)[1] & mask) | 0x80;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    spawned[0]->update = (actorfun_t *)OvlFunc_887_2009638;
    spawned[0]->sprite->oam.priority = 2;
    spawned[1]->sprite->oam.priority = 2;
    spawned[1]->update = (actorfun_t *)OvlFunc_887_20095e8;
    spawned[1]->flags = 2;
}
