extern int iwram_3001e40;
extern unsigned int __Random(void);
extern void OvlFunc_964_2008ae8(int, int, int, int, int, int, int, void *);

int OvlFunc_964_2008f4c(struct Actor *actor)
{
    int params[10];
    int x;
    int y;
    int z;

    if (iwram_3001e40 & 2) {
        __Actor_SetAnim(actor, 1);
    } else {
        __Actor_SetAnim(actor, 2);
    }

    if (iwram_3001e40 & 3) {
        return 0;
    }

    params[1] = 5;
    params[2] = 0x4ccc;
    params[3] = 0x4ccc;

    x = actor->pos.x + ((((__Random() * 7) >> 16) - 3) << 16);
    z = actor->pos.z + ((((__Random() * 7) >> 16) - 3) << 16);
    y = actor->pos.y + (0x80 << 13);

    OvlFunc_964_2008ae8(x, y, z, 0, 0, 0, 0x90001, params);

    return 0;
}
