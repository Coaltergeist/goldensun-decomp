extern void __PlaySound(int);
extern struct Actor *__CreateActor(int, fx32, fx32, fx32);
extern void __Sprite_SetAnim(struct Sprite *, int);
extern void __Func_8003f3c(u32);
extern void OvlFunc_969_200a1ac(struct Actor *);
extern void OvlFunc_969_200a15c(struct Actor *);
extern u8 *iwram_3001f30;
extern struct SpriteSlot gSpriteSlots[];

void OvlFunc_969_200a200(u32 arg0)
{
    struct Actor *actor = (struct Actor *)arg0;
    u8 *map = iwram_3001f30;
    struct Actor *actors[2];
    int i;

    __PlaySound(0x83);

    for (i = 0; i < 2; i++) {
        struct Actor *created = __CreateActor(0x1a, actor->pos.x, actor->pos.y, actor->pos.z);
        actors[i] = created;
        if (created != NULL) {
            struct Sprite *sprite;

            created->floorPos = actor->floorPos;
            sprite = created->sprite;
            created->__unk55 = 0;
            created->waveCounter = 0;
            created->linkedActor = actor;

            if (sprite != NULL) {
                int val;

                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = *(u16 *)(map + 0x46);
                sprite->__unk1D |= 1;
                *(u16 *)&sprite->oam.attr2Lo = (((u32)gSpriteSlots[sprite->slot].vramOffset << 17) >> 22) |
                    (*(u16 *)&sprite->oam.attr2Lo & ~0x3ff);
                val = ((u8 *)sprite)[5];
                val &= ~0x20;
                ((u8 *)sprite)[5] = (val & 0x3f) | 0x40;
                ((u8 *)sprite)[7] = (((u8 *)sprite)[7] & 0x3f) | 0x80;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    actors[0]->update = (actorfun_t *)OvlFunc_969_200a1ac;
    actors[0]->sprite->oam.priority = actor->sprite->oam.priority;

    actors[1]->sprite->oam.priority = actor->sprite->oam.priority;
    actors[1]->update = (actorfun_t *)OvlFunc_969_200a15c;
    actors[1]->flags = 2;
}
