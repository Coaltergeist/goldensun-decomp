extern unsigned char *iwram_3001f30;
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Func_8010704(int sourceX, int sourceY, int width, int height,
                            int destinationX, int destinationY);
extern void __SetFlag(int flag);

void OvlFunc_957_2008d90(void)
{
    unsigned char *object = iwram_3001f30;
    unsigned char *actor;
    int field;
    int destinationX;
    int destinationY;

    actor = __MapActor_GetActor(11);
    field = (int)(object[0x35] << 24) >> 24;
    if (field == 0) {
        destinationX = 0x49;
        destinationY = 0x11;
        __Func_8010704(0x4c, 0x10, 1, 1, destinationX, destinationY);
        if (actor != 0) {
            actor[0x55] = 2;
            actor[0x23] = field;
        }
        __SetFlag(0x211);
    }
}
