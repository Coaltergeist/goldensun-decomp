typedef unsigned char u8;
typedef struct SceneState { int a, actorId, x, d, z, f; } SceneState;
typedef struct CutsceneFrame { int outgoing[2]; SceneState state; } CutsceneFrame;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int OvlFunc_913_2008474(SceneState *);
extern void OvlFunc_913_2008608_abi(void) asm("OvlFunc_913_2008608");
extern void __MapActor_SetAnim(int, int);
extern void __Func_809228c(int, int, int);
extern void __CutsceneWait(int);
extern void __PlaySound(int);
extern u8 *__MapActor_GetActor(int);
extern void __Func_8010704_abi(void) asm("__Func_8010704");
extern void OvlFunc_913_2008244_abi(void) asm("OvlFunc_913_2008244");
extern void __SetFlag(int);
extern void __Actor_SetSpriteFlags(u8 *, int);

void OvlFunc_913_2008a68(void)
{
    CutsceneFrame frame;
    register SceneState *state asm("r5");
    register int actorId asm("r3");

    __CutsceneStart();
    state = &frame.state;
    if (OvlFunc_913_2008474(state)) {
        asm volatile("mov r3, sp\n\tadd r2, sp, #24\n\tldmia r2!, {r0, r1}\n\t"
                     "stmia r3!, {r0, r1}\n\tldr r3, [%0, #12]\n\tldr r0, [%0]\n\t"
                     "ldr r1, [%0, #4]\n\tldr r2, [%0, #8]"
                     : : "r" (state) : "r0", "r1", "r2", "r3", "memory");
        OvlFunc_913_2008608_abi();
        asm volatile("ldr %0, [%1, #4]" : "=r" (actorId) : "r" (state));
        if (actorId == 0xa && (state->x >> 20) == 0x14) {
            u8 *actor;
            __MapActor_SetAnim(0xa, 3);
            __Func_809228c(0xa, -0x12, 6);
            __CutsceneWait(0x1e);
            __PlaySound(0xf0);
            __MapActor_SetAnim(0xa, 8);
            actor = __MapActor_GetActor(0xa);
            asm volatile("mov r3, #2\n\tadd %0, #0x23\n\tstrb r3, [%0]"
                         : "+r" (actor) : : "r3", "memory");
            asm volatile("mov r2, #0x11\n\tmov r3, #0x13\n\tstr r3, [sp]\n\t"
                         "str r2, [sp, #4]\n\tmov r0, #0\n\tmov r1, #0x11\n\t"
                         "mov r2, #2\n\tmov r3, #4"
                         : : : "r0", "r1", "r2", "r3", "memory");
            __Func_8010704_abi();
            asm volatile("mov r3, #4\n\tstr r3, [sp]\n\tmov r1, #0x14\n\t"
                         "mov r2, #0x11\n\tmov r3, #1\n\tmov r5, #0\n\t"
                         "mov r0, #2\n\tstr r5, [sp, #4]"
                         : : : "r0", "r1", "r2", "r3", "r5", "memory");
            OvlFunc_913_2008244_abi();
            __SetFlag(0x200);
            actor = __MapActor_GetActor(0xa);
            __Actor_SetSpriteFlags(actor, 0);
        }
    }
    __CutsceneEnd();
}
