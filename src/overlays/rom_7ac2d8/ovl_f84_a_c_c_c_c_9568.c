typedef unsigned char u8;

extern u8 DoorTiles_603a[] asm(".L603a");
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

/* 扉の地図片を開いた形へ写し、役者の高さを合わせる。 */
void OvlFunc_924_2009568(void)
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
        __CopyMapTiles(7, 2, 5, 0x0b, 1, 1);
        __PlaySound(0xd9);
        __Func_8010560(DoorTiles_603a, 9, 7);
        __CutsceneEnd();
    }
}
