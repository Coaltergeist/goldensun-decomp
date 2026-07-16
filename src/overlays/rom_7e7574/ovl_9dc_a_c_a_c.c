extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);

void OvlFunc_959_2008b4c(void)
{
    int sourceX = 0xf;
    unsigned char *actor;

    __Func_8010704(0xf, 0x14, 1, 1, sourceX, 0x16);
    __Func_8010704(0x11, 0x17, 1, 3, sourceX, 0x17);

    actor = __MapActor_GetActor(0xc);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
        actor[0x55] = 0;
        actor[0x23] = 2;
    }
}
