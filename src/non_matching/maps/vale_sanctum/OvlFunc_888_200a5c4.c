extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_SetAnim(int, int);
void OvlFunc_888_200a67c(struct Actor *actor);

void OvlFunc_888_200a5c4(void)
{
    struct Actor *actor;
    struct Sprite *sprite;
    u32 i;
    u32 numLayers;

    actor = (struct Actor *)__MapActor_GetActor(8);
    if (actor != NULL) {
        __MapActor_SetPos(0xe, actor->pos.x, actor->pos.z);
    }
    __MapActor_SetAnim(0xe, 0);

    ((struct Actor *)__MapActor_GetActor(0xe))->facing = ((struct Actor *)__MapActor_GetActor(8))->facing;
    ((struct Actor *)__MapActor_GetActor(0xe))->update = (void *)OvlFunc_888_200a67c;

    sprite = ((struct Actor *)__MapActor_GetActor(0xe))->sprite;
    numLayers = sprite->numLayers;
    for (i = 0; i < numLayers; i++) {
        struct SpriteLayer *layer = sprite->layers[i];
        if (layer != NULL && layer->curAnim != NULL) {
            layer->colorswap = 10;
        }
    }

    sprite->visible = 1;
    ((struct Actor *)__MapActor_GetActor(0xe))->flags &= ~1;
    sprite->oam.priority = 2;
}
