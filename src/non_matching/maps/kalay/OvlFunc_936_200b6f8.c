void OvlFunc_936_200b6f8(struct Actor *actor)
{
    extern void __DeleteActor(int);

    if (actor->waveCounter == 0) {
        __DeleteActor((int)actor);
    } else if (actor->waveCounter == 1) {
        actor->motion.x = 0;
        actor->motion.y = 0;
        actor->pos.x = 0;
        actor->pos.y = 0;
    } else {
        actor->scale.x += 0x800;
        actor->scale.y += 0x800;
    }

    actor->pos.x += actor->motion.x;
    actor->pos.y += actor->motion.y;
    actor->motion.x -= actor->motion.x / 256;
    actor->motion.y -= actor->motion.y / 16;
    actor->waveCounter--;
}
