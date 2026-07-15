typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(u32 actorNo);
extern void __MapActor_SetSpeed(u32 actorNo, s32 x, s32 y);
extern void __Actor_TravelTo(u8 *actor, s32 x, s32 y, s32 z);
extern void __MapActor_WaitMovement(u32 actorNo);
extern void __PlaySound(u32 soundNo);
extern void OvlFunc_968_2008b08(u32 actorNo);
extern void __CutsceneWait(u32 frames);

void OvlFunc_968_200a3d4(u32 actorId)
{
    u8 *other;
    u8 *actor;
    s32 best;
    s32 candidate;
    u32 i;
    u32 idx;

    best = (s32)0xffb00000;
    other = 0;
    for (i = 0; i <= 5; i++) {
        idx = i + 8;
        if (idx != actorId) {
            actor = __MapActor_GetActor(idx);
            other = __MapActor_GetActor(actorId);
            if ((*(s32 *)(actor + 8) >> 20) == (*(s32 *)(other + 8) >> 20)) {
                if ((*(s32 *)(actor + 0x10) >> 20) == (*(s32 *)(other + 0x10) >> 20)) {
                    candidate = *(s32 *)(actor + 0xc) + 0x100000;
                    if (best <= candidate) {
                        *(u16 *)(other + 0x64) = idx;
                        best = candidate;
                    }
                }
            }
        }
    }
    __MapActor_SetSpeed(actorId, 0x40000, 0x20000);
    __Actor_TravelTo(other, *(s32 *)(other + 8), best, *(s32 *)(other + 0x10));
    __MapActor_WaitMovement(actorId);
    __PlaySound(0xbc);
    OvlFunc_968_2008b08(actorId);
    __CutsceneWait(0x1e);
}
