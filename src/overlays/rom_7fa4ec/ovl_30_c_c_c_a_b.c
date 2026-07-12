typedef struct MapActor {
    unsigned char padding[0xc];
    int y;
} MapActor;

extern MapActor *__MapActor_GetActor(int actor_id);
extern int actor_y_0 asm(".L180c");
extern int actor_y_1 asm(".L1810");

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
