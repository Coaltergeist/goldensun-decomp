extern const u8 L40c0[] __asm__(".Lm955_40c0");
extern void __Actor_SetAnim(struct Actor *, int);
extern void *__galloc_ewram(int, int);
extern void __Camera_SetTarget(void *, struct Actor *);
extern void __Actor_WaitMovement(struct Actor *);

void OvlFunc_955_20084c0(int actorId, int b, int c)
{
    struct Actor *leaderActor;
    struct Actor *actor;
    int leaderId;
    int angle;
    int cond;
    int deltaX;
    int deltaZ;

    leaderId = *(int *)((int)&gState + (0xfa << 1));
    leaderActor = __MapActor_GetActor(leaderId);
    actor = __MapActor_GetActor(actorId);

    angle = (leaderActor->facing + 0x1000) & 0xe000;

    cond = (actor->pos.x >> 20) != (b / 2);
    b <<= 19;
    c <<= 19;
    if (cond) {
        deltaX = (b - actor->pos.x) / 2;
        deltaZ = 0;
    } else {
        deltaX = 0;
        deltaZ = (c - actor->pos.z) / 2;
    }

    API_CutsceneStart();
    API_MapActor_SetAnim(leaderId, 8);
    API_CutsceneWait(6);

    actor->speed = 0x8000;
    actor->accel = 0x3333;
    __Actor_SetAnim(actor, L40c0[angle / 0x4000]);
    API_Actor_TravelTo(actor, b, 0, c);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(leaderId, 2);

    __Camera_SetTarget(*(void **)((u8 *)__galloc_ewram(0x1b, 0xccc) + 0x1e0), actor);
    API_MapActor_SetSpeed(leaderId, 0x8000, 0x3333);
    __Actor_SetAnim(leaderActor, 2);
    API_Actor_TravelTo(leaderActor, leaderActor->pos.x + deltaX, 0, leaderActor->pos.z + deltaZ);
    API_PlaySound(0xef);
    __Actor_WaitMovement(leaderActor);
    __Actor_SetAnim(leaderActor, 1);
    __Actor_WaitMovement(actor);
    API_PlaySound(0x120);
    API_PlaySound(0xd5);
    __Actor_SetAnim(actor, 1);
    API_CutsceneWait(15);
    API_CutsceneEnd();
}
