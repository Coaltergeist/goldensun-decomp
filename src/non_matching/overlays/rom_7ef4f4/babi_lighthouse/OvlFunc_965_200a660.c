extern int __Func_8011f54(int);

struct Actor *OvlFunc_965_200a660(struct Actor *actor)
{
    int stk[3];
    unsigned int t;
    int x;
    int z;

    t = L2fd4[actor->facing >> 12];
    x = actor->pos.x;
    z = actor->pos.z;
    stk[0] = x + (t & 0xffff0000);
    stk[2] = z + (t << 16);
    stk[1] = __Func_8011f54(actor->layer);
    return OvlFunc_965_200806c(stk, actor);
}
