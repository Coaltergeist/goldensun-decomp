/*
 * Remaining diff: 1-instruction sched2 tie-break swap before OvlFunc_927_2008d90
 * (`adds r1, r5, #0` scheduled 1 cycle before `lsls r3, r3, #11` at +0x96).
 * Pre-sched2 (.18.greg) emits exact order (`lsls r3, r3, #11; adds r1, r5, #0`),
 * but in sched2 `r5` has an anti-dependence on `*epilogue_insns` (6 forward deps vs 5),
 * causing `rank_for_schedule` to pop `adds r1, r5, #0` first without an asm barrier.
 */
struct CS927_StateView {
    unsigned char pad[0x22b];
    unsigned char encounter;
};
extern struct CS927_StateView CS927_State __asm__("gState");

void OvlFunc_927_2009d04(void)
{
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(0xf);
    __CutsceneStart();
    OvlFunc_927_2008ea8(0xf, 0);
    OvlFunc_927_2008d90(0xf, 0x1d8, 0x68, 0x80000);
    __CutsceneWait(10);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x80000,
                        0, 0, 0, 1, 0);
    __SetCameraTarget(0xf, 1);
    __MapActor_TurnToFaceActor(0xf, 0, 0);
    __CutsceneWait(0x1e);
    __Func_809259c(0xf, 2);
    API_MapActor_Emote(0xf, 0x103, 0);
    __PlaySound(0x93);
    __CutsceneWait(0x3c);
    OvlFunc_927_2008d90(0xf,
                        ((struct Actor *)__MapActor_GetActor(0))->pos.x >> 16,
                        ((struct Actor *)__MapActor_GetActor(0))->pos.z >> 16,
                        0x60000);
    __CutsceneWait(10);
    __SetFlag(0x307);
    CS927_State.encounter = 3;
    __StartMapBattle(0x35, 0);
    __CutsceneEnd();
}
