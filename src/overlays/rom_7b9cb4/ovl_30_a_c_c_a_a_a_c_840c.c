typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int id);
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int frames);

void OvlFunc_932_200840c(void)
{
    u8 *actor = __MapActor_GetActor(10);

    if (actor != 0) {
        __Func_8010704(0x18, 0x1b, 2, 1, 0x18, 0x1a);
        if (*(int *)(actor + 8) >> 20 == 0x19)
            __Func_8010704(0, 0, 1, 1, 0x19, 0x1a);
        else
            __Func_8010704(0, 0, 1, 1, 0x18, 0x1a);
        __Actor_SetSpriteFlags(actor, 0);
        actor[0x55] = 0;
        __Func_800fe9c();
        __WaitFrames(1);
    }
}
