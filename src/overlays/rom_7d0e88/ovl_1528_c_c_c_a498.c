typedef signed int s32;
typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int OvlFunc_947_2008528(int mode, int x, int y, int direction,
                              int enabled, int variant);

/* 十番役者を今の座標で通常姿に戻す。 */
void OvlFunc_947_200a498(void)
{
    u8 *actor;

    actor = __MapActor_GetActor(10);
    __CutsceneStart();
    OvlFunc_947_2008528(2, *(s32 *)(actor + 8) >> 20,
                        *(s32 *)(actor + 0x10) >> 20, 1, 1, 0);
    __CutsceneEnd();
}
