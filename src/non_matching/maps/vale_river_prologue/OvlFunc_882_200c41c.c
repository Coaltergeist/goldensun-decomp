extern u8 *iwram_3001f30;
extern struct SpriteSlot gSpriteSlots[];
extern void *__CreateActor(int, int, int, int);
extern void __Sprite_SetAnim(struct Sprite *, int);
extern void __Func_8003f3c(int);

void OvlFunc_882_200c41c(unsigned int arg0)
{
    struct Actor *actor = (struct Actor *)arg0;
    struct Actor *spawned[2];
    int i;

    __PlaySound(0x98);

    for (i = 0; i < 2; i++) {
        spawned[i] = (struct Actor *)__CreateActor(0x1a, actor->pos.x, actor->pos.y, actor->pos.z);
        if (spawned[i] != NULL) {
            spawned[i]->floorPos = actor->floorPos;
            spawned[i]->__unk55 = 0;
            spawned[i]->waveCounter = 0;
            spawned[i]->linkedActor = actor;
            if (spawned[i]->sprite != NULL) {
                struct Sprite *sprite = spawned[i]->sprite;

                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = *(u16 *)(iwram_3001f30 + 0x46);
                sprite->__unk1D |= 1;
                *(u16 *)&sprite->oam.attr2Lo = (*(u16 *)&sprite->oam.attr2Lo & ~0x3ff) |
                    ((gSpriteSlots[sprite->slot].vramOffset >> 5) & 0x3ff);
                ((u8 *)&sprite->oam)[5] &= ~0x20;
                ((u8 *)&sprite->oam)[5] = (((u8 *)&sprite->oam)[5] & 0x3f) | 0x40;
                ((u8 *)&sprite->oam)[7] = (((u8 *)&sprite->oam)[7] & 0x3f) | 0x80;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    spawned[0]->update = (actorfun_t *)OvlFunc_882_200c3c8;
    spawned[0]->sprite->oam.priority = actor->sprite->oam.priority;

    spawned[1]->sprite->oam.priority = actor->sprite->oam.priority;
    spawned[1]->update = (actorfun_t *)OvlFunc_882_200c378;
    spawned[1]->flags = 2;
}
