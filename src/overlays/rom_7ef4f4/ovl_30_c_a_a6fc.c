extern unsigned char *__MapActor_GetActor(int actor_id);
extern unsigned char *OvlFunc_965_200a660(void);
extern void OvlFunc_965_20080c4(void);

void OvlFunc_965_200a6fc(void)
{
    unsigned char *player = __MapActor_GetActor(0);
    unsigned char *object = OvlFunc_965_200a660();
    register int object_y asm("r3");
    register int player_y asm("r0");
    register int delta asm("r2");

    if (object == 0)
        return;
    object_y = *(int *)(object + 0xc);
    player_y = *(int *)(player + 0xc);
    asm volatile("" : "+r"(object_y), "+r"(player_y));
    delta = object_y - player_y;
    asm volatile("" : "+r"(object_y), "+r"(player_y), "+r"(delta));
    if (delta >= 0) {
        object_y = 0x80;
        asm volatile("" : "+r"(object_y), "+r"(delta));
        object_y <<= 12;
        if (delta < object_y)
            goto nearby;
        return;
    }
    delta = 0x80;
    object_y = player_y - object_y;
    asm volatile("" : "+r"(object_y), "+r"(delta));
    delta <<= 12;
    if (object_y >= delta)
        return;
nearby:
    OvlFunc_965_20080c4();
}
