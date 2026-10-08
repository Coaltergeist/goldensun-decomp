extern int _divsi3_RAM(int, int);

void OvlFunc_969_20083a0(struct Actor *actor)
{
    actor->pos.x += actor->bounce;
    actor->pos.y += actor->gravity;
    actor->pos.z += actor->__unk4C;
    actor->bounce -= _divsi3_RAM(actor->bounce, 0x16);
    actor->__unk4C -= _divsi3_RAM(actor->__unk4C, 0x14);
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}
