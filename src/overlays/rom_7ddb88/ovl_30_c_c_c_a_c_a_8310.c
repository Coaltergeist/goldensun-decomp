typedef unsigned char u8;

typedef struct {
    int pad0;
    int pad4;
    int x;
    int y;
    int z;
    u8 pad14[0x1c];
    int speed;
    int field34;
} Actor;

typedef struct {
    u8 pad0[0x1f4];
    int mapActor;
} GameState;

extern GameState gState;
extern Actor *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __Actor_TravelTo(Actor *, int, int, int);
extern void __Actor_SetAnim(Actor *, int);
extern void __PlaySound(int);
extern void __Actor_WaitMovement(Actor *);
extern void __CutsceneEnd(void);

void OvlFunc_955_2008310(int actorId, int dx, int dz)
{
    Actor *first;
    Actor *second;
    int x;
    int z;

    first = __MapActor_GetActor(gState.mapActor);
    second = __MapActor_GetActor(actorId);
    __CutsceneStart();

    x = ((first->x + (dx << 16)) & 0xfff00000) + 0x80000;
    z = ((first->z + (dz << 16)) & 0xfff00000) + 0x80000;
    first->speed = 0x10000;
    first->field34 = 0x8000;
    __Actor_TravelTo(first, x, first->y, z);
    __Actor_SetAnim(first, 0x1b);

    x = ((second->x + (dx << 16)) & 0xfff00000) + 0x80000;
    z = ((second->z + (dz << 16)) & 0xfff00000) + 0x80000;
    second->speed = 0x10000;
    second->field34 = 0x8000;
    __Actor_TravelTo(second, x, second->y, z);

    if (dx < 0 || dz < 0)
        __Actor_SetAnim(second, 4);
    else
        __Actor_SetAnim(second, 3);

    __PlaySound(0xe2);
    __Actor_WaitMovement(first);
    __PlaySound(0x120);
    __Actor_SetAnim(second, 2);
    __CutsceneEnd();
}
