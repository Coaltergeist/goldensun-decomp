typedef unsigned char u8;
typedef short s16;

extern u8 DoorTiles_6064[] asm(".L6064");
extern int __GetFlag(int flag_id);
extern void __SetFlag(int flag_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int frames);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __CopyMapTiles(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void __PlaySound(int sound_id);
extern void __Func_8010560(u8 *tiles, int width, int height);

void OvlFunc_924_2009c9c(void)
{
    u8 *target;
    int x;
    s16 y;
    register int flag_id asm("r0");

    flag_id = 0x256;
    if (__GetFlag(flag_id) != 0)
        return;

    x = *(s16 *)(__MapActor_GetActor(0) + 0xa);
    {
        u8 *actor2 = __MapActor_GetActor(0);
        x -= 0xa4;
        y = *(s16 *)(actor2 + 0x12);
    }

    if ((unsigned int)x > 7)
        return;
    if (y < 0x174)
        return;
    if (y >= 0x17c)
        return;

    __CutsceneStart();
    flag_id = 0x256;
    __SetFlag(flag_id);
    __CutsceneWait(5);

    *(int *)(__MapActor_GetActor(0) + 0xc) += 0xfffe0000;

    target = __MapActor_GetActor(0);
    *(int *)(target + 0x3c) = *(int *)(__MapActor_GetActor(0) + 0xc);

    __CopyMapTiles(6, 0x1d, 10, 0x17, 1, 1);
    __PlaySound(0xd9);
    __Func_8010560(DoorTiles_6064, 10, 0x12);
    __CutsceneEnd();
}
