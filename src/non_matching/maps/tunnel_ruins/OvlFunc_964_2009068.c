extern int _divsi3_RAM(int, int);
void OvlFunc_964_2009068(struct Actor *actor) {
    actor->pos.x += actor->bounce;
    actor->pos.y += actor->gravity;
    actor->pos.z += actor->__unk4C;
    actor->bounce -= _divsi3_RAM(actor->bounce, 18);
    actor->__unk4C -= actor->__unk4C / 16;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}
