extern int _divsi3_RAM(int, int);
extern int __cos(int);
extern int __sin(int);
extern void OvlFunc_946_2008da4(void *);
extern void OvlFunc_946_2008ae8(int, int, int, int, int, int, int, void *);

void OvlFunc_946_2008e00(unsigned int actorId)
{
    int vec[3];
    int buf[10];
    struct Actor *actor;
    unsigned int i;
    int angle;

    actor = (struct Actor *)__MapActor_GetActor(actorId);
    buf[9] = (int)OvlFunc_946_2008da4;
    for (i = 0; i <= 16; i += 2) {
        angle = i << 12;
        vec[0] = __cos(angle);
        vec[1] = 0;
        vec[2] = __sin(angle);
        vec[0] += _divsi3_RAM(vec[0], 3);
        OvlFunc_946_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z, vec[0], vec[1], vec[2], 0x1000001, buf);
    }
}
