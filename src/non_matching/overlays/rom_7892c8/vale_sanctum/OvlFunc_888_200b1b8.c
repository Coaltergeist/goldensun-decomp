extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern u32 __Random(void);
extern void *__CreateActor(int, int, int, int);
extern void OvlFunc_888_200b144(struct Actor *);

void OvlFunc_888_200b1b8(int arg0)
{
    struct Actor *actor;
    struct Actor *newActor;
    struct Sprite *sprite;
    fx32 x;
    fx32 y;

    actor = (struct Actor *)__MapActor_GetActor(arg0);
    if (actor == NULL) {
        return;
    }

    x = actor->pos.x + ((_umodsi3_RAM(__Random(), 20)) << 16) + 0xfff60000;
    y = actor->pos.y + ((__Random() & 0xf) << 16) + 0xfff80000;

    newActor = (struct Actor *)__CreateActor(0x11e, x, y, actor->pos.z);
    if (newActor == NULL) {
        return;
    }

    sprite = newActor->sprite;
    newActor->__unk55 = 0;
    newActor->waveCounter = (_umodsi3_RAM(__Random(), 10)) + 5;
    newActor->__unk66 = (_umodsi3_RAM(__Random(), 60)) + 30;
    newActor->update = (actorfun_t *)OvlFunc_888_200b144;
    sprite->flags = 0;
    sprite->oam.priority = actor->sprite->oam.priority;
}
