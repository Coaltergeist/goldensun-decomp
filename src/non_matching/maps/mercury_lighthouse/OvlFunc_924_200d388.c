extern unsigned char gScript_924__0200de14[];
extern void __Sprite_SetAnim(struct Sprite *, int);

void OvlFunc_924_200d388(void)
{
    struct Actor *src;
    struct Actor *actor;
    struct Sprite *sprite;

    src = ((struct Actor **)((char *)iwram_3001ebc + 0x14))[*(int *)(gState._bytes + 500)];

    actor = API_CreateActor(0x1a, src->pos.x, src->pos.y, src->pos.z);
    if (actor != NULL) {
        actor->floorPos = src->floorPos;
        sprite = actor->sprite;
        __Actor_SetScript(actor, gScript_924__0200de14);
        actor->__unk55 = 0;
        actor->waveCounter = 0;
        actor->linkedActor = src;
        if (sprite != NULL) {
            __Sprite_SetAnim(sprite, 2);
            sprite->flags = 0;
            sprite->oam.priority = 1;
        }
    }

    actor = API_CreateActor(0x1a, src->pos.x, src->pos.y, src->pos.z);
    if (actor != NULL) {
        actor->floorPos = src->floorPos;
        sprite = actor->sprite;
        __Actor_SetScript(actor, gScript_924__0200de14);
        actor->__unk55 = 0;
        actor->waveCounter = 0;
        actor->linkedActor = src;
        actor->flags = 2;
        if (sprite != NULL) {
            __Sprite_SetAnim(sprite, 1);
            sprite->flags = 0;
        }
    }

    __PlaySound(0x82);
}
