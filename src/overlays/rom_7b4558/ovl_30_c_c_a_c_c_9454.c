typedef unsigned char u8;

typedef struct SceneState {
    int a;
    int actorId;
    int x;
    int d;
    int z;
    int f;
} SceneState;

typedef struct CutsceneFrame {
    int outgoing[2];
    SceneState state;
} CutsceneFrame;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int OvlFunc_927_2008474(SceneState *);
extern void OvlFunc_927_2008608(int, int, int, int, int, int);
extern void OvlFunc_927_2008608_abi(void) asm("OvlFunc_927_2008608");
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_8010704_abi(void) asm("__Func_8010704");
extern void __SetFlag(int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_809228c(int, int, int);
extern void __CutsceneWait(int);
extern void __PlaySound(int);
extern u8 *__MapActor_GetActor(int);
extern void OvlFunc_927_2008244(int, int, int, int, int, int);
extern void OvlFunc_927_2008244_abi(void) asm("OvlFunc_927_2008244");

void OvlFunc_927_2009454(void)
{
    CutsceneFrame frame;
    register SceneState *state asm("r5");
    register int actorId asm("r3");

    __CutsceneStart();
    state = &frame.state;
    if (OvlFunc_927_2008474(state)) {
        asm volatile("mov r3, sp\n\tadd r2, sp, #24\n\t"
                     "ldmia r2!, {r0, r1}\n\tstmia r3!, {r0, r1}\n\t"
                     "ldr r3, [%0, #12]\n\tldr r0, [%0]\n\t"
                     "ldr r1, [%0, #4]\n\tldr r2, [%0, #8]"
                     : : "r" (state) : "r0", "r1", "r2", "r3", "memory");
        OvlFunc_927_2008608_abi();
        asm volatile("ldr %0, [%1, #4]" : "=r" (actorId) : "r" (state));
        if (actorId == 8 && (state->z >> 20) == 0x17) {
            asm volatile("mov r3, #0x23\n\tmov r2, #0x44\n\t"
                         "str r3, [sp]\n\tstr r2, [sp, #4]\n\t"
                         "mov r0, #0x23\n\tmov r1, #0x43\n\t"
                         "mov r2, #4\n\tmov r3, #1"
                         : : : "r0", "r1", "r2", "r3", "memory");
            __Func_8010704_abi();
        } else {
            asm volatile("ldr %0, [%1, #4]" : "=r" (actorId) : "r" (state));
            if (actorId == 0xa && (state->x >> 20) == 0x23) {
            u8 *actor;
            __SetFlag(0x311);
            __MapActor_SetAnim(0xa, 3);
            __Func_809228c(0xa, -0x10, 6);
            __CutsceneWait(0x1e);
            __MapActor_SetAnim(0xa, 8);
            __PlaySound(0xf0);
            actor = __MapActor_GetActor(0xa);
            actor[0x23] = 2;
            asm volatile("mov r2, #0x1e\n\tmov r3, #0x22\n\t"
                         "str r3, [sp]\n\tstr r2, [sp, #4]\n\t"
                         "mov r0, #0x2c\n\tmov r1, #0x1e\n\t"
                         "mov r2, #2\n\tmov r3, #4"
                         : : : "r0", "r1", "r2", "r3", "memory");
            __Func_8010704_abi();
            asm volatile("mov r3, #4\n\tmov r5, #0\n\t"
                         "str r3, [sp]\n\tmov r0, #2\n\t"
                         "mov r1, #0x23\n\tmov r2, #0x1e\n\t"
                         "mov r3, #1\n\tstr r5, [sp, #4]"
                         : : : "r0", "r1", "r2", "r3", "r5", "memory");
            OvlFunc_927_2008244_abi();
            }
        }
    }
    __CutsceneEnd();
}
