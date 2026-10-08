void OvlFunc_927_2008e18(unsigned int arg0)
{
    extern int __cos(int);
    extern int __sin(int);
    extern void OvlFunc_927_2008ae8(int, int, int, int, int, int, int, int);
    struct Actor *actor;
    int buf[10];
    vec3_t v;
    unsigned int i;

    actor = (struct Actor *)__MapActor_GetActor(arg0);
    __PlaySound(0xbc);
    buf[0] = 1;
    for (i = 0; i <= 0x10; i++) {
        v.x = __cos(i << 12);
        v.y = 0;
        v.z = __sin(i << 12);
        v.x += v.x / 3;
        OvlFunc_927_2008ae8(actor->pos.x, 0x100000, actor->pos.z,
                            v.x, v.y + 0x1999, v.z, 0x20000, (int)buf);
    }
}
