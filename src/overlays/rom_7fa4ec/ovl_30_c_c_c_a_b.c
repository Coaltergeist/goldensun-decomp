typedef struct MapActor {
    unsigned char padding[0xc];
    int y;
} MapActor;

extern MapActor *__MapActor_GetActor(int actor_id);
extern int actor_y_0 asm(".L180c");
extern int actor_y_1 asm(".L1810");
extern int actor_y_3 asm("gOvl_02009814");
extern int actor_y_2 asm(".L1818");

int OvlFunc_970_20083c0(void)
{
    actor_y_0 = __MapActor_GetActor(0)->y;
    return 0;
}

int OvlFunc_970_20083dc(void)
{
    actor_y_1 = __MapActor_GetActor(1)->y;
    return 0;
}

int OvlFunc_970_20083f8(void)
{
    actor_y_3 = __MapActor_GetActor(3)->y;
    return 0;
}

int OvlFunc_970_2008414(void)
{
    actor_y_2 = __MapActor_GetActor(2)->y;
    return 0;
}
