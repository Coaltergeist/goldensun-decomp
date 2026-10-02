void OvlFunc_881_200c004(struct Actor *a)
{
    extern int __sin(int);
    struct Actor *linked;
    short n;
    int s;

    n = ++a->waveCounter;
    linked = a->linkedActor;
    if (n > 31) {
        API_DeleteActor((int)a);
        return;
    }
    s = __sin(n << 10);
    a->scale.x = s;
    a->scale.y = -s;
    a->pos.x = linked->pos.x;
    a->pos.y += 0x10000;
    a->pos.z = linked->pos.z - (0x10000 - s) * 5 + 0x100000;
}
