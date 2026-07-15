typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct MapActor {
    u8 pad0[6];
    u16 direction;
    s32 x;
    u8 padC[4];
    s32 y;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_Emote(int actorId, int emote, int duration);
extern void __MapActor_SetSpeed(int actorId, int x, int y);
extern void __MapActor_Jump(int actorId, int height, int duration);
extern void __Func_809228c(int actorId, int x, int z);
extern void __MapActor_WaitMovement(int actorId);
extern void __Func_8092adc(int actorId, int value, int duration);
extern void OvlFunc_965_200a820(void);

void OvlFunc_965_2009030(void)
{
    register MapActor *actor asm("r5") = __MapActor_GetActor(0);
    __CutsceneStart();
    if ((actor->x >> 20 == 6 || actor->x >> 20 == 0x12) && actor->y >> 20 == 0x14) {
        asm volatile(
            "mov r3, #0x80\n\t"
            "lsl r3, #24\n\t"
            "mov r1, #0x80\n\t"
            "str r3, [%0, #0x38]\n\t"
            "str r3, [%0, #0x40]\n\t"
            "mov r0, #0\n\t"
            "lsl r1, #1\n\t"
            "mov r2, #0x14\n\t"
            "bl __MapActor_Emote"
            : : "r"(actor) : "r0", "r1", "r2", "r3", "memory", "cc");
        asm volatile(
            "mov r1, #0x80\n\t"
            "mov r2, #0x80\n\t"
            "mov r0, #0\n\t"
            "lsl r1, #10\n\t"
            "lsl r2, #9\n\t"
            "bl __MapActor_SetSpeed"
            : : : "r0", "r1", "r2", "r3", "memory", "cc");
        __MapActor_Jump(0, 4, 0);
        asm volatile(
            "ldr r1, =0x4fff\n\t"
            "ldrh r0, [%0, #6]\n\t"
            "add r3, r0, r1\n\t"
            "ldr r1, =0x1fff0000\n\t"
            "lsl r3, #16\n\t"
            "ldr r2, =0x1fff\n\t"
            "cmp r3, r1\n\t"
            "bls 1f\n\t"
            "ldr r1, =0xffffcfff\n\t"
            "add r3, r0, r1\n\t"
            "lsl r3, #16\n\t"
            "lsr r3, #16\n\t"
            "cmp r3, r2\n\t"
            "bhi 2f\n\t"
            "1:\n\t"
            "mov r1, #0x10\n\t"
            "mov r2, #0\n\t"
            "mov r0, #0\n\t"
            "bl __Func_809228c\n\t"
            "mov r0, #0\n\t"
            "bl __MapActor_WaitMovement\n\t"
            "mov r1, #0x80\n\t"
            "mov r0, #0\n\t"
            "lsl r1, #8\n\t"
            "mov r2, #0x14\n\t"
            "bl __Func_8092adc\n\t"
            "b 3f\n\t"
            "2:\n\t"
            "mov r2, #0x10\n\t"
            "mov r1, #0\n\t"
            "neg r2, r2\n\t"
            "mov r0, #0\n\t"
            "bl __Func_809228c\n\t"
            "mov r0, #0\n\t"
            "bl __MapActor_WaitMovement\n\t"
            "mov r1, #0x80\n\t"
            "mov r0, #0\n\t"
            "lsl r1, #7\n\t"
            "mov r2, #0x14\n\t"
            "bl __Func_8092adc\n\t"
            "3:\n\t"
            : : "r"(actor) : "r0", "r1", "r2", "r3", "memory", "cc");
    }
    OvlFunc_965_200a820();
    __CutsceneEnd();
}
