extern int _divsi3_RAM(int, int);

void OvlFunc_965_2008cf0(struct Actor *actor)
{
    int vx;
    int vz;

    vx = actor->bounce;
    actor->pos.x += vx;
    actor->pos.y += actor->gravity;
    vz = actor->__unk4C;
    actor->pos.z += vz;
    actor->bounce = vx - _divsi3_RAM(vx, 18);
    actor->__unk4C = vz - vz / 16;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += (u16)actor->waveCounter;
}
