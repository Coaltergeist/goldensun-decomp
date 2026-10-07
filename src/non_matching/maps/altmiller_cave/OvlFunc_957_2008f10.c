extern void __vec3_translate(int, int, int *);

void OvlFunc_957_2008f10(int a, int b, int c)
{
    struct Actor *actor;
    int x = 0x1f80000;
    int z = 0x180000;
    int v[3];

    actor = (struct Actor *)__MapActor_GetActor(a);
    v[0] = x;
    v[2] = z;
    __vec3_translate(b, c, v);
    actor->pos.x = v[0];
    actor->pos.y = v[2];
    actor->pos.z = 0x900000;
}