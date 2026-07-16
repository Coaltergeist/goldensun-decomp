typedef unsigned char u8;

extern u8 gState[];
extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Actor_TravelTo(u8 *, int, int, int);
extern void __Actor_SetAnim(u8 *, int);
extern void __PlaySound(int);
extern void __Actor_WaitMovement(u8 *);

void OvlFunc_946_2009774(int actorId, int deltaX, int deltaZ)
{
    int offset;
    int xDelta;
    int zDelta;
    u8 *primary;
    u8 *actor;
    int x;
    int z;

    offset = 0xfa;
    offset <<= 1;
    primary = __MapActor_GetActor(*(int *)(gState + offset));
    actor = __MapActor_GetActor(actorId);
    __CutsceneStart();

    xDelta = deltaX << 16;
    x = ((*(int *)(primary + 8) + xDelta) & 0xfff00000) + 0x80000;
    zDelta = deltaZ << 16;
    z = ((*(int *)(primary + 0x10) + zDelta) & 0xfff00000) + 0x80000;
    *(int *)(primary + 0x30) = 0x10000;
    *(int *)(primary + 0x34) = 0x8000;
    __Actor_TravelTo(primary, x, *(int *)(primary + 0xc), z);
    __Actor_SetAnim(primary, 0x1b);

    x = ((*(int *)(actor + 8) + xDelta) & 0xfff00000) + 0x80000;
    z = ((*(int *)(actor + 0x10) + zDelta) & 0xfff00000) + 0x80000;
    *(int *)(actor + 0x30) = 0x10000;
    *(int *)(actor + 0x34) = 0x8000;
    __Actor_TravelTo(actor, x, *(int *)(actor + 0xc), z);
    if (deltaX < 0 || deltaZ < 0) {
        __Actor_SetAnim(actor, 4);
    } else {
        __Actor_SetAnim(actor, 3);
    }
    __PlaySound(0xe2);
    __Actor_WaitMovement(primary);
    __PlaySound(0x120);
    __CutsceneEnd();
}
