typedef unsigned char u8;

extern u8 DoorTiles_608e[] asm(".L608e");
extern int __GetFlag(int flag_id);
extern void __ClearFlag(int flag_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int frames);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __CopyMapTiles(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void __PlaySound(int sound_id);
extern void __Func_8010560(u8 *tiles, int width, int height);

/* 別区画の扉にも同じ開閉処理を行う。 */
void OvlFunc_924_2009d3c(void)
{
    u8 *actor;
    register int flag_id asm("r0");

    flag_id = 0x256;
    if (__GetFlag(flag_id) != 0) {
        __CutsceneStart();
        flag_id = 0x256;
        __ClearFlag(flag_id);
        *(int *)(__MapActor_GetActor(0) + 0x0c) += 0x20000;
        actor = __MapActor_GetActor(0);
        *(int *)(actor + 0x3c) =
            *(int *)(__MapActor_GetActor(0) + 0x0c);
        __CutsceneWait(5);
        __CopyMapTiles(8, 0x1d, 0x0a, 0x17, 1, 1);
        __PlaySound(0xd9);
        __Func_8010560(DoorTiles_608e, 0x0a, 0x12);
        __CutsceneEnd();
    }
}
