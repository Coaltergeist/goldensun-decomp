extern int __cos(int);
extern int __sin(int);
extern void OvlFunc_968_200896c(void);
extern void OvlFunc_968_2008118(fx32, fx32, fx32, int, int, int, int, void *);
extern int _divsi3_RAM(int, int);

void OvlFunc_968_2008b08(int actorId)
{
    struct Actor *actor;
    int vec[3];
    int stack_buf[10];
    unsigned int i;
    int angle;
    int c;
    int s;

    actor = (struct Actor *)__MapActor_GetActor(actorId);

    stack_buf[0] = 1;
    stack_buf[1] = 7;
    stack_buf[9] = (int)OvlFunc_968_200896c;

    for (i = 0; i <= 0x10; i += 2) {
        angle = i << 12;
        c = __cos(angle);
        vec[1] = 0;
        vec[0] = c;
        s = __sin(angle);
        c = vec[0];
        vec[2] = s;
        c += _divsi3_RAM(c, 3);
        vec[0] = c;

        OvlFunc_968_2008118(
            actor->pos.x,
            actor->pos.y,
            actor->pos.z,
            c,
            vec[1],
            s,
            0x1030001,
            stack_buf
        );
    }
}
