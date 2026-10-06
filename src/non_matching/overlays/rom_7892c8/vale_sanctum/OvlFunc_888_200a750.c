extern struct Actor *__CreateActor(int, int, int, int);
extern void __Actor_SetScript(struct Actor *, void *);
extern const u8 gScript_888__0200c15c[];
void OvlFunc_888_200a6f0(struct Actor *);

void OvlFunc_888_200a750(int actorId, int arg1)
{
    struct Actor *parent;
    struct Actor *actor;
    struct Sprite *sprite;

    parent = (struct Actor *)__MapActor_GetActor(actorId);
    if (parent == NULL) {
        return;
    }

    actor = __CreateActor(0x11d, parent->pos.x, parent->pos.y + (0xb4 << 14), parent->pos.z);
    if (actor == NULL) {
        return;
    }

    sprite = actor->sprite;
    __Actor_SetScript(actor, gScript_888__0200c15c);
    actor->__unk55 = 0;
    actor->waveCounter = 0;
    actor->__unk66 = arg1;
    actor->update = (void *)OvlFunc_888_200a6f0;
    sprite->flags = 0;
    actor->linkedActor = parent;
    sprite->oam.priority = parent->sprite->oam.priority;
}
