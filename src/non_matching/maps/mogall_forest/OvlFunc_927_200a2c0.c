/*
 * Remaining diff: 1-instruction sched2 tie-break swap before OvlFunc_927_2008d90
 * (`adds r1, r5, #0` scheduled before `subs r2, #16; lsls r3, r3, #12` at +0x19a).
 * Pre-sched2 (.18.greg) emits exact order (`subs r2, #16; lsls r3, r3, #12; adds r1, r5, #0`),
 * but in sched2 `r5` has an anti-dependence on `*epilogue_insns` (5 forward deps vs 4),
 * causing `rank_for_schedule` to pop `adds r1, r5, #0` first without an asm barrier.
 */
extern unsigned char Event46[] __asm__("0x46");
extern void __Func_8091f90(int, int);
extern void __StartMapBattle(int, int);
struct CS927_StateView {
    unsigned char pad[0x22b];
    unsigned char encounter;
};
extern struct CS927_StateView CS927_State __asm__("gState");

void OvlFunc_927_200a2c0(void)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(18);
    vec3_t velocity;
    vec3_t *vector;
    unsigned int i;
    int zero;

    API_CutsceneStart();
    __Func_8092950(18, 15);
    __Actor_SetSpriteFlags(__MapActor_GetActor(18), 0);
    API_MapActor_SetPos(18, 0x880000, 0x1680000);
    API_Func_80933d4(0x8000, 0x1000);
    API_Func_80933f8(0x880000, -1, 0x1880000, 1);
    API_Func_8093530();
    API_CutsceneWait(60);
    API_Func_8012330(0x50000, 0x50000, 0x10000);
    OvlFunc_927_2008e18(18);
    API_Func_809259c(0, 2);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_Func_8092adc(0, 0xc000, 20);
    API_CutsceneWait(40);
    API_Func_8012330(0x50000, 0x50000, 0x10000);
    OvlFunc_927_2008e18(18);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_CutsceneWait(40);
    OvlFunc_927_2008e18(18);
    actor->scale.x = 0x13333;
    actor->scale.y = 0x13333;
    __Func_8092950(18, 5);
    OvlFunc_927_2008d90(18, 0x88, 0x188, 0xf0000);
    API_CutsceneWait(15);
    API_Func_8012330(0x50000, 0x50000, 0x10000);
    i = 0;
    vector = &velocity;
    zero = i;
    for (; i <= 16; ++i) {
        int angle = i << 12;
        vector->x = __cos(angle);
        vector->y = zero;
        vector->z = __sin(angle);
        vector->x += vector->x / 2;
        OvlFunc_927_2008ae8(actor->pos.x, 0, actor->pos.z,
                            vector->x, vector->y, vector->z, 1, zero);
    }
    API_CutsceneWait(30);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_PlaySound(0x94);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(20);
    OvlFunc_927_2008d90(18,
                        ((struct Actor *)__MapActor_GetActor(0))->pos.x >> 16,
                        (((struct Actor *)__MapActor_GetActor(0))->pos.z >> 16) - 16,
                        0x80000);
    API_CutsceneWait(10);
    CS927_State.encounter = 3;
    __Func_8091f90((int)Event46, 15);
    __StartMapBattle(0x35, 1);
    API_CutsceneEnd();
}
