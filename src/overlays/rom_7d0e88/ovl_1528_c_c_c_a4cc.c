typedef signed int s32;
typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound_id);
extern int __GetFlag(int flag_id);
extern void __SetFlag(int flag_id);
extern int OvlFunc_947_2008528(int mode, int x, int y, int direction,
                              int enabled, int variant);

/* 十番役者を消し、所定位置なら終了フラグを立てる。 */
void OvlFunc_947_200a4cc(void)
{
    u8 *actor;
    int flag;
    register int flag_id asm("r0");

    actor = __MapActor_GetActor(10);
    __CutsceneStart();
    OvlFunc_947_2008528(2, *(s32 *)(actor + 8) >> 20,
                        *(s32 *)(actor + 0x10) >> 20, 1, 1, 0xff);
    if (*(s32 *)(actor + 8) >> 20 == 0x10) {
        flag_id = 0x81;
        flag_id <<= 2;
        flag = __GetFlag(flag_id);
        if (flag == 0) {
            __CutsceneWait(10);
            __PlaySound(0x9f);
            actor[0x55] = flag;
            *(s32 *)(actor + 0x14) = -0x20000;
            *(s32 *)(actor + 0x0c) = -0x20000;
            flag_id = 0x81;
            flag_id <<= 2;
            __SetFlag(flag_id);
        }
    }
    __CutsceneEnd();
}
