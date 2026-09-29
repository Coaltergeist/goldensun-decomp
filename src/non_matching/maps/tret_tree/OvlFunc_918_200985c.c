extern int _divsi3_RAM();

void OvlFunc_918_200985c(struct Actor *actor) {
    int bounce = actor->bounce;
    int unk4C;

    actor->pos.x += bounce;
    actor->pos.y += actor->gravity;
    unk4C = actor->__unk4C;
    actor->pos.z += unk4C;
    actor->bounce = bounce - _divsi3_RAM(bounce, 0x12);
    actor->__unk4C = unk4C - unk4C / 16;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}
