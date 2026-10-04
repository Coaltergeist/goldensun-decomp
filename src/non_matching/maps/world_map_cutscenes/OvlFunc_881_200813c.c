void OvlFunc_881_200813c(struct Actor *actor)
{
    extern unsigned int iwram_3001e40;
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Actor_SetAnim(void *, int);
    int scale;
    struct Actor *spawned;

    if (iwram_3001e40 & 4) {
        scale = 0x14ccc;
    } else {
        scale = 0x10000;
    }
    actor->scale.x = scale;
    actor->scale.y = scale;

    if (iwram_3001e40 & 2) {
        spawned = __CreateActor(0x11d, actor->pos.x, actor->pos.y, actor->pos.z);
        __PlaySound(0xf6);
        if (spawned != NULL) {
            spawned->__unk55 = 0;
            spawned->sprite->oam.priority = 1;
            __Actor_SetSpriteFlags(spawned, 0);
            __Actor_SetAnim(spawned, 1);
            spawned->waveCounter = 0;
            spawned->update = (actorfun_t *)OvlFunc_881_200811c;
        }
    }
}
