typedef unsigned char u8;

typedef struct {
    int x;
    int y;
    int z;
} Vec3;

extern Vec3 **iwram_3001e70;
extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern void __Func_8093040(int, int, int);
extern u8 *__MapActor_GetActor(int);
extern void __Func_800fe9c(void);
extern void __Func_801776c(int, int);
extern void __Func_80921c4(int, int, int);
extern void __CutsceneEnd(void);

static __inline__ void SetActorSpeed(int actor, int horizontal, int vertical)
{
    __MapActor_SetSpeed(actor, horizontal << 9, vertical << 8);
}

static __inline__ void SetActorPosition(int actor, int x)
{
    __Func_80921c4(actor, x, 0x2e5);
}

void OvlFunc_883_20090d8(void)
{
    Vec3 **positionSlot;
    Vec3 *saved;
    Vec3 position;
    u8 *actor;
    int i;

    if (__GetFlag(0x808) != 0)
        return;

    positionSlot = iwram_3001e70;
    __CutsceneStart();
    SetActorSpeed(0, 0x80, 0x80);
    __MapActor_SetAnim(0, 1);
    __CutsceneWait(2);
    __MessageID(0xf4d);
    __Func_8093040(0xf, 0, 2);
    __Func_8093040(0x10, 0, 2);

    actor = __MapActor_GetActor(0);
    position.x = *(int *)(actor + 8);
    position.y = *(int *)(actor + 0xc);
    position.z = *(int *)(actor + 0x10);
    saved = *positionSlot;
    *positionSlot = &position;

    for (i = 0; i != 0x28; i++) {
        position.z += 0x20000;
        __CutsceneWait(1);
        __Func_800fe9c();
    }
    __CutsceneWait(0x3c);
    __Func_801776c(0xf4f, 1);
    __CutsceneWait(6);
    for (i = 0; i != 0x28; i++) {
        position.z -= 0x20000;
        __CutsceneWait(1);
        __Func_800fe9c();
    }

    *positionSlot = saved;
    __CutsceneWait(0x3c);
    SetActorPosition(0, 0x46);
    __CutsceneEnd();
}
