typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    s32 shapeNo;
    s32 actorNo;
    s32 x;
    s32 y;
    s32 z;
    s32 callback;
} MoveCmd934;

struct Actor {
    u8 pad00[0x23];
    u8 flags;
};

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(s32 frames);
extern void __PlaySound(s32 soundNo);
extern void __SetFlag(s32 flag);
extern void __Func_809228c(s32 actorNo, s32 x, s32 z);
extern void __Func_8010704(s32 sourceX, s32 sourceZ, s32 width, s32 height,
                           s32 destinationX, s32 destinationZ);
extern void __MapActor_SetAnim(s32 actorNo, s32 animationNo);
extern void __MapActor_SetSpeed(s32 actorNo, s32 speed, s32 acceleration);
extern struct Actor *__MapActor_GetActor(s32 actorNo);

extern s32 OvlFunc_934_2008758(MoveCmd934 *work);
extern void OvlFunc_934_20088ec(MoveCmd934 cmd);
extern void OvlFunc_934_2008528(s32 bufferNo, s32 x, s32 z, s32 width,
                                s32 height, s32 attribute);

void OvlFunc_934_20095cc(void)
{
    MoveCmd934 work;
    struct Actor *actor;
    u8 flag;
    s32 attribute;

    __CutsceneStart();
    if (OvlFunc_934_2008758(&work) != 0) {
        __asm__ volatile (
            "mov r2, sp\n\t"
            "add r3, sp, #24\n\t"
            "ldmia r3!, {r0, r1}\n\t"
            "stmia r2!, {r0, r1}\n\t"
            "ldr r3, [%0, #12]\n\t"
            "ldr r2, [%0, #8]\n\t"
            "ldr r0, [%0, #0]\n\t"
            "ldr r1, [%0, #4]\n\t"
            "bl OvlFunc_934_20088ec"
            : : "r"(&work) : "r0", "r1", "r2", "r3", "lr", "memory");
        __MapActor_SetAnim(0xB, 3);
        {
            register s32 speed __asm__("r1") = 0x80;
            register s32 accel __asm__("r2") = 0x80;
            register s32 id __asm__("r0");
            __asm__ volatile ("" : "+r"(speed), "+r"(accel));
            id = 0xB;
            __asm__ volatile ("" : "+r"(id) : "r"(speed), "r"(accel));
            speed <<= 7;
            accel <<= 8;
            __MapActor_SetSpeed(id, speed, accel);
        }
        __Func_809228c(0xB, 0, -0x10);
        __CutsceneWait(0x2D);
        __PlaySound(0xF0);
        __MapActor_SetAnim(0xB, 8);
        actor = __MapActor_GetActor(0xB);
        flag = 2;
        *((u8 *)actor + 0x23) = flag;
        attribute = 0;
        OvlFunc_934_2008528(0, 0xD, (work.z >> 20) - 1, 4, flag, attribute);
        if ((work.z >> 20) == 0x14) {
            __SetFlag(0x205);
        } else {
            __SetFlag(0x204);
            __Func_8010704(0xE, 0x11, 2, 1, 0xE, 0x10);
            __Func_8010704(0xE, 0xD, 1, 1, 0xE, 0xF);
        }
    }
    __CutsceneEnd();
}
