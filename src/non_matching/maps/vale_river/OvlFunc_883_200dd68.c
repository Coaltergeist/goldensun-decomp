extern struct SpriteSlot gSpriteSlots[];
extern unsigned int iwram_3001f30;
extern void __Sprite_SetAnim(struct Sprite *, int);
extern void __Func_8003f3c(int);
extern void OvlFunc_883_200dd14(struct Actor *);

void OvlFunc_883_200dd68(unsigned int arg0)
{
    struct Actor *actor = (struct Actor *)arg0;
    unsigned char *map = (unsigned char *)iwram_3001f30;
    struct Actor *actors[2];
    int i;

    for (i = 0; i < 2; i++) {
        actors[i] = (struct Actor *)API_CreateActor(0x1a, actor->pos.x, actor->pos.y, actor->pos.z);
        if (actors[i] != NULL) {
            struct Sprite *sprite;

            actors[i]->floorPos = actor->floorPos;
            sprite = actors[i]->sprite;
            actors[i]->__unk55 = 0;
            actors[i]->waveCounter = 0;
            actors[i]->linkedActor = actor;
            if (sprite != NULL) {
                int b;

                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = *(u16 *)(map + 0x46);
                sprite->__unk1D |= 1;
                *(u16 *)&sprite->oam.attr2Lo = (*(u16 *)&sprite->oam.attr2Lo & ~0x3ff)
                    | ((gSpriteSlots[sprite->slot].vramOffset >> 5) & 0x3ff);
                b = ((u8 *)&sprite->oam)[5];
                b &= ~0x20;
                ((u8 *)&sprite->oam)[5] = (b & 0x3f) | 0x40;
                ((u8 *)&sprite->oam)[7] = (((u8 *)&sprite->oam)[7] & 0x3f) | 0x80;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    actors[0]->update = (actorfun_t *)OvlFunc_883_200dd14;
    actors[0]->sprite->oam.priority = 1;
    actors[1]->update = (actorfun_t *)OvlFunc_883_200dcc4;
    actors[1]->sprite->oam.priority = 1;
    actors[1]->flags = 2;
}
