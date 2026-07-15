typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct {
    s32 shapeNo;
    s32 actorNo;
    s32 destinationX;
    s32 destinationY;
    s32 destinationZ;
    void (*callback)(void);
} MoveCommand;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(s32 frames);
extern s32 OvlFunc_915_2008474(MoveCommand *work);
extern void OvlFunc_915_2008608(MoveCommand command);
extern void __MapActor_SetAnim(s32 actorNo, s32 animNo);
extern void __Func_809228c(s32 actorNo, s32 x, s32 z);
extern void __PlaySound(s32 soundNo);
extern u8 *__MapActor_GetActor(s32 actorNo);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);
extern void OvlFunc_915_2008244(s32, s32, s32, s32, s32, s32);
extern void __SetFlag(s32 flag);
extern void __Actor_SetSpriteFlags(u8 *actor, s32 flags);

void OvlFunc_915_20089f8(void)
{
    MoveCommand command;

    __CutsceneStart();
    if (OvlFunc_915_2008474(&command) != 0) {
        OvlFunc_915_2008608(command);
        if (command.actorNo == 10 && (command.destinationX >> 20) == 12) {
            __MapActor_SetAnim(10, 3);
            __Func_809228c(10, -0x12, 6);
            __CutsceneWait(0x1e);
            __PlaySound(0xf0);
            __MapActor_SetAnim(10, 8);
            __MapActor_GetActor(10)[0x23] = 2;
            asm volatile(
                "mov r2, #0x10\n\t"
                "mov r3, #0xb\n\t"
                "str r3, [sp]\n\t"
                "str r2, [sp, #4]\n\t"
                "mov r0, #0x20\n\t"
                "mov r1, #0x14\n\t"
                "mov r2, #2\n\t"
                "mov r3, #4\n\t"
                "bl __Func_8010704"
                : : : "r0", "r1", "r2", "r3", "cc", "memory");
            asm volatile(
                "mov r3, #4\n\t"
                "str r3, [sp]\n\t"
                "mov r1, #0xc\n\t"
                "mov r2, #0x10\n\t"
                "mov r3, #1\n\t"
                "mov r5, #0\n\t"
                "mov r0, #2\n\t"
                "str r5, [sp, #4]\n\t"
                "bl OvlFunc_915_2008244"
                : : : "r0", "r1", "r2", "r3", "r5", "cc", "memory");
            __SetFlag(0x201);
            __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
        }
    }
    __CutsceneEnd();
}
