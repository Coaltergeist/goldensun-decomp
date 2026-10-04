extern void OvlFunc_964_2009068(struct Actor *);
extern void OvlFunc_964_2008ae8(int, int, int, int, int, int, int, void *);
extern int __cos(int);
extern int __sin(int);
extern int _divsi3_RAM(int, int);

void OvlFunc_964_20091e0(unsigned int actorId)
{
    int vel[3];
    int data[10];
    struct Actor *actor;
    unsigned int i;

    actor = (struct Actor *)__MapActor_GetActor(actorId);
    data[0] = 1;
    data[1] = 7;
    data[9] = (int)OvlFunc_964_2009068;

    for (i = 0; i <= 16; i += 2) {
        int angle = i << 12;
        int c;
        int s;

        vel[1] = 0;
        vel[0] = __cos(angle);
        s = __sin(angle);
        c = vel[0];
        vel[2] = s;
        vel[0] = c + _divsi3_RAM(c, 3);

        OvlFunc_964_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z, vel[0], vel[1], s, 0x1030001, data);
    }
}
